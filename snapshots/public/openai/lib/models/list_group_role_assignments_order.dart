// GENERATED CODE - DO NOT MODIFY BY HAND

final class ListGroupRoleAssignmentsOrder {const ListGroupRoleAssignmentsOrder._(this.value);

factory ListGroupRoleAssignmentsOrder.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => ListGroupRoleAssignmentsOrder._(json),
}; }

static const ListGroupRoleAssignmentsOrder asc = ListGroupRoleAssignmentsOrder._('asc');

static const ListGroupRoleAssignmentsOrder desc = ListGroupRoleAssignmentsOrder._('desc');

static const List<ListGroupRoleAssignmentsOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListGroupRoleAssignmentsOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ListGroupRoleAssignmentsOrder($value)'; } 
 }
