// GENERATED CODE - DO NOT MODIFY BY HAND

/// Direction to order zones.
final class ZonesGetDirection {const ZonesGetDirection._(this.value);

factory ZonesGetDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => ZonesGetDirection._(json),
}; }

static const ZonesGetDirection asc = ZonesGetDirection._('asc');

static const ZonesGetDirection desc = ZonesGetDirection._('desc');

static const List<ZonesGetDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesGetDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesGetDirection($value)'; } 
 }
