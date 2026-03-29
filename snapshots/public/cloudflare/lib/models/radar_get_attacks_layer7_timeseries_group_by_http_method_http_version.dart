// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAttacksLayer7TimeseriesGroupByHttpMethodHttpVersion {const RadarGetAttacksLayer7TimeseriesGroupByHttpMethodHttpVersion._(this.value);

factory RadarGetAttacksLayer7TimeseriesGroupByHttpMethodHttpVersion.fromJson(String json) { return switch (json) {
  'HTTPv1' => httPv1,
  'HTTPv2' => httPv2,
  'HTTPv3' => httPv3,
  _ => RadarGetAttacksLayer7TimeseriesGroupByHttpMethodHttpVersion._(json),
}; }

static const RadarGetAttacksLayer7TimeseriesGroupByHttpMethodHttpVersion httPv1 = RadarGetAttacksLayer7TimeseriesGroupByHttpMethodHttpVersion._('HTTPv1');

static const RadarGetAttacksLayer7TimeseriesGroupByHttpMethodHttpVersion httPv2 = RadarGetAttacksLayer7TimeseriesGroupByHttpMethodHttpVersion._('HTTPv2');

static const RadarGetAttacksLayer7TimeseriesGroupByHttpMethodHttpVersion httPv3 = RadarGetAttacksLayer7TimeseriesGroupByHttpMethodHttpVersion._('HTTPv3');

static const List<RadarGetAttacksLayer7TimeseriesGroupByHttpMethodHttpVersion> values = [httPv1, httPv2, httPv3];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TimeseriesGroupByHttpMethodHttpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupByHttpMethodHttpVersion($value)'; } 
 }
