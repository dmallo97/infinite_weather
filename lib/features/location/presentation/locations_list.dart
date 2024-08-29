import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_weather/config/di/injection.dart';
import 'package:infinite_weather/config/routes.dart';
import 'package:infinite_weather/config/style/app_colors.dart';
import 'package:infinite_weather/config/style/app_styles.dart';
import 'package:infinite_weather/core/widgets/bottom_nav_bar.dart';
import 'package:infinite_weather/features/location/domain/model/location_metadata_model.dart';
import 'package:infinite_weather/features/location/presentation/bloc/locations_list_bloc.dart';
import 'package:infinite_weather/features/location/presentation/widgets/search_field.dart';
import 'package:infinite_weather/gen/assets.gen.dart';
import 'package:lottie/lottie.dart';

class LocationsList extends StatelessWidget {
  const LocationsList({super.key});

  @override
  Widget build(BuildContext context) {
    final locationsListBloc = getIt<LocationsListBloc>();
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverAppBar(
          title: SearchField(
            onSubmitted: (text) => locationsListBloc.add(LocationsListEvent.searchLocations(text)),
            hintText: 'Search a location',
          ),
          centerTitle: true,
          pinned: true,
        ),
        BlocBuilder<LocationsListBloc, LocationsListState>(
          bloc: locationsListBloc,
          builder: (context, state) {
            return state.fetchLocationsResult.when(
              initial: () {
                return SliverFillRemaining(
                  child: Column(
                    children: [
                      LottieBuilder.asset(Assets.lib.resources.media.waiting),
                      const Text(
                        'Hey! We\'re waiting for you...',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Type in a location to get results. Then tap on one of the locations to see details',
                        style: TextStyle(
                          color: Theme.of(context).extension<ThemeCustomColors>()!.body,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
              loading: () {
                return SliverFillRemaining(
                  child: Column(
                    children: [
                      LottieBuilder.asset(Assets.lib.resources.media.loading),
                      const Text(
                        'Hang on! We\'re working on it...',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                );
              },
              error: (error) {
                return SliverFillRemaining(
                  child: Column(
                    children: [
                      Icon(
                        Icons.error_outline_rounded,
                        color: Theme.of(context).colorScheme.onPrimary,
                        size: 60,
                      ),
                      const Text(
                        'Oops! Something went wrong',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Error message: ${error.message}',
                        style: TextStyle(
                          color: Theme.of(context).extension<ThemeCustomColors>()!.body,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
              data: (data) {
                return SliverPadding(
                  sliver: SliverAnimatedList(
                    itemBuilder: (context, index, animation) {
                      return LocationCard(locationMetadataModel: data[index]);
                    },
                    initialItemCount: data.length,
                  ),
                  padding: const EdgeInsets.all(8),
                );
              },
            );
          },
        ),
        const FooterSliver(),
        BottomNavBar.sliverBottomSpacer(),
      ],
    );
  }
}

class FooterSliver extends StatelessWidget {
  const FooterSliver({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationsListBloc, LocationsListState>(
      bloc: getIt<LocationsListBloc>(),
      builder: (context, state) {
        return state.fetchLocationsResult.maybeWhen(
          orElse: () {
            return const SliverToBoxAdapter();
          },
          data: (data) {
            if (state.itemCount < 25) {
              if (state.currentPage != 1) {
                return SliverToBoxAdapter(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton.filled(
                        onPressed: state.currentPage == 1
                            ? null
                            : () => getIt<LocationsListBloc>().add(const LocationsListEvent.previousPage()),
                        icon: const Icon(Icons.chevron_left),
                      ),
                    ],
                  ),
                );
              } else {
                return const SliverToBoxAdapter();
              }
            }
            return SliverPadding(
              sliver: SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton.filled(
                      onPressed: state.currentPage == 1
                          ? null
                          : () => getIt<LocationsListBloc>().add(const LocationsListEvent.previousPage()),
                      icon: const Icon(Icons.chevron_left),
                    ),
                    IconButton.filled(
                      onPressed: state.itemCount < 25
                          ? null
                          : () => getIt<LocationsListBloc>().add(const LocationsListEvent.nextPage()),
                      icon: const Icon(Icons.chevron_right),
                    ),
                  ],
                ),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: BottomNavBar.navBarClearance,
              ),
            );
          },
        );
      },
    );
  }
}

class LocationCard extends StatelessWidget {
  final LocationMetadataModel locationMetadataModel;
  const LocationCard({
    super.key,
    required this.locationMetadataModel,
  });

  String formatTimezone() {
    if (!locationMetadataModel.timezoneOffset.isNegative) {
      return 'GMT +${locationMetadataModel.timezoneOffset}';
    } else {
      return 'GMT ${locationMetadataModel.timezoneOffset}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppStyles.cardDecorationStyle,
      height: 60,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Material(
        borderRadius: AppStyles.cardDecorationStyle.borderRadius,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {
            context.pushNamed(Routes.locationDetails, extra: locationMetadataModel);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Text(
                            locationMetadataModel.name,
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Text(
                              '${locationMetadataModel.type} in ${locationMetadataModel.region}',
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '${locationMetadataModel.adminArea}, ${locationMetadataModel.country}',
                        style: TextStyle(color: Theme.of(context).extension<ThemeCustomColors>()!.body),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Text(
                  formatTimezone(),
                  style: TextStyle(color: Theme.of(context).extension<ThemeCustomColors>()!.body),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
