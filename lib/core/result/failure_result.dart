import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure_result.freezed.dart';

@freezed
class FailureResult with _$FailureResult implements Exception {
  const factory FailureResult({
    required FailureReasons reason,
    required String debugMessage,
  }) = _FailureResult;

  @override
  String toString() {
    return debugMessage;
  }
}

enum FailureReasons {
  noInternetConnection,
  timeout,
  tokenExpired,
  unknown,
  dataParsing,
}
