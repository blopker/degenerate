// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetDnsTimeseriesResponseTtl {const RadarGetDnsTimeseriesResponseTtl._(this.value);

factory RadarGetDnsTimeseriesResponseTtl.fromJson(String json) { return switch (json) {
  'LTE_1M' => lte1M,
  'GT_1M_LTE_5M' => gt1MLte5M,
  'GT_5M_LTE_15M' => gt5MLte15M,
  'GT_15M_LTE_1H' => gt15MLte1H,
  'GT_1H_LTE_1D' => gt1HLte1D,
  'GT_1D_LTE_1W' => gt1DLte1W,
  'GT_1W' => gt1W,
  _ => RadarGetDnsTimeseriesResponseTtl._(json),
}; }

static const RadarGetDnsTimeseriesResponseTtl lte1M = RadarGetDnsTimeseriesResponseTtl._('LTE_1M');

static const RadarGetDnsTimeseriesResponseTtl gt1MLte5M = RadarGetDnsTimeseriesResponseTtl._('GT_1M_LTE_5M');

static const RadarGetDnsTimeseriesResponseTtl gt5MLte15M = RadarGetDnsTimeseriesResponseTtl._('GT_5M_LTE_15M');

static const RadarGetDnsTimeseriesResponseTtl gt15MLte1H = RadarGetDnsTimeseriesResponseTtl._('GT_15M_LTE_1H');

static const RadarGetDnsTimeseriesResponseTtl gt1HLte1D = RadarGetDnsTimeseriesResponseTtl._('GT_1H_LTE_1D');

static const RadarGetDnsTimeseriesResponseTtl gt1DLte1W = RadarGetDnsTimeseriesResponseTtl._('GT_1D_LTE_1W');

static const RadarGetDnsTimeseriesResponseTtl gt1W = RadarGetDnsTimeseriesResponseTtl._('GT_1W');

static const List<RadarGetDnsTimeseriesResponseTtl> values = [lte1M, gt1MLte5M, gt5MLte15M, gt15MLte1H, gt1HLte1D, gt1DLte1W, gt1W];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesResponseTtl && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesResponseTtl($value)'; } 
 }
