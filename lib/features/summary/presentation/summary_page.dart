import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverAppBar(),
        SliverList(
          delegate: SliverChildListDelegate.fixed([

          ]),
        ),
      ],
    );
  }
}

class CurrentWeather extends StatelessWidget {
  const CurrentWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class CurrentConditionsCard extends StatelessWidget {
  const CurrentConditionsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
