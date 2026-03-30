// GENERATED CODE - DO NOT MODIFY BY HAND

/// Value of the zone setting.
final class ZonesDevelopmentModeValue {const ZonesDevelopmentModeValue._(this.value);

factory ZonesDevelopmentModeValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesDevelopmentModeValue._(json),
}; }

static const ZonesDevelopmentModeValue $on = ZonesDevelopmentModeValue._('on');

static const ZonesDevelopmentModeValue off = ZonesDevelopmentModeValue._('off');

static const List<ZonesDevelopmentModeValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesDevelopmentModeValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesDevelopmentModeValue($value)'; } 
 }
