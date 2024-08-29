import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infinite_weather/config/style/app_colors.dart';
import 'package:infinite_weather/config/style/app_styles.dart';
import 'package:infinite_weather/features/location/domain/model/weather_conditions_model.dart';
import 'package:infinite_weather/features/summary/presentation/widgets/weather_icon.dart';

class CurrentConditions extends StatelessWidget {
  final WeatherConditionsModel weatherConditions;
  const CurrentConditions({super.key, required this.weatherConditions});

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: NeverScrollableScrollPhysics(),
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
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.thermometer,
                    size: 50,
                  ),
                  Text(
                    '${weatherConditions.temperature.toString()}ºC',
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              if (weatherConditions.feelsLike != null)
                Text(
                  'Feels like ${weatherConditions.feelsLike}ºC',
                  style: TextStyle(color: Theme.of(context).extension<ThemeCustomColors>()!.body),
                ),
            ],
          ),
          title: 'Temperature',
        ),
        if (weatherConditions.humidity != null)
          CurrentConditionCard(
            icon: CupertinoIcons.drop,
            data: '${weatherConditions.humidity.toString()}%',
            title: 'Relative humidity',
          ),
        if (weatherConditions.rainProbability != null)
          CurrentConditionCard(
            icon: CupertinoIcons.umbrella,
            data: '${weatherConditions.rainProbability.toString()}mm',
            title: 'Precip. summary (24 Hr)',
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
      child: Stack(
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
          content ??
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
