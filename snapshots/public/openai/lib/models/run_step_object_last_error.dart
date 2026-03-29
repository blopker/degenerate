// GENERATED CODE - DO NOT MODIFY BY HAND

/// One of `server_error` or `rate_limit_exceeded`.
final class RunStepObjectLastErrorCode {const RunStepObjectLastErrorCode._(this.value);

factory RunStepObjectLastErrorCode.fromJson(String json) { return switch (json) {
  'server_error' => serverError,
  'rate_limit_exceeded' => rateLimitExceeded,
  _ => RunStepObjectLastErrorCode._(json),
}; }

static const RunStepObjectLastErrorCode serverError = RunStepObjectLastErrorCode._('server_error');

static const RunStepObjectLastErrorCode rateLimitExceeded = RunStepObjectLastErrorCode._('rate_limit_exceeded');

static const List<RunStepObjectLastErrorCode> values = [serverError, rateLimitExceeded];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RunStepObjectLastErrorCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RunStepObjectLastErrorCode($value)'; } 
 }
/// The last error associated with this run step. Will be `null` if there are no errors.
final class RunStepObjectLastError {const RunStepObjectLastError({required this.code, required this.message, });

factory RunStepObjectLastError.fromJson(Map<String, dynamic> json) { return RunStepObjectLastError(
  code: RunStepObjectLastErrorCode.fromJson(json['code'] as String),
  message: json['message'] as String,
); }

/// One of `server_error` or `rate_limit_exceeded`.
final RunStepObjectLastErrorCode code;

/// A human-readable description of the error.
final String message;

Map<String, dynamic> toJson() { return {
  'code': code.toJson(),
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') &&
      json.containsKey('message') && json['message'] is String; } 
RunStepObjectLastError copyWith({RunStepObjectLastErrorCode? code, String? message, }) { return RunStepObjectLastError(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunStepObjectLastError &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'RunStepObjectLastError(code: $code, message: $message)'; } 
 }
