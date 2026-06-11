// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_error_missing_param.dart';sealed class DeleteWorkerResponse400Errors {const DeleteWorkerResponse400Errors();

/// Deserialize from JSON, dispatching on the `code` discriminator.
factory DeleteWorkerResponse400Errors.fromJson(Map<String, dynamic> json) { return switch (json['code']) {
  '10003' => DeleteWorkerResponse400Errors10003.fromJson(json),
  _ => DeleteWorkerResponse400Errors$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get code;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is DeleteWorkerResponse400Errors$Unknown; } 
 }
@immutable final class DeleteWorkerResponse400Errors10003 extends DeleteWorkerResponse400Errors {const DeleteWorkerResponse400Errors10003(this.workersErrorMissingParam);

factory DeleteWorkerResponse400Errors10003.fromJson(Map<String, dynamic> json) { return DeleteWorkerResponse400Errors10003(WorkersErrorMissingParam.fromJson(json)); }

final WorkersErrorMissingParam workersErrorMissingParam;

@override String get code { return '10003'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorMissingParam.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeleteWorkerResponse400Errors10003 && workersErrorMissingParam == other.workersErrorMissingParam; } 
@override int get hashCode { return workersErrorMissingParam.hashCode; } 
@override String toString() { return 'DeleteWorkerResponse400Errors10003(workersErrorMissingParam: $workersErrorMissingParam)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class DeleteWorkerResponse400Errors$Unknown extends DeleteWorkerResponse400Errors {const DeleteWorkerResponse400Errors$Unknown(this.json);

final Map<String, dynamic> json;

@override String get code { return json['code'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeleteWorkerResponse400Errors$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'DeleteWorkerResponse400Errors.unknown($json)'; } 
 }
