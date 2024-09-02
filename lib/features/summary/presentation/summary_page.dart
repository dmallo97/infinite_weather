import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_weather/config/di/injection.dart';
import 'package:infinite_weather/config/style/app_styles.dart';
import 'package:infinite_weather/features/location/domain/model/weather_conditions_model.dart';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_weather/config/di/injection.dart';
import 'package:infinite_weather/features/location/domain/model/location_metadata_model.dart';
import 'package:infinite_weather/features/summary/presentation/bloc/summary_bloc.dart';
import 'package:infinite_weather/features/summary/presentation/widgets/weather_icon.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SummaryBloc, SummaryState>(
      bloc: getIt<SummaryBloc>(),
      builder: (context, state) {
        return state.fetchCurrentLocationWeather.maybeWhen(
          data: (data) {
            return RefreshIndicator(
              onRefresh: () async {
                getIt<SummaryBloc>().add(const SummaryEvent.fetchCurrentWeather());
              },
              child: CustomScrollView(
                shrinkWrap: true,
                slivers: [
                  SliverAppBar(
                    title: Text(data.location!),
                  ),
                  // SliverPersistentHeader(
                  //   delegate: _SliverHeaderDelegate(
                  //     child: child,
                  //     locationMetadataModel: null,
                  //     expandedChild: (BuildContext context) {},
                  //   ),
                  // ),
                  SliverFillRemaining(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CurrentConditions(weatherConditions: data),
                        //SixHourForecastCard(),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          orElse: () {
            return const Center(child: Text('Loading...'));
          },
        );
      },
    );
  }
}

class CurrentConditions extends StatelessWidget {
  final WeatherConditionsModel weatherConditions;
  const CurrentConditions({super.key, required this.weatherConditions});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 16,
      ),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      children: [
        CurrentConditionCard(
          content: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WeatherIcon(condition: weatherConditions.weatherCondition),
              Text(
                weatherConditions.description,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        CurrentConditionCard(
          icon: CupertinoIcons.thermometer,
          data: '${weatherConditions.temperature.toString()}ºC',
          title: 'Temperature',
        ),
        CurrentConditionCard(
          icon: CupertinoIcons.drop,
          data: '${weatherConditions.humidity.toString()}%',
          title: 'Relative humidity',
        ),
        CurrentConditionCard(
          icon: CupertinoIcons.umbrella,
          data: '${weatherConditions.rainProbability.toString()}mm',
          title: 'Rain probability',
        ),
      ],
    );
  }
}

class CurrentConditionCard extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final String? data;
  final Widget? content;

  const CurrentConditionCard({
    super.key,
    this.title,
    this.icon,
    this.data,
    this.content,
  });

  @override
  Widget build(BuildContext context) {
    assert(title != null && icon != null && data != null || content != null);
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: AppStyles.cardDecorationStyle,
      padding: const EdgeInsets.all(8),
      child: content ??
          Stack(
            alignment: Alignment.center,
            children: [
              if (title != null)
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    title!,
                    style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                  ),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    size: 50,
                  ),
                  Text(
                    data!,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
    );
  }
}

class _SliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final LocationMetadataModel locationMetadataModel;
  final Widget child;
  final WidgetBuilder expandedChild;

  const _SliverHeaderDelegate({
    required this.locationMetadataModel,
    this.minHeight = kToolbarHeight,
    this.maxHeight = kTextTabBarHeight * 2,
    required this.child,
    required this.expandedChild,
  });

  @override
  double get maxExtent => max(maxHeight, minHeight);

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant _SliverHeaderDelegate oldDelegate) {
    return child != oldDelegate.child || minHeight != oldDelegate.minHeight || maxHeight != oldDelegate.maxHeight;
  }

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
