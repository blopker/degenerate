// GENERATED CODE - DO NOT MODIFY BY HAND

/// Whether to match all search requirements or at least one (any).
final class ZonesGetMatch {const ZonesGetMatch._(this.value);

factory ZonesGetMatch.fromJson(String json) { return switch (json) {
  'any' => any,
  'all' => all,
  _ => ZonesGetMatch._(json),
}; }

static const ZonesGetMatch any = ZonesGetMatch._('any');

static const ZonesGetMatch all = ZonesGetMatch._('all');

static const List<ZonesGetMatch> values = [any, all];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesGetMatch && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesGetMatch($value)'; } 
 }
