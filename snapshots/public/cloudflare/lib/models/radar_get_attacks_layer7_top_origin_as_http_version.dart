// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAttacksLayer7TopOriginAsHttpVersion {const RadarGetAttacksLayer7TopOriginAsHttpVersion._(this.value);

factory RadarGetAttacksLayer7TopOriginAsHttpVersion.fromJson(String json) { return switch (json) {
  'HTTPv1' => httPv1,
  'HTTPv2' => httPv2,
  'HTTPv3' => httPv3,
  _ => RadarGetAttacksLayer7TopOriginAsHttpVersion._(json),
}; }

static const RadarGetAttacksLayer7TopOriginAsHttpVersion httPv1 = RadarGetAttacksLayer7TopOriginAsHttpVersion._('HTTPv1');

static const RadarGetAttacksLayer7TopOriginAsHttpVersion httPv2 = RadarGetAttacksLayer7TopOriginAsHttpVersion._('HTTPv2');

static const RadarGetAttacksLayer7TopOriginAsHttpVersion httPv3 = RadarGetAttacksLayer7TopOriginAsHttpVersion._('HTTPv3');

static const List<RadarGetAttacksLayer7TopOriginAsHttpVersion> values = [httPv1, httPv2, httPv3];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TopOriginAsHttpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TopOriginAsHttpVersion($value)'; } 
 }
