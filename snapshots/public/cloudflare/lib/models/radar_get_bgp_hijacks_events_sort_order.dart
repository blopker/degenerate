// GENERATED CODE - DO NOT MODIFY BY HAND

/// Sort order.
final class RadarGetBgpHijacksEventsSortOrder {const RadarGetBgpHijacksEventsSortOrder._(this.value);

factory RadarGetBgpHijacksEventsSortOrder.fromJson(String json) { return switch (json) {
  'ASC' => asc,
  'DESC' => desc,
  _ => RadarGetBgpHijacksEventsSortOrder._(json),
}; }

static const RadarGetBgpHijacksEventsSortOrder asc = RadarGetBgpHijacksEventsSortOrder._('ASC');

static const RadarGetBgpHijacksEventsSortOrder desc = RadarGetBgpHijacksEventsSortOrder._('DESC');

static const List<RadarGetBgpHijacksEventsSortOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetBgpHijacksEventsSortOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetBgpHijacksEventsSortOrder($value)'; } 
 }
