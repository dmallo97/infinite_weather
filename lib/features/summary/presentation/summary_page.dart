import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_weather/config/di/injection.dart';
import 'package:infinite_weather/features/summary/presentation/bloc/summary_bloc.dart';
import 'package:infinite_weather/features/summary/presentation/widgets/current_conditions.dart';
import 'package:infinite_weather/gen/assets.gen.dart';
import 'package:lottie/lottie.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SummaryBloc, SummaryState>(
      bloc: getIt<SummaryBloc>(),
      builder: (context, state) {
        return state.fetchCurrentLocationWeatherResult.maybeWhen(
          data: (data) {
            return RefreshIndicator(
              onRefresh: () async {
                getIt<SummaryBloc>().add(const SummaryEvent.fetchCurrentWeather());
              },
              child: CustomScrollView(
                shrinkWrap: true,
                slivers: [
                  SliverAppBar(
                    title: Text(data.location!.toUpperCase()),
                    pinned: true,
                  ),
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
            return Center(child: Lottie.asset(Assets.lib.resources.media.loading));
          },
        );
      },
    );
  }
}
