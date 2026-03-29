// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAttacksLayer3TimeseriesGroupByVerticalProtocol {const RadarGetAttacksLayer3TimeseriesGroupByVerticalProtocol._(this.value);

factory RadarGetAttacksLayer3TimeseriesGroupByVerticalProtocol.fromJson(String json) { return switch (json) {
  'UDP' => udp,
  'TCP' => tcp,
  'ICMP' => icmp,
  'GRE' => gre,
  _ => RadarGetAttacksLayer3TimeseriesGroupByVerticalProtocol._(json),
}; }

static const RadarGetAttacksLayer3TimeseriesGroupByVerticalProtocol udp = RadarGetAttacksLayer3TimeseriesGroupByVerticalProtocol._('UDP');

static const RadarGetAttacksLayer3TimeseriesGroupByVerticalProtocol tcp = RadarGetAttacksLayer3TimeseriesGroupByVerticalProtocol._('TCP');

static const RadarGetAttacksLayer3TimeseriesGroupByVerticalProtocol icmp = RadarGetAttacksLayer3TimeseriesGroupByVerticalProtocol._('ICMP');

static const RadarGetAttacksLayer3TimeseriesGroupByVerticalProtocol gre = RadarGetAttacksLayer3TimeseriesGroupByVerticalProtocol._('GRE');

static const List<RadarGetAttacksLayer3TimeseriesGroupByVerticalProtocol> values = [udp, tcp, icmp, gre];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TimeseriesGroupByVerticalProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupByVerticalProtocol($value)'; } 
 }
