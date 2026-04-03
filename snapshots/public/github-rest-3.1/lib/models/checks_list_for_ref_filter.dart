// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ChecksListForRefFilter {const ChecksListForRefFilter._(this.value);

factory ChecksListForRefFilter.fromJson(String json) { return switch (json) {
  'latest' => latest,
  'all' => all,
  _ => ChecksListForRefFilter._(json),
}; }

static const ChecksListForRefFilter latest = ChecksListForRefFilter._('latest');

static const ChecksListForRefFilter all = ChecksListForRefFilter._('all');

static const List<ChecksListForRefFilter> values = [latest, all];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChecksListForRefFilter && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ChecksListForRefFilter($value)'; } 
 }
