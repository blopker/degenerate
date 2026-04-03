// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAttacksLayer3TopVerticalsProtocol {const RadarGetAttacksLayer3TopVerticalsProtocol._(this.value);

factory RadarGetAttacksLayer3TopVerticalsProtocol.fromJson(String json) { return switch (json) {
  'UDP' => udp,
  'TCP' => tcp,
  'ICMP' => icmp,
  'GRE' => gre,
  _ => RadarGetAttacksLayer3TopVerticalsProtocol._(json),
}; }

static const RadarGetAttacksLayer3TopVerticalsProtocol udp = RadarGetAttacksLayer3TopVerticalsProtocol._('UDP');

static const RadarGetAttacksLayer3TopVerticalsProtocol tcp = RadarGetAttacksLayer3TopVerticalsProtocol._('TCP');

static const RadarGetAttacksLayer3TopVerticalsProtocol icmp = RadarGetAttacksLayer3TopVerticalsProtocol._('ICMP');

static const RadarGetAttacksLayer3TopVerticalsProtocol gre = RadarGetAttacksLayer3TopVerticalsProtocol._('GRE');

static const List<RadarGetAttacksLayer3TopVerticalsProtocol> values = [udp, tcp, icmp, gre];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TopVerticalsProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TopVerticalsProtocol($value)'; } 
 }
