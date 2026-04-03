// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ListDevicesSortOrder {const ListDevicesSortOrder._(this.value);

factory ListDevicesSortOrder.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => ListDevicesSortOrder._(json),
}; }

static const ListDevicesSortOrder asc = ListDevicesSortOrder._('asc');

static const ListDevicesSortOrder desc = ListDevicesSortOrder._('desc');

static const List<ListDevicesSortOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListDevicesSortOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ListDevicesSortOrder($value)'; } 
 }
