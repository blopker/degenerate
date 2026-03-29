// GENERATED CODE - DO NOT MODIFY BY HAND

final class DexEndpointsListColosSortBy {const DexEndpointsListColosSortBy._(this.value);

factory DexEndpointsListColosSortBy.fromJson(String json) { return switch (json) {
  'fleet-status-usage' => fleetStatusUsage,
  'application-tests-usage' => applicationTestsUsage,
  _ => DexEndpointsListColosSortBy._(json),
}; }

static const DexEndpointsListColosSortBy fleetStatusUsage = DexEndpointsListColosSortBy._('fleet-status-usage');

static const DexEndpointsListColosSortBy applicationTestsUsage = DexEndpointsListColosSortBy._('application-tests-usage');

static const List<DexEndpointsListColosSortBy> values = [fleetStatusUsage, applicationTestsUsage];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DexEndpointsListColosSortBy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DexEndpointsListColosSortBy($value)'; } 
 }
