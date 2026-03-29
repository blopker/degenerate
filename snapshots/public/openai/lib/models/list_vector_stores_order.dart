// GENERATED CODE - DO NOT MODIFY BY HAND

final class ListVectorStoresOrder {const ListVectorStoresOrder._(this.value);

factory ListVectorStoresOrder.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => ListVectorStoresOrder._(json),
}; }

static const ListVectorStoresOrder asc = ListVectorStoresOrder._('asc');

static const ListVectorStoresOrder desc = ListVectorStoresOrder._('desc');

static const List<ListVectorStoresOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListVectorStoresOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ListVectorStoresOrder($value)'; } 
 }
