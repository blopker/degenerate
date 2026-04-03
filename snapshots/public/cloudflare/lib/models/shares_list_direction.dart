// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SharesListDirection {const SharesListDirection._(this.value);

factory SharesListDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => SharesListDirection._(json),
}; }

static const SharesListDirection asc = SharesListDirection._('asc');

static const SharesListDirection desc = SharesListDirection._('desc');

static const List<SharesListDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SharesListDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SharesListDirection($value)'; } 
 }
