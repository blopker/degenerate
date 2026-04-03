// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ChecksListForSuiteFilter {const ChecksListForSuiteFilter._(this.value);

factory ChecksListForSuiteFilter.fromJson(String json) { return switch (json) {
  'latest' => latest,
  'all' => all,
  _ => ChecksListForSuiteFilter._(json),
}; }

static const ChecksListForSuiteFilter latest = ChecksListForSuiteFilter._('latest');

static const ChecksListForSuiteFilter all = ChecksListForSuiteFilter._('all');

static const List<ChecksListForSuiteFilter> values = [latest, all];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChecksListForSuiteFilter && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ChecksListForSuiteFilter($value)'; } 
 }
