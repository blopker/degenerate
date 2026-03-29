// GENERATED CODE - DO NOT MODIFY BY HAND

/// One of `server_error`, `rate_limit_exceeded`, or `invalid_prompt`.
final class RunObjectLastErrorCode {const RunObjectLastErrorCode._(this.value);

factory RunObjectLastErrorCode.fromJson(String json) { return switch (json) {
  'server_error' => serverError,
  'rate_limit_exceeded' => rateLimitExceeded,
  'invalid_prompt' => invalidPrompt,
  _ => RunObjectLastErrorCode._(json),
}; }

static const RunObjectLastErrorCode serverError = RunObjectLastErrorCode._('server_error');

static const RunObjectLastErrorCode rateLimitExceeded = RunObjectLastErrorCode._('rate_limit_exceeded');

static const RunObjectLastErrorCode invalidPrompt = RunObjectLastErrorCode._('invalid_prompt');

static const List<RunObjectLastErrorCode> values = [serverError, rateLimitExceeded, invalidPrompt];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RunObjectLastErrorCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RunObjectLastErrorCode($value)'; } 
 }
/// The last error associated with this run. Will be `null` if there are no errors.
final class RunObjectLastError {const RunObjectLastError({required this.code, required this.message, });

factory RunObjectLastError.fromJson(Map<String, dynamic> json) { return RunObjectLastError(
  code: RunObjectLastErrorCode.fromJson(json['code'] as String),
  message: json['message'] as String,
); }

/// One of `server_error`, `rate_limit_exceeded`, or `invalid_prompt`.
final RunObjectLastErrorCode code;

/// A human-readable description of the error.
final String message;

Map<String, dynamic> toJson() { return {
  'code': code.toJson(),
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') &&
      json.containsKey('message') && json['message'] is String; } 
RunObjectLastError copyWith({RunObjectLastErrorCode? code, String? message, }) { return RunObjectLastError(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunObjectLastError &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'RunObjectLastError(code: $code, message: $message)'; } 
 }
