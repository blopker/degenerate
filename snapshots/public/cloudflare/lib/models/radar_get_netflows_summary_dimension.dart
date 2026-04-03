// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specifies the NetFlows attribute by which to group the results.
@immutable final class RadarGetNetflowsSummaryDimension {const RadarGetNetflowsSummaryDimension._(this.value);

factory RadarGetNetflowsSummaryDimension.fromJson(String json) { return switch (json) {
  'ADM1' => adm1,
  'AS' => $as,
  'LOCATION' => location,
  'PRODUCT' => product,
  _ => RadarGetNetflowsSummaryDimension._(json),
}; }

static const RadarGetNetflowsSummaryDimension adm1 = RadarGetNetflowsSummaryDimension._('ADM1');

static const RadarGetNetflowsSummaryDimension $as = RadarGetNetflowsSummaryDimension._('AS');

static const RadarGetNetflowsSummaryDimension location = RadarGetNetflowsSummaryDimension._('LOCATION');

static const RadarGetNetflowsSummaryDimension product = RadarGetNetflowsSummaryDimension._('PRODUCT');

static const List<RadarGetNetflowsSummaryDimension> values = [adm1, $as, location, product];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetNetflowsSummaryDimension && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetNetflowsSummaryDimension($value)'; } 
 }
