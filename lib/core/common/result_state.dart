import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_weather/core/exceptions/custom_exception.dart';

part 'result_state.freezed.dart';

@freezed
class ResultState<T> with _$ResultState<T> {
  const factory ResultState.initial() = Initial<T>;

  const factory ResultState.loading() = Loading<T>;

  const factory ResultState.data({required T data}) = Data<T>;

  const factory ResultState.error({required CustomException error}) = Error<T>;
}
