// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetPricesType {const GetPricesType._(this.value);

factory GetPricesType.fromJson(String json) { return switch (json) {
  'one_time' => oneTime,
  'recurring' => recurring,
  _ => GetPricesType._(json),
}; }

static const GetPricesType oneTime = GetPricesType._('one_time');

static const GetPricesType recurring = GetPricesType._('recurring');

static const List<GetPricesType> values = [oneTime, recurring];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetPricesType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetPricesType($value)'; } 
 }
