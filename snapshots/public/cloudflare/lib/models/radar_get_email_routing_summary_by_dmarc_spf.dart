// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailRoutingSummaryByDmarcSpf {const RadarGetEmailRoutingSummaryByDmarcSpf._(this.value);

factory RadarGetEmailRoutingSummaryByDmarcSpf.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailRoutingSummaryByDmarcSpf._(json),
}; }

static const RadarGetEmailRoutingSummaryByDmarcSpf pass = RadarGetEmailRoutingSummaryByDmarcSpf._('PASS');

static const RadarGetEmailRoutingSummaryByDmarcSpf none = RadarGetEmailRoutingSummaryByDmarcSpf._('NONE');

static const RadarGetEmailRoutingSummaryByDmarcSpf fail = RadarGetEmailRoutingSummaryByDmarcSpf._('FAIL');

static const List<RadarGetEmailRoutingSummaryByDmarcSpf> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingSummaryByDmarcSpf && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingSummaryByDmarcSpf($value)'; } 
 }
