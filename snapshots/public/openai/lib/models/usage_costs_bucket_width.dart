// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UsageCostsBucketWidth {const UsageCostsBucketWidth._(this.value);

factory UsageCostsBucketWidth.fromJson(String json) { return switch (json) {
  '1d' => $1d,
  _ => UsageCostsBucketWidth._(json),
}; }

static const UsageCostsBucketWidth $1d = UsageCostsBucketWidth._('1d');

static const List<UsageCostsBucketWidth> values = [$1d];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsageCostsBucketWidth && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UsageCostsBucketWidth($value)'; } 
 }
