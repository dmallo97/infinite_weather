// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

import '../../core/application_cubit/application_cubit.dart' as _i5;
import '../../core/connectivity/connectivity_check_bloc.dart' as _i4;
import '../../features/location/data/repository/location_weather_repository_impl.dart'
    as _i7;
import '../../features/location/data/service/accuweather_location_service.dart'
    as _i9;
import '../../features/location/domain/repository/location_weather_repository.dart'
    as _i6;
import '../../features/summary/domain/usecases/get_current_weather_usecase.dart'
    as _i10;
import '../../features/summary/presentation/bloc/summary_bloc.dart' as _i11;
import 'register_module.dart' as _i12;

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
    gh.factory<_i6.LocationWeatherRepository>(
        () => _i7.LocationWeatherRepositoryImpl());
    gh.factory<_i8.Dio>(
      () => registerModule.getDioClient(),
      instanceName: 'accuWeatherDataService',
    );
    gh.factory<_i9.AccuWeatherLocationService>(() =>
        _i9.AccuWeatherLocationService(
            gh<_i8.Dio>(instanceName: 'accuWeatherDataService')));
    gh.factory<_i10.GetCurrentWeatherUseCase>(() =>
        _i10.GetCurrentWeatherUseCase(gh<_i6.LocationWeatherRepository>()));
    gh.singleton<_i11.SummaryBloc>(
        () => _i11.SummaryBloc(gh<_i10.GetCurrentWeatherUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i12.RegisterModule {}
