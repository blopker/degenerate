// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DependabotListAlertsForOrgDirection {const DependabotListAlertsForOrgDirection._(this.value);

factory DependabotListAlertsForOrgDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => DependabotListAlertsForOrgDirection._(json),
}; }

static const DependabotListAlertsForOrgDirection asc = DependabotListAlertsForOrgDirection._('asc');

static const DependabotListAlertsForOrgDirection desc = DependabotListAlertsForOrgDirection._('desc');

static const List<DependabotListAlertsForOrgDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotListAlertsForOrgDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DependabotListAlertsForOrgDirection($value)'; } 
 }
