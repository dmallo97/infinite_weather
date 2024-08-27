import 'package:flutter/material.dart';
import 'package:infinite_weather/config/style/app_colors.dart';
import 'package:infinite_weather/features/location/presentation/widgets/search_field.dart';

class LocationsList extends StatelessWidget {
  const LocationsList({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverAppBar(
          title: SearchField(onChanged: (text) {}, hintText: 'Search a location'),
          centerTitle: true,
          pinned: true,
        ),
        SliverList.builder(
          itemCount: 99,
          itemBuilder: (context, index) {
            
          },
        ),
      ],
    );
  }
}