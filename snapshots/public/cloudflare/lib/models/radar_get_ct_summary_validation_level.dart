// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetCtSummaryValidationLevel {const RadarGetCtSummaryValidationLevel._(this.value);

factory RadarGetCtSummaryValidationLevel.fromJson(String json) { return switch (json) {
  'DOMAIN' => domain,
  'ORGANIZATION' => organization,
  'EXTENDED' => extended,
  _ => RadarGetCtSummaryValidationLevel._(json),
}; }

static const RadarGetCtSummaryValidationLevel domain = RadarGetCtSummaryValidationLevel._('DOMAIN');

static const RadarGetCtSummaryValidationLevel organization = RadarGetCtSummaryValidationLevel._('ORGANIZATION');

static const RadarGetCtSummaryValidationLevel extended = RadarGetCtSummaryValidationLevel._('EXTENDED');

static const List<RadarGetCtSummaryValidationLevel> values = [domain, organization, extended];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetCtSummaryValidationLevel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetCtSummaryValidationLevel($value)'; } 
 }
