// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAttacksLayer3TopIndustriesProtocol {const RadarGetAttacksLayer3TopIndustriesProtocol._(this.value);

factory RadarGetAttacksLayer3TopIndustriesProtocol.fromJson(String json) { return switch (json) {
  'UDP' => udp,
  'TCP' => tcp,
  'ICMP' => icmp,
  'GRE' => gre,
  _ => RadarGetAttacksLayer3TopIndustriesProtocol._(json),
}; }

static const RadarGetAttacksLayer3TopIndustriesProtocol udp = RadarGetAttacksLayer3TopIndustriesProtocol._('UDP');

static const RadarGetAttacksLayer3TopIndustriesProtocol tcp = RadarGetAttacksLayer3TopIndustriesProtocol._('TCP');

static const RadarGetAttacksLayer3TopIndustriesProtocol icmp = RadarGetAttacksLayer3TopIndustriesProtocol._('ICMP');

static const RadarGetAttacksLayer3TopIndustriesProtocol gre = RadarGetAttacksLayer3TopIndustriesProtocol._('GRE');

static const List<RadarGetAttacksLayer3TopIndustriesProtocol> values = [udp, tcp, icmp, gre];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TopIndustriesProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TopIndustriesProtocol($value)'; } 
 }
