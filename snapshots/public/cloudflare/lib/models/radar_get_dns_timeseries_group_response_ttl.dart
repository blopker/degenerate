// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsTimeseriesGroupResponseTtl {const RadarGetDnsTimeseriesGroupResponseTtl._(this.value);

factory RadarGetDnsTimeseriesGroupResponseTtl.fromJson(String json) { return switch (json) {
  'LTE_1M' => lte1M,
  'GT_1M_LTE_5M' => gt1MLte5M,
  'GT_5M_LTE_15M' => gt5MLte15M,
  'GT_15M_LTE_1H' => gt15MLte1H,
  'GT_1H_LTE_1D' => gt1HLte1D,
  'GT_1D_LTE_1W' => gt1DLte1W,
  'GT_1W' => gt1W,
  _ => RadarGetDnsTimeseriesGroupResponseTtl._(json),
}; }

static const RadarGetDnsTimeseriesGroupResponseTtl lte1M = RadarGetDnsTimeseriesGroupResponseTtl._('LTE_1M');

static const RadarGetDnsTimeseriesGroupResponseTtl gt1MLte5M = RadarGetDnsTimeseriesGroupResponseTtl._('GT_1M_LTE_5M');

static const RadarGetDnsTimeseriesGroupResponseTtl gt5MLte15M = RadarGetDnsTimeseriesGroupResponseTtl._('GT_5M_LTE_15M');

static const RadarGetDnsTimeseriesGroupResponseTtl gt15MLte1H = RadarGetDnsTimeseriesGroupResponseTtl._('GT_15M_LTE_1H');

static const RadarGetDnsTimeseriesGroupResponseTtl gt1HLte1D = RadarGetDnsTimeseriesGroupResponseTtl._('GT_1H_LTE_1D');

static const RadarGetDnsTimeseriesGroupResponseTtl gt1DLte1W = RadarGetDnsTimeseriesGroupResponseTtl._('GT_1D_LTE_1W');

static const RadarGetDnsTimeseriesGroupResponseTtl gt1W = RadarGetDnsTimeseriesGroupResponseTtl._('GT_1W');

static const List<RadarGetDnsTimeseriesGroupResponseTtl> values = [lte1M, gt1MLte5M, gt5MLte15M, gt15MLte1H, gt1HLte1D, gt1DLte1W, gt1W];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupResponseTtl && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupResponseTtl($value)'; } 
 }
