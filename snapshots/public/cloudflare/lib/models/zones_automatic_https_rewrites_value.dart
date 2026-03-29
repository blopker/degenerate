// GENERATED CODE - DO NOT MODIFY BY HAND

/// Value of the zone setting.
/// Notes: Default value depends on the zone's plan level.
final class ZonesAutomaticHttpsRewritesValue {const ZonesAutomaticHttpsRewritesValue._(this.value);

factory ZonesAutomaticHttpsRewritesValue.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesAutomaticHttpsRewritesValue._(json),
}; }

static const ZonesAutomaticHttpsRewritesValue $on = ZonesAutomaticHttpsRewritesValue._('on');

static const ZonesAutomaticHttpsRewritesValue off = ZonesAutomaticHttpsRewritesValue._('off');

static const List<ZonesAutomaticHttpsRewritesValue> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesAutomaticHttpsRewritesValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesAutomaticHttpsRewritesValue($value)'; } 
 }
