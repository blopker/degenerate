// GENERATED CODE - DO NOT MODIFY BY HAND

final class ListWarpChangeEventsType {const ListWarpChangeEventsType._(this.value);

factory ListWarpChangeEventsType.fromJson(String json) { return switch (json) {
  'config' => config,
  'toggle' => toggle,
  _ => ListWarpChangeEventsType._(json),
}; }

static const ListWarpChangeEventsType config = ListWarpChangeEventsType._('config');

static const ListWarpChangeEventsType toggle = ListWarpChangeEventsType._('toggle');

static const List<ListWarpChangeEventsType> values = [config, toggle];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListWarpChangeEventsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ListWarpChangeEventsType($value)'; } 
 }
