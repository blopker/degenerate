// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UsageEmbeddingsBucketWidth {const UsageEmbeddingsBucketWidth._(this.value);

factory UsageEmbeddingsBucketWidth.fromJson(String json) { return switch (json) {
  '1m' => $1m,
  '1h' => $1h,
  '1d' => $1d,
  _ => UsageEmbeddingsBucketWidth._(json),
}; }

static const UsageEmbeddingsBucketWidth $1m = UsageEmbeddingsBucketWidth._('1m');

static const UsageEmbeddingsBucketWidth $1h = UsageEmbeddingsBucketWidth._('1h');

static const UsageEmbeddingsBucketWidth $1d = UsageEmbeddingsBucketWidth._('1d');

static const List<UsageEmbeddingsBucketWidth> values = [$1m, $1h, $1d];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsageEmbeddingsBucketWidth && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UsageEmbeddingsBucketWidth($value)'; } 
 }
