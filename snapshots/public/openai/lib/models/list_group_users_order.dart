// GENERATED CODE - DO NOT MODIFY BY HAND

final class ListGroupUsersOrder {const ListGroupUsersOrder._(this.value);

factory ListGroupUsersOrder.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => ListGroupUsersOrder._(json),
}; }

static const ListGroupUsersOrder asc = ListGroupUsersOrder._('asc');

static const ListGroupUsersOrder desc = ListGroupUsersOrder._('desc');

static const List<ListGroupUsersOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListGroupUsersOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ListGroupUsersOrder($value)'; } 
 }
