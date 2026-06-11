// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_error_worker_limit.dart';import 'workers_error_worker_tag_limit.dart';sealed class UpdateWorkerResponse403Errors {const UpdateWorkerResponse403Errors();

/// Deserialize from JSON, dispatching on the `code` discriminator.
factory UpdateWorkerResponse403Errors.fromJson(Map<String, dynamic> json) { return switch (json['code']) {
  '10037' => UpdateWorkerResponse403Errors10037.fromJson(json),
  '100103' => UpdateWorkerResponse403Errors100103.fromJson(json),
  _ => UpdateWorkerResponse403Errors$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get code;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is UpdateWorkerResponse403Errors$Unknown; } 
 }
@immutable final class UpdateWorkerResponse403Errors10037 extends UpdateWorkerResponse403Errors {const UpdateWorkerResponse403Errors10037(this.workersErrorWorkerLimit);

factory UpdateWorkerResponse403Errors10037.fromJson(Map<String, dynamic> json) { return UpdateWorkerResponse403Errors10037(WorkersErrorWorkerLimit.fromJson(json)); }

final WorkersErrorWorkerLimit workersErrorWorkerLimit;

@override String get code { return '10037'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerLimit.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateWorkerResponse403Errors10037 && workersErrorWorkerLimit == other.workersErrorWorkerLimit; } 
@override int get hashCode { return workersErrorWorkerLimit.hashCode; } 
@override String toString() { return 'UpdateWorkerResponse403Errors10037(workersErrorWorkerLimit: $workersErrorWorkerLimit)'; } 
 }
@immutable final class UpdateWorkerResponse403Errors100103 extends UpdateWorkerResponse403Errors {const UpdateWorkerResponse403Errors100103(this.workersErrorWorkerTagLimit);

factory UpdateWorkerResponse403Errors100103.fromJson(Map<String, dynamic> json) { return UpdateWorkerResponse403Errors100103(WorkersErrorWorkerTagLimit.fromJson(json)); }

final WorkersErrorWorkerTagLimit workersErrorWorkerTagLimit;

@override String get code { return '100103'; } 
@override Map<String, dynamic> toJson() { return {...workersErrorWorkerTagLimit.toJson(), 'code': code}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateWorkerResponse403Errors100103 && workersErrorWorkerTagLimit == other.workersErrorWorkerTagLimit; } 
@override int get hashCode { return workersErrorWorkerTagLimit.hashCode; } 
@override String toString() { return 'UpdateWorkerResponse403Errors100103(workersErrorWorkerTagLimit: $workersErrorWorkerTagLimit)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class UpdateWorkerResponse403Errors$Unknown extends UpdateWorkerResponse403Errors {const UpdateWorkerResponse403Errors$Unknown(this.json);

final Map<String, dynamic> json;

@override String get code { return json['code'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateWorkerResponse403Errors$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'UpdateWorkerResponse403Errors.unknown($json)'; } 
 }
