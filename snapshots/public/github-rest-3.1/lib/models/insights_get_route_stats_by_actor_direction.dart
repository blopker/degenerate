// GENERATED CODE - DO NOT MODIFY BY HAND

final class InsightsGetRouteStatsByActorDirection {const InsightsGetRouteStatsByActorDirection._(this.value);

factory InsightsGetRouteStatsByActorDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => InsightsGetRouteStatsByActorDirection._(json),
}; }

static const InsightsGetRouteStatsByActorDirection asc = InsightsGetRouteStatsByActorDirection._('asc');

static const InsightsGetRouteStatsByActorDirection desc = InsightsGetRouteStatsByActorDirection._('desc');

static const List<InsightsGetRouteStatsByActorDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InsightsGetRouteStatsByActorDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InsightsGetRouteStatsByActorDirection($value)'; } 
 }
