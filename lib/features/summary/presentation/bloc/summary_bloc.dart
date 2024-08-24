import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_weather/core/common/result_state.dart';
import 'package:infinite_weather/features/location/domain/model/weather_conditions_model.dart';
import 'package:infinite_weather/features/summary/domain/usecases/get_current_weather_usecase.dart';
import 'package:injectable/injectable.dart';

part 'summary_event.dart';
part 'summary_state.dart';
part 'summary_bloc.freezed.dart';

@singleton
class SummaryBloc extends Bloc<SummaryEvent, SummaryState> {
  final GetCurrentWeatherUseCase _getCurrentWeatherUseCase;

  SummaryBloc(this._getCurrentWeatherUseCase) : super(const SummaryState()) {
    on((event, emit) => null);
  }
}
