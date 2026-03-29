// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAttacksLayer7TopOriginLocationHttpVersion {const RadarGetAttacksLayer7TopOriginLocationHttpVersion._(this.value);

factory RadarGetAttacksLayer7TopOriginLocationHttpVersion.fromJson(String json) { return switch (json) {
  'HTTPv1' => httPv1,
  'HTTPv2' => httPv2,
  'HTTPv3' => httPv3,
  _ => RadarGetAttacksLayer7TopOriginLocationHttpVersion._(json),
}; }

static const RadarGetAttacksLayer7TopOriginLocationHttpVersion httPv1 = RadarGetAttacksLayer7TopOriginLocationHttpVersion._('HTTPv1');

static const RadarGetAttacksLayer7TopOriginLocationHttpVersion httPv2 = RadarGetAttacksLayer7TopOriginLocationHttpVersion._('HTTPv2');

static const RadarGetAttacksLayer7TopOriginLocationHttpVersion httPv3 = RadarGetAttacksLayer7TopOriginLocationHttpVersion._('HTTPv3');

static const List<RadarGetAttacksLayer7TopOriginLocationHttpVersion> values = [httPv1, httPv2, httPv3];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TopOriginLocationHttpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TopOriginLocationHttpVersion($value)'; } 
 }
