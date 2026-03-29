// GENERATED CODE - DO NOT MODIFY BY HAND

/// Code indicating that an observability sampling rate is invalid.
final class WorkersErrorWorkerObservabilitySamplingRateInvalidCode {const WorkersErrorWorkerObservabilitySamplingRateInvalidCode._(this.value);

factory WorkersErrorWorkerObservabilitySamplingRateInvalidCode.fromJson(int json) { return switch (json) {
  100308 => $100308,
  _ => WorkersErrorWorkerObservabilitySamplingRateInvalidCode._(json),
}; }

static const WorkersErrorWorkerObservabilitySamplingRateInvalidCode $100308 = WorkersErrorWorkerObservabilitySamplingRateInvalidCode._(100308);

static const List<WorkersErrorWorkerObservabilitySamplingRateInvalidCode> values = [$100308];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersErrorWorkerObservabilitySamplingRateInvalidCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersErrorWorkerObservabilitySamplingRateInvalidCode($value)'; } 
 }
final class WorkersErrorWorkerObservabilitySamplingRateInvalid {const WorkersErrorWorkerObservabilitySamplingRateInvalid({required this.code, required this.message, });

factory WorkersErrorWorkerObservabilitySamplingRateInvalid.fromJson(Map<String, dynamic> json) { return WorkersErrorWorkerObservabilitySamplingRateInvalid(
  code: WorkersErrorWorkerObservabilitySamplingRateInvalidCode.fromJson((json['code'] as num).toInt()),
  message: json['message'] as String,
); }

/// Code indicating that an observability sampling rate is invalid.
final WorkersErrorWorkerObservabilitySamplingRateInvalidCode code;

/// Message explaining that sampling rates must be between 0 and 1 inclusive.
final String message;

Map<String, dynamic> toJson() { return {
  'code': code.toJson(),
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') &&
      json.containsKey('message') && json['message'] is String; } 
WorkersErrorWorkerObservabilitySamplingRateInvalid copyWith({WorkersErrorWorkerObservabilitySamplingRateInvalidCode? code, String? message, }) { return WorkersErrorWorkerObservabilitySamplingRateInvalid(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersErrorWorkerObservabilitySamplingRateInvalid &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorkersErrorWorkerObservabilitySamplingRateInvalid(code: $code, message: $message)'; } 
 }
