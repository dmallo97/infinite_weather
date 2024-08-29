import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_weather/config/di/injection.dart';
import 'package:infinite_weather/config/style/app_colors.dart';
import 'package:infinite_weather/config/style/app_styles.dart';
import 'package:infinite_weather/core/widgets/bottom_nav_bar.dart';
import 'package:infinite_weather/features/location/domain/model/location_metadata_model.dart';
import 'package:infinite_weather/features/location/presentation/bloc/location_details_bloc.dart';
import 'package:infinite_weather/features/summary/presentation/widgets/current_conditions.dart';
import 'package:infinite_weather/gen/assets.gen.dart';
import 'package:lottie/lottie.dart';

class LocationDetails extends StatelessWidget {
  final LocationMetadataModel locationData;
  const LocationDetails({super.key, required this.locationData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          locationData.name.toUpperCase(),
          style: const TextStyle(fontSize: 18),
        ),
      ),
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: MediaQuery.of(context).size.height * 0.1,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
              delegate: SliverChildListDelegate(
                [
                  DetailsCard(title: 'Country', information: locationData.country),
                  DetailsCard(title: 'Administrative Area', information: locationData.adminArea),
                  DetailsCard(title: 'Region', information: locationData.region),
                  DetailsCard(title: 'Latitude', information: locationData.latitude.toString()),
                  DetailsCard(title: 'Longitude', information: locationData.longitude.toString()),
                  DetailsCard(title: 'Time zone (GMT)', information: locationData.timezoneOffset.toString()),
                ],
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            sliver: SliverToBoxAdapter(
              child: Text(
                'Current conditions',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          BlocProvider(
            create: (context) =>
                getIt.get<LocationDetailsBloc>()..add(LocationDetailsEvent.getLocationWeather(locationData)),
            child: BlocBuilder<LocationDetailsBloc, LocationDetailsState>(
              builder: (context, state) {
                return state.fetchLocationWeatherConditionResult.maybeWhen(
                  orElse: () {
                    return SliverToBoxAdapter(
                      child: Column(
                        children: [
                          LottieBuilder.asset(
                            Assets.lib.resources.media.loading,
                            height: 100,
                            fit: BoxFit.fitHeight,
                          ),
                          Text(
                            'Gathering data...',
                            style: TextStyle(color: Theme.of(context).extension<ThemeCustomColors>()!.body),
                          ),
                        ],
                      ),
                    );
                  },
                  data: (data) {
                    if (data == null) {
                      return SliverToBoxAdapter(
                        child: Column(
                          children: [
                            Icon(
                              Icons.warning_amber_rounded,
                              color: Theme.of(context).colorScheme.onPrimary,
                              size: 50,
                            ),
                            const Text(
                              'Nothing to show :(',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'We couldn\'t find weather information for this location',
                              style: TextStyle(color: Theme.of(context).extension<ThemeCustomColors>()!.body),
                            ),
                          ],
                        ),
                      );
                    }
                    return SliverToBoxAdapter(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Updated at: ${data.observationTime}',
                            style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).extension<ThemeCustomColors>()!.body,
                            ),
                          ),
                        ),
                        CurrentConditions(weatherConditions: data),
                      ],
                    ));
                  },
                );
              },
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            sliver: SliverToBoxAdapter(
              child: UnconstrainedBox(
                child: FilledButton(
                  onPressed: () {},
                  child: const Text('Save location'),
                ),
              ),
            ),
          ),
          BottomNavBar.sliverBottomSpacer(),
        ],
      ),
    );
  }
}

class DetailsCard extends StatelessWidget {
  final String title;
  final String information;
  const DetailsCard({super.key, required this.title, required this.information});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppStyles.cardDecorationStyle,
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
            ),
          ),
          Expanded(
            child: Text(
              maxLines: 2,
              information,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Theme.of(context).extension<ThemeCustomColors>()!.body,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
