// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAttacksLayer3TimeseriesGroupByIndustryProtocol {const RadarGetAttacksLayer3TimeseriesGroupByIndustryProtocol._(this.value);

factory RadarGetAttacksLayer3TimeseriesGroupByIndustryProtocol.fromJson(String json) { return switch (json) {
  'UDP' => udp,
  'TCP' => tcp,
  'ICMP' => icmp,
  'GRE' => gre,
  _ => RadarGetAttacksLayer3TimeseriesGroupByIndustryProtocol._(json),
}; }

static const RadarGetAttacksLayer3TimeseriesGroupByIndustryProtocol udp = RadarGetAttacksLayer3TimeseriesGroupByIndustryProtocol._('UDP');

static const RadarGetAttacksLayer3TimeseriesGroupByIndustryProtocol tcp = RadarGetAttacksLayer3TimeseriesGroupByIndustryProtocol._('TCP');

static const RadarGetAttacksLayer3TimeseriesGroupByIndustryProtocol icmp = RadarGetAttacksLayer3TimeseriesGroupByIndustryProtocol._('ICMP');

static const RadarGetAttacksLayer3TimeseriesGroupByIndustryProtocol gre = RadarGetAttacksLayer3TimeseriesGroupByIndustryProtocol._('GRE');

static const List<RadarGetAttacksLayer3TimeseriesGroupByIndustryProtocol> values = [udp, tcp, icmp, gre];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TimeseriesGroupByIndustryProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupByIndustryProtocol($value)'; } 
 }
