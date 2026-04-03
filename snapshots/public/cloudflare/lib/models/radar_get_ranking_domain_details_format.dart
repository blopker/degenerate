// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetRankingDomainDetailsFormat {const RadarGetRankingDomainDetailsFormat._(this.value);

factory RadarGetRankingDomainDetailsFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetRankingDomainDetailsFormat._(json),
}; }

static const RadarGetRankingDomainDetailsFormat $json = RadarGetRankingDomainDetailsFormat._('JSON');

static const RadarGetRankingDomainDetailsFormat csv = RadarGetRankingDomainDetailsFormat._('CSV');

static const List<RadarGetRankingDomainDetailsFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetRankingDomainDetailsFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetRankingDomainDetailsFormat($value)'; } 
 }
