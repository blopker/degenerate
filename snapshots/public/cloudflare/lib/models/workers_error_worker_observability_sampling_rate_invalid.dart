// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorkersErrorWorkerObservabilitySamplingRateInvalid {const WorkersErrorWorkerObservabilitySamplingRateInvalid({required this.code, required this.message, });

factory WorkersErrorWorkerObservabilitySamplingRateInvalid.fromJson(Map<String, dynamic> json) { return WorkersErrorWorkerObservabilitySamplingRateInvalid(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
); }

/// Code indicating that an observability sampling rate is invalid.
final int code;

/// Message explaining that sampling rates must be between 0 and 1 inclusive.
final String message;

Map<String, dynamic> toJson() { return {
  'code': code,
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') && json['code'] is num &&
      json.containsKey('message') && json['message'] is String; } 
WorkersErrorWorkerObservabilitySamplingRateInvalid copyWith({int? code, String? message, }) { return WorkersErrorWorkerObservabilitySamplingRateInvalid(
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
