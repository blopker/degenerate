// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAttacksLayer3TimeseriesGroupProtocol {const RadarGetAttacksLayer3TimeseriesGroupProtocol._(this.value);

factory RadarGetAttacksLayer3TimeseriesGroupProtocol.fromJson(String json) { return switch (json) {
  'UDP' => udp,
  'TCP' => tcp,
  'ICMP' => icmp,
  'GRE' => gre,
  _ => RadarGetAttacksLayer3TimeseriesGroupProtocol._(json),
}; }

static const RadarGetAttacksLayer3TimeseriesGroupProtocol udp = RadarGetAttacksLayer3TimeseriesGroupProtocol._('UDP');

static const RadarGetAttacksLayer3TimeseriesGroupProtocol tcp = RadarGetAttacksLayer3TimeseriesGroupProtocol._('TCP');

static const RadarGetAttacksLayer3TimeseriesGroupProtocol icmp = RadarGetAttacksLayer3TimeseriesGroupProtocol._('ICMP');

static const RadarGetAttacksLayer3TimeseriesGroupProtocol gre = RadarGetAttacksLayer3TimeseriesGroupProtocol._('GRE');

static const List<RadarGetAttacksLayer3TimeseriesGroupProtocol> values = [udp, tcp, icmp, gre];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TimeseriesGroupProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupProtocol($value)'; } 
 }
