// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DependabotListAlertsForRepoHasVariant2 {const DependabotListAlertsForRepoHasVariant2._(this.value);

factory DependabotListAlertsForRepoHasVariant2.fromJson(String json) { return switch (json) {
  'patch' => patch,
  _ => DependabotListAlertsForRepoHasVariant2._(json),
}; }

static const DependabotListAlertsForRepoHasVariant2 patch = DependabotListAlertsForRepoHasVariant2._('patch');

static const List<DependabotListAlertsForRepoHasVariant2> values = [patch];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotListAlertsForRepoHasVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DependabotListAlertsForRepoHasVariant2($value)'; } 
 }
typedef DependabotListAlertsForRepoHas = OneOf2<String,List<DependabotListAlertsForRepoHasVariant2>>;
