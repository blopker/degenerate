// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetCtSummaryExpirationStatus {const RadarGetCtSummaryExpirationStatus._(this.value);

factory RadarGetCtSummaryExpirationStatus.fromJson(String json) { return switch (json) {
  'EXPIRED' => expired,
  'VALID' => valid,
  _ => RadarGetCtSummaryExpirationStatus._(json),
}; }

static const RadarGetCtSummaryExpirationStatus expired = RadarGetCtSummaryExpirationStatus._('EXPIRED');

static const RadarGetCtSummaryExpirationStatus valid = RadarGetCtSummaryExpirationStatus._('VALID');

static const List<RadarGetCtSummaryExpirationStatus> values = [expired, valid];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetCtSummaryExpirationStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetCtSummaryExpirationStatus($value)'; } 
 }
