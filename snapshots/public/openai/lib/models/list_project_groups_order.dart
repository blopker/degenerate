// GENERATED CODE - DO NOT MODIFY BY HAND

final class ListProjectGroupsOrder {const ListProjectGroupsOrder._(this.value);

factory ListProjectGroupsOrder.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => ListProjectGroupsOrder._(json),
}; }

static const ListProjectGroupsOrder asc = ListProjectGroupsOrder._('asc');

static const ListProjectGroupsOrder desc = ListProjectGroupsOrder._('desc');

static const List<ListProjectGroupsOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListProjectGroupsOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ListProjectGroupsOrder($value)'; } 
 }
