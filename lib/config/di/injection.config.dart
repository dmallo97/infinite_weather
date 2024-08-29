// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

import '../../core/application_cubit/application_cubit.dart' as _i5;
import '../../core/connectivity/connectivity_check_bloc.dart' as _i4;
import '../../features/location/data/repository/location_repository_impl.dart'
    as _i10;
import '../../features/location/data/repository/location_weather_repository_impl.dart'
    as _i12;
import '../../features/location/data/service/accuweather_location_service.dart'
    as _i8;
import '../../features/location/data/service/accuweather_meteo_service.dart'
    as _i7;
import '../../features/location/domain/repository/location_repository.dart'
    as _i9;
import '../../features/location/domain/repository/location_weather_repository.dart'
    as _i11;
import '../../features/location/domain/usecases/get_location_weather_usecase.dart'
    as _i16;
import '../../features/location/domain/usecases/get_locations_usecase.dart'
    as _i13;
import '../../features/location/presentation/bloc/location_details_bloc.dart'
    as _i18;
import '../../features/location/presentation/bloc/locations_list_bloc.dart'
    as _i14;
import '../../features/summary/domain/usecases/get_current_weather_usecase.dart'
    as _i15;
import '../../features/summary/presentation/bloc/summary_bloc.dart' as _i17;
import 'register_module.dart' as _i19;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => registerModule.sharedPreferences(),
      preResolve: true,
    );
    gh.singleton<_i4.ConnectivityCheckBloc>(() => _i4.ConnectivityCheckBloc());
    gh.singleton<_i5.ApplicationCubit>(() => _i5.ApplicationCubit());
    gh.factory<_i6.Dio>(
      () => registerModule.getDioClient(),
      instanceName: 'accuWeatherDataService',
    );
    gh.factory<_i7.AccuWeatherMeteoService>(() => _i7.AccuWeatherMeteoService(
        gh<_i6.Dio>(instanceName: 'accuWeatherDataService')));
    gh.factory<_i8.AccuWeatherLocationService>(() =>
        _i8.AccuWeatherLocationService(
            gh<_i6.Dio>(instanceName: 'accuWeatherDataService')));
    gh.factory<_i9.LocationRepository>(() =>
        _i10.LocationRepositoryImpl(gh<_i8.AccuWeatherLocationService>()));
    gh.factory<_i11.LocationWeatherRepository>(
        () => _i12.LocationWeatherRepositoryImpl(
              gh<_i8.AccuWeatherLocationService>(),
              gh<_i7.AccuWeatherMeteoService>(),
              gh<_i9.LocationRepository>(),
            ));
    gh.factory<_i13.GetLocationsUseCase>(
        () => _i13.GetLocationsUseCase(gh<_i9.LocationRepository>()));
    gh.singleton<_i14.LocationsListBloc>(
        () => _i14.LocationsListBloc(gh<_i13.GetLocationsUseCase>()));
    gh.factory<_i15.GetCurrentWeatherUseCase>(() =>
        _i15.GetCurrentWeatherUseCase(gh<_i11.LocationWeatherRepository>()));
    gh.factory<_i16.GetLocationWeatherUseCase>(() =>
        _i16.GetLocationWeatherUseCase(gh<_i11.LocationWeatherRepository>()));
    gh.singleton<_i17.SummaryBloc>(
        () => _i17.SummaryBloc(gh<_i15.GetCurrentWeatherUseCase>()));
    gh.factory<_i18.LocationDetailsBloc>(
        () => _i18.LocationDetailsBloc(gh<_i16.GetLocationWeatherUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i19.RegisterModule {}
