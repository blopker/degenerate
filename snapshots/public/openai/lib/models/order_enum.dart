// GENERATED CODE - DO NOT MODIFY BY HAND

final class OrderEnum {const OrderEnum._(this.value);

factory OrderEnum.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => OrderEnum._(json),
}; }

static const OrderEnum asc = OrderEnum._('asc');

static const OrderEnum desc = OrderEnum._('desc');

static const List<OrderEnum> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrderEnum && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OrderEnum($value)'; } 
 }
