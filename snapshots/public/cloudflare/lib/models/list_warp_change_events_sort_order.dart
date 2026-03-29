// GENERATED CODE - DO NOT MODIFY BY HAND

final class ListWarpChangeEventsSortOrder {const ListWarpChangeEventsSortOrder._(this.value);

factory ListWarpChangeEventsSortOrder.fromJson(String json) { return switch (json) {
  'ASC' => asc,
  'DESC' => desc,
  _ => ListWarpChangeEventsSortOrder._(json),
}; }

static const ListWarpChangeEventsSortOrder asc = ListWarpChangeEventsSortOrder._('ASC');

static const ListWarpChangeEventsSortOrder desc = ListWarpChangeEventsSortOrder._('DESC');

static const List<ListWarpChangeEventsSortOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListWarpChangeEventsSortOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ListWarpChangeEventsSortOrder($value)'; } 
 }
