// GENERATED CODE - DO NOT MODIFY BY HAND

/// Code indicating that a required URL parameter is missing.
final class WorkersErrorMissingParamCode {const WorkersErrorMissingParamCode._(this.value);

factory WorkersErrorMissingParamCode.fromJson(int json) { return switch (json) {
  10003 => $10003,
  _ => WorkersErrorMissingParamCode._(json),
}; }

static const WorkersErrorMissingParamCode $10003 = WorkersErrorMissingParamCode._(10003);

static const List<WorkersErrorMissingParamCode> values = [$10003];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersErrorMissingParamCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersErrorMissingParamCode($value)'; } 
 }
final class WorkersErrorMissingParam {const WorkersErrorMissingParam({required this.code, required this.message, });

factory WorkersErrorMissingParam.fromJson(Map<String, dynamic> json) { return WorkersErrorMissingParam(
  code: WorkersErrorMissingParamCode.fromJson((json['code'] as num).toInt()),
  message: json['message'] as String,
); }

/// Code indicating that a required URL parameter is missing.
final WorkersErrorMissingParamCode code;

/// Message explaining which required parameter is missing and suggesting to check the URL.
final String message;

Map<String, dynamic> toJson() { return {
  'code': code.toJson(),
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') &&
      json.containsKey('message') && json['message'] is String; } 
WorkersErrorMissingParam copyWith({WorkersErrorMissingParamCode? code, String? message, }) { return WorkersErrorMissingParam(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersErrorMissingParam &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorkersErrorMissingParam(code: $code, message: $message)'; } 
 }
