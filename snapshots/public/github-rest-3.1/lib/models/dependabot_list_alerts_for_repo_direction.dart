// GENERATED CODE - DO NOT MODIFY BY HAND

final class DependabotListAlertsForRepoDirection {const DependabotListAlertsForRepoDirection._(this.value);

factory DependabotListAlertsForRepoDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => DependabotListAlertsForRepoDirection._(json),
}; }

static const DependabotListAlertsForRepoDirection asc = DependabotListAlertsForRepoDirection._('asc');

static const DependabotListAlertsForRepoDirection desc = DependabotListAlertsForRepoDirection._('desc');

static const List<DependabotListAlertsForRepoDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotListAlertsForRepoDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DependabotListAlertsForRepoDirection($value)'; } 
 }
