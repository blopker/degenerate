// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Whether to match all search requirements or at least one (any).
@immutable final class CustomSslForAZoneListSslConfigurationsMatch {const CustomSslForAZoneListSslConfigurationsMatch._(this.value);

factory CustomSslForAZoneListSslConfigurationsMatch.fromJson(String json) { return switch (json) {
  'any' => any,
  'all' => all,
  _ => CustomSslForAZoneListSslConfigurationsMatch._(json),
}; }

static const CustomSslForAZoneListSslConfigurationsMatch any = CustomSslForAZoneListSslConfigurationsMatch._('any');

static const CustomSslForAZoneListSslConfigurationsMatch all = CustomSslForAZoneListSslConfigurationsMatch._('all');

static const List<CustomSslForAZoneListSslConfigurationsMatch> values = [any, all];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CustomSslForAZoneListSslConfigurationsMatch && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CustomSslForAZoneListSslConfigurationsMatch($value)'; } 
 }
