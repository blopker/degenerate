// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpSummaryByHttpVersionBotClass {const RadarGetHttpSummaryByHttpVersionBotClass._(this.value);

factory RadarGetHttpSummaryByHttpVersionBotClass.fromJson(String json) { return switch (json) {
  'LIKELY_AUTOMATED' => likelyAutomated,
  'LIKELY_HUMAN' => likelyHuman,
  _ => RadarGetHttpSummaryByHttpVersionBotClass._(json),
}; }

static const RadarGetHttpSummaryByHttpVersionBotClass likelyAutomated = RadarGetHttpSummaryByHttpVersionBotClass._('LIKELY_AUTOMATED');

static const RadarGetHttpSummaryByHttpVersionBotClass likelyHuman = RadarGetHttpSummaryByHttpVersionBotClass._('LIKELY_HUMAN');

static const List<RadarGetHttpSummaryByHttpVersionBotClass> values = [likelyAutomated, likelyHuman];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByHttpVersionBotClass && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByHttpVersionBotClass($value)'; } 
 }
