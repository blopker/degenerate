// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAttacksLayer3TopOriginLocationsProtocol {const RadarGetAttacksLayer3TopOriginLocationsProtocol._(this.value);

factory RadarGetAttacksLayer3TopOriginLocationsProtocol.fromJson(String json) { return switch (json) {
  'UDP' => udp,
  'TCP' => tcp,
  'ICMP' => icmp,
  'GRE' => gre,
  _ => RadarGetAttacksLayer3TopOriginLocationsProtocol._(json),
}; }

static const RadarGetAttacksLayer3TopOriginLocationsProtocol udp = RadarGetAttacksLayer3TopOriginLocationsProtocol._('UDP');

static const RadarGetAttacksLayer3TopOriginLocationsProtocol tcp = RadarGetAttacksLayer3TopOriginLocationsProtocol._('TCP');

static const RadarGetAttacksLayer3TopOriginLocationsProtocol icmp = RadarGetAttacksLayer3TopOriginLocationsProtocol._('ICMP');

static const RadarGetAttacksLayer3TopOriginLocationsProtocol gre = RadarGetAttacksLayer3TopOriginLocationsProtocol._('GRE');

static const List<RadarGetAttacksLayer3TopOriginLocationsProtocol> values = [udp, tcp, icmp, gre];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TopOriginLocationsProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TopOriginLocationsProtocol($value)'; } 
 }
