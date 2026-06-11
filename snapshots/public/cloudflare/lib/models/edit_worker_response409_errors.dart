// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_error_worker_name_conflict.dart';sealed class EditWorkerResponse409Errors {const EditWorkerResponse409Errors();

/// Deserialize from JSON, dispatching on the `code` discriminator.
factory EditWorkerResponse409Errors.fromJson(Map<String, dynamic> json) { return switch (json['code']) {
  '10040' => EditWorkerResponse409Errors10040.fromJson(json),
  _ => EditWorkerResponse409Errors$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get code;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is EditWorkerResponse409Errors$Unknown; } 
 }
@immutable final class EditWorkerResponse409Errors10040 extends EditWorkerResponse409Errors {const EditWorkerResponse409Errors10040(this.workersErrorWorkerNameConflict);

factory EditWorkerResponse409Errors10040.fromJson(Map<String, dynamic> json) { return EditWorkerResponse409Errors10040(WorkersErrorWorkerNameConflict.fromJson(json)); }

final WorkersErrorWorkerNameConflict workersErrorWorkerNameConflict;

@override String get code { return '10040'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerNameConflict.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EditWorkerResponse409Errors10040 && workersErrorWorkerNameConflict == other.workersErrorWorkerNameConflict; } 
@override int get hashCode { return workersErrorWorkerNameConflict.hashCode; } 
@override String toString() { return 'EditWorkerResponse409Errors10040(workersErrorWorkerNameConflict: $workersErrorWorkerNameConflict)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class EditWorkerResponse409Errors$Unknown extends EditWorkerResponse409Errors {const EditWorkerResponse409Errors$Unknown(this.json);

final Map<String, dynamic> json;

@override String get code { return json['code'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EditWorkerResponse409Errors$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'EditWorkerResponse409Errors.unknown($json)'; } 
 }
