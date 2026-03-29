// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAttacksLayer7SummaryByVerticalHttpVersion {const RadarGetAttacksLayer7SummaryByVerticalHttpVersion._(this.value);

factory RadarGetAttacksLayer7SummaryByVerticalHttpVersion.fromJson(String json) { return switch (json) {
  'HTTPv1' => httPv1,
  'HTTPv2' => httPv2,
  'HTTPv3' => httPv3,
  _ => RadarGetAttacksLayer7SummaryByVerticalHttpVersion._(json),
}; }

static const RadarGetAttacksLayer7SummaryByVerticalHttpVersion httPv1 = RadarGetAttacksLayer7SummaryByVerticalHttpVersion._('HTTPv1');

static const RadarGetAttacksLayer7SummaryByVerticalHttpVersion httPv2 = RadarGetAttacksLayer7SummaryByVerticalHttpVersion._('HTTPv2');

static const RadarGetAttacksLayer7SummaryByVerticalHttpVersion httPv3 = RadarGetAttacksLayer7SummaryByVerticalHttpVersion._('HTTPv3');

static const List<RadarGetAttacksLayer7SummaryByVerticalHttpVersion> values = [httPv1, httPv2, httPv3];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7SummaryByVerticalHttpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7SummaryByVerticalHttpVersion($value)'; } 
 }
