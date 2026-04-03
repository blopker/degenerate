// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Code indicating that the Worker name is too long to be used as a subdomain.
@immutable final class WorkersErrorWorkerNameSubdomainLengthLimitCode {const WorkersErrorWorkerNameSubdomainLengthLimitCode._(this.value);

factory WorkersErrorWorkerNameSubdomainLengthLimitCode.fromJson(int json) { return switch (json) {
  100132 => $100132,
  _ => WorkersErrorWorkerNameSubdomainLengthLimitCode._(json),
}; }

static const WorkersErrorWorkerNameSubdomainLengthLimitCode $100132 = WorkersErrorWorkerNameSubdomainLengthLimitCode._(100132);

static const List<WorkersErrorWorkerNameSubdomainLengthLimitCode> values = [$100132];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersErrorWorkerNameSubdomainLengthLimitCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersErrorWorkerNameSubdomainLengthLimitCode($value)'; } 
 }
@immutable final class WorkersErrorWorkerNameSubdomainLengthLimit {const WorkersErrorWorkerNameSubdomainLengthLimit({required this.code, required this.message, });

factory WorkersErrorWorkerNameSubdomainLengthLimit.fromJson(Map<String, dynamic> json) { return WorkersErrorWorkerNameSubdomainLengthLimit(
  code: WorkersErrorWorkerNameSubdomainLengthLimitCode.fromJson((json['code'] as num).toInt()),
  message: json['message'] as String,
); }

/// Code indicating that the Worker name is too long to be used as a subdomain.
final WorkersErrorWorkerNameSubdomainLengthLimitCode code;

/// Message explaining that the Worker name exceeds the 63 character limit for subdomains.
final String message;

Map<String, dynamic> toJson() { return {
  'code': code.toJson(),
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') &&
      json.containsKey('message') && json['message'] is String; } 
WorkersErrorWorkerNameSubdomainLengthLimit copyWith({WorkersErrorWorkerNameSubdomainLengthLimitCode? code, String? message, }) { return WorkersErrorWorkerNameSubdomainLengthLimit(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersErrorWorkerNameSubdomainLengthLimit &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorkersErrorWorkerNameSubdomainLengthLimit(code: $code, message: $message)'; } 
 }
