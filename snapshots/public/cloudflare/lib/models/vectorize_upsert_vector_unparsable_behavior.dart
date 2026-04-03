// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Behavior for ndjson parse failures.
@immutable final class VectorizeUpsertVectorUnparsableBehavior {const VectorizeUpsertVectorUnparsableBehavior._(this.value);

factory VectorizeUpsertVectorUnparsableBehavior.fromJson(String json) { return switch (json) {
  'error' => error,
  'discard' => discard,
  _ => VectorizeUpsertVectorUnparsableBehavior._(json),
}; }

static const VectorizeUpsertVectorUnparsableBehavior error = VectorizeUpsertVectorUnparsableBehavior._('error');

static const VectorizeUpsertVectorUnparsableBehavior discard = VectorizeUpsertVectorUnparsableBehavior._('discard');

static const List<VectorizeUpsertVectorUnparsableBehavior> values = [error, discard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is VectorizeUpsertVectorUnparsableBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'VectorizeUpsertVectorUnparsableBehavior($value)'; } 
 }
