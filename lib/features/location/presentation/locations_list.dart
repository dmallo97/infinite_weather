import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:infinite_weather/config/style/app_colors.dart';
import 'package:infinite_weather/config/style/app_styles.dart';
import 'package:infinite_weather/features/location/domain/model/location_metadata_model.dart';
import 'package:infinite_weather/features/location/presentation/widgets/search_field.dart';
import 'package:infinite_weather/gen/assets.gen.dart';
import 'package:lottie/lottie.dart';

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
        // SliverFillRemaining(
        //   child: Column(
        //     children: [
        //       LottieBuilder.asset(Assets.lib.resources.media.waiting),
        //       Text(
        //         'Hey! We\'re waiting for you...',
        //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        //       ),
        //       Text(
        //         'Type in a location to get results. Then tap on one of the locations to see details',
        //         style: TextStyle(
        //           color: Theme.of(context).extension<ThemeCustomColors>()!.body,
        //         ),
        //         textAlign: TextAlign.center,
        //       ),
        //     ],
        //   ),
        // ),
        // SliverList.builder(
        //   itemCount: 99,
        //   itemBuilder: (context, index) {

        //   },
        // ),
        const SliverPadding(
          sliver: SliverList(
              delegate: SliverChildListDelegate.fixed([
            LocationCard(
              locationMetadataModel: LocationMetadataModel(
                key: 'key',
                name: 'name',
                type: 'type',
                rank: 0,
                region: 'region',
                country: 'country',
                adminArea: 'adminArea',
                timezone: 'timezone',
                latitude: 0,
                longitude: 0,
              ),
            ),
            LocationCard(
              locationMetadataModel: LocationMetadataModel(
                key: 'key',
                name: 'name',
                type: 'type',
                rank: 0,
                region: 'region',
                country: 'country',
                adminArea: 'adminArea',
                timezone: 'timezone',
                latitude: 0,
                longitude: 0,
              ),
            ),
            LocationCard(
              locationMetadataModel: LocationMetadataModel(
                key: 'key',
                name: 'name',
                type: 'type',
                rank: 0,
                region: 'region',
                country: 'country',
                adminArea: 'adminArea',
                timezone: 'timezone',
                latitude: 0,
                longitude: 0,
              ),
            ),
            LocationCard(
              locationMetadataModel: LocationMetadataModel(
                key: 'key',
                name: 'name',
                type: 'type',
                rank: 0,
                region: 'region',
                country: 'country',
                adminArea: 'adminArea',
                timezone: 'timezone',
                latitude: 0,
                longitude: 0,
              ),
            ),
            LocationCard(
              locationMetadataModel: LocationMetadataModel(
                key: 'key',
                name: 'name',
                type: 'type',
                rank: 0,
                region: 'region',
                country: 'country',
                adminArea: 'adminArea',
                timezone: 'timezone',
                latitude: 0,
                longitude: 0,
              ),
            ),
            LocationCard(
              locationMetadataModel: LocationMetadataModel(
                key: 'key',
                name: 'name',
                type: 'type',
                rank: 0,
                region: 'region',
                country: 'country',
                adminArea: 'adminArea',
                timezone: 'timezone',
                latitude: 0,
                longitude: 0,
              ),
            ),
            LocationCard(
              locationMetadataModel: LocationMetadataModel(
                key: 'key',
                name: 'name',
                type: 'type',
                rank: 0,
                region: 'region',
                country: 'country',
                adminArea: 'adminArea',
                timezone: 'timezone',
                latitude: 0,
                longitude: 0,
              ),
            ),
          ])),
          padding: EdgeInsets.all(8),
        )
      ],
    );
  }
}

class LocationCard extends StatelessWidget {
  final LocationMetadataModel locationMetadataModel;
  const LocationCard({
    super.key,
    required this.locationMetadataModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppStyles.cardDecorationStyle,
      height: 60,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
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
                    Text(
                      '${locationMetadataModel.country}, ${locationMetadataModel.region}',
                      style: TextStyle(color: Theme.of(context).extension<ThemeCustomColors>()!.body),
                    ),
                  ],
                ),
                Text(locationMetadataModel.type),
              ],
            ),
          ),
          Text(
            locationMetadataModel.timezone,
            style: TextStyle(color: Theme.of(context).extension<ThemeCustomColors>()!.body),
          ),
        ],
      ),
    );
  }
}
