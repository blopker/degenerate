// GENERATED CODE - DO NOT MODIFY BY HAND

final class DependabotListAlertsForEnterpriseDirection {const DependabotListAlertsForEnterpriseDirection._(this.value);

factory DependabotListAlertsForEnterpriseDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => DependabotListAlertsForEnterpriseDirection._(json),
}; }

static const DependabotListAlertsForEnterpriseDirection asc = DependabotListAlertsForEnterpriseDirection._('asc');

static const DependabotListAlertsForEnterpriseDirection desc = DependabotListAlertsForEnterpriseDirection._('desc');

static const List<DependabotListAlertsForEnterpriseDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotListAlertsForEnterpriseDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DependabotListAlertsForEnterpriseDirection($value)'; } 
 }
