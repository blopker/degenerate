// GENERATED CODE - DO NOT MODIFY BY HAND

/// Region where this widget can be used. This cannot be changed after creation.
/// 
final class TurnstileRegion {const TurnstileRegion._(this.value);

factory TurnstileRegion.fromJson(String json) { return switch (json) {
  'world' => world,
  'china' => china,
  _ => TurnstileRegion._(json),
}; }

static const TurnstileRegion world = TurnstileRegion._('world');

static const TurnstileRegion china = TurnstileRegion._('china');

static const List<TurnstileRegion> values = [world, china];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TurnstileRegion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TurnstileRegion($value)'; } 
 }
