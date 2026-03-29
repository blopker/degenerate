// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpSummaryByOperatingSystemBotClass {const RadarGetHttpSummaryByOperatingSystemBotClass._(this.value);

factory RadarGetHttpSummaryByOperatingSystemBotClass.fromJson(String json) { return switch (json) {
  'LIKELY_AUTOMATED' => likelyAutomated,
  'LIKELY_HUMAN' => likelyHuman,
  _ => RadarGetHttpSummaryByOperatingSystemBotClass._(json),
}; }

static const RadarGetHttpSummaryByOperatingSystemBotClass likelyAutomated = RadarGetHttpSummaryByOperatingSystemBotClass._('LIKELY_AUTOMATED');

static const RadarGetHttpSummaryByOperatingSystemBotClass likelyHuman = RadarGetHttpSummaryByOperatingSystemBotClass._('LIKELY_HUMAN');

static const List<RadarGetHttpSummaryByOperatingSystemBotClass> values = [likelyAutomated, likelyHuman];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByOperatingSystemBotClass && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByOperatingSystemBotClass($value)'; } 
 }
