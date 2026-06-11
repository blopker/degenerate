// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_error_missing_param.dart';sealed class GetWorkerResponse400Errors {const GetWorkerResponse400Errors();

/// Deserialize from JSON, dispatching on the `code` discriminator.
factory GetWorkerResponse400Errors.fromJson(Map<String, dynamic> json) { return switch (json['code']) {
  '10003' => GetWorkerResponse400Errors10003.fromJson(json),
  _ => GetWorkerResponse400Errors$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get code;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is GetWorkerResponse400Errors$Unknown; } 
 }
@immutable final class GetWorkerResponse400Errors10003 extends GetWorkerResponse400Errors {const GetWorkerResponse400Errors10003(this.workersErrorMissingParam);

factory GetWorkerResponse400Errors10003.fromJson(Map<String, dynamic> json) { return GetWorkerResponse400Errors10003(WorkersErrorMissingParam.fromJson(json)); }

final WorkersErrorMissingParam workersErrorMissingParam;

@override String get code { return '10003'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorMissingParam.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetWorkerResponse400Errors10003 && workersErrorMissingParam == other.workersErrorMissingParam; } 
@override int get hashCode { return workersErrorMissingParam.hashCode; } 
@override String toString() { return 'GetWorkerResponse400Errors10003(workersErrorMissingParam: $workersErrorMissingParam)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class GetWorkerResponse400Errors$Unknown extends GetWorkerResponse400Errors {const GetWorkerResponse400Errors$Unknown(this.json);

final Map<String, dynamic> json;

@override String get code { return json['code'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetWorkerResponse400Errors$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'GetWorkerResponse400Errors.unknown($json)'; } 
 }
