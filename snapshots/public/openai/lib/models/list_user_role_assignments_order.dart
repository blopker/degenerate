// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ListUserRoleAssignmentsOrder {const ListUserRoleAssignmentsOrder._(this.value);

factory ListUserRoleAssignmentsOrder.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => ListUserRoleAssignmentsOrder._(json),
}; }

static const ListUserRoleAssignmentsOrder asc = ListUserRoleAssignmentsOrder._('asc');

static const ListUserRoleAssignmentsOrder desc = ListUserRoleAssignmentsOrder._('desc');

static const List<ListUserRoleAssignmentsOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListUserRoleAssignmentsOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ListUserRoleAssignmentsOrder($value)'; } 
 }
