// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AppsListAccountsForPlanSort {const AppsListAccountsForPlanSort._(this.value);

factory AppsListAccountsForPlanSort.fromJson(String json) { return switch (json) {
  'created' => created,
  'updated' => updated,
  _ => AppsListAccountsForPlanSort._(json),
}; }

static const AppsListAccountsForPlanSort created = AppsListAccountsForPlanSort._('created');

static const AppsListAccountsForPlanSort updated = AppsListAccountsForPlanSort._('updated');

static const List<AppsListAccountsForPlanSort> values = [created, updated];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AppsListAccountsForPlanSort && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AppsListAccountsForPlanSort($value)'; } 
 }
