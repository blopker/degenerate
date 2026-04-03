// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ListRolesOrder {const ListRolesOrder._(this.value);

factory ListRolesOrder.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => ListRolesOrder._(json),
}; }

static const ListRolesOrder asc = ListRolesOrder._('asc');

static const ListRolesOrder desc = ListRolesOrder._('desc');

static const List<ListRolesOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListRolesOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ListRolesOrder($value)'; } 
 }
