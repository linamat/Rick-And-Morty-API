import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<D, E extends Exception> with _$Result<D, E> {
  const Result._();

  const factory Result.success(D data) = _Success;
  const factory Result.failure(E error) = _Failure;

  bool get isSuccess => this is _Success;
  bool get isFailed => this is _Failure;

  D get success => (this as _Success).data as D;
  E get failure => (this as _Failure).error as E;
}
