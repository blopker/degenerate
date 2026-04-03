// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The ranking type.
@immutable final class RadarGetRankingDomainDetailsRankingType {const RadarGetRankingDomainDetailsRankingType._(this.value);

factory RadarGetRankingDomainDetailsRankingType.fromJson(String json) { return switch (json) {
  'POPULAR' => popular,
  'TRENDING_RISE' => trendingRise,
  'TRENDING_STEADY' => trendingSteady,
  _ => RadarGetRankingDomainDetailsRankingType._(json),
}; }

static const RadarGetRankingDomainDetailsRankingType popular = RadarGetRankingDomainDetailsRankingType._('POPULAR');

static const RadarGetRankingDomainDetailsRankingType trendingRise = RadarGetRankingDomainDetailsRankingType._('TRENDING_RISE');

static const RadarGetRankingDomainDetailsRankingType trendingSteady = RadarGetRankingDomainDetailsRankingType._('TRENDING_STEADY');

static const List<RadarGetRankingDomainDetailsRankingType> values = [popular, trendingRise, trendingSteady];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetRankingDomainDetailsRankingType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetRankingDomainDetailsRankingType($value)'; } 
 }
