// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Behavior for ndjson parse failures.
@immutable final class VectorizeInsertVectorUnparsableBehavior {const VectorizeInsertVectorUnparsableBehavior._(this.value);

factory VectorizeInsertVectorUnparsableBehavior.fromJson(String json) { return switch (json) {
  'error' => error,
  'discard' => discard,
  _ => VectorizeInsertVectorUnparsableBehavior._(json),
}; }

static const VectorizeInsertVectorUnparsableBehavior error = VectorizeInsertVectorUnparsableBehavior._('error');

static const VectorizeInsertVectorUnparsableBehavior discard = VectorizeInsertVectorUnparsableBehavior._('discard');

static const List<VectorizeInsertVectorUnparsableBehavior> values = [error, discard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is VectorizeInsertVectorUnparsableBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'VectorizeInsertVectorUnparsableBehavior($value)'; } 
 }
