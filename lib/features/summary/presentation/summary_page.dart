import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_weather/config/di/injection.dart';
import 'package:infinite_weather/config/style/app_styles.dart';
import 'package:infinite_weather/core/widgets/default_horizontal_spacing.dart';
import 'package:infinite_weather/features/location/domain/model/weather_conditions_model.dart';
import 'package:infinite_weather/features/summary/presentation/bloc/summary_bloc.dart';
import 'package:infinite_weather/features/summary/presentation/widgets/weather_icon.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultHorizontalSpacing(
      child: BlocBuilder<SummaryBloc, SummaryState>(
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
                    SliverFillRemaining(
                      child: Column(
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
      ),
    );
  }
}

class CurrentConditions extends StatelessWidget {
  final WeatherConditionsModel weatherConditions;
  const CurrentConditions({super.key, required this.weatherConditions});

  @override
  Widget build(BuildContext context) {
    return GridView(
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
              Text(weatherConditions.description),
            ],
          ),
        ),
        CurrentConditionCard(
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(CupertinoIcons.thermometer),
              Text(weatherConditions.temperature.toString()),
            ],
          ),
        ),
        CurrentConditionCard(
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(CupertinoIcons.drop),
              Text(weatherConditions.humidity.toString()),
            ],
          ),
        ),
        CurrentConditionCard(
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(CupertinoIcons.umbrella),
              Text(weatherConditions.rainProbability.toString()),
            ],
          ),
        ),
      ],
    );
  }
}

class CurrentConditionCard extends StatelessWidget {
  final Widget content;
  const CurrentConditionCard({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: AppStyles.cardDecorationStyle,
      child: content,
    );
  }
}
