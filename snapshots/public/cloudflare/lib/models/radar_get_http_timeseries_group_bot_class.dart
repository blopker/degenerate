// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTimeseriesGroupBotClass {const RadarGetHttpTimeseriesGroupBotClass._(this.value);

factory RadarGetHttpTimeseriesGroupBotClass.fromJson(String json) { return switch (json) {
  'LIKELY_AUTOMATED' => likelyAutomated,
  'LIKELY_HUMAN' => likelyHuman,
  _ => RadarGetHttpTimeseriesGroupBotClass._(json),
}; }

static const RadarGetHttpTimeseriesGroupBotClass likelyAutomated = RadarGetHttpTimeseriesGroupBotClass._('LIKELY_AUTOMATED');

static const RadarGetHttpTimeseriesGroupBotClass likelyHuman = RadarGetHttpTimeseriesGroupBotClass._('LIKELY_HUMAN');

static const List<RadarGetHttpTimeseriesGroupBotClass> values = [likelyAutomated, likelyHuman];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupBotClass && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupBotClass($value)'; } 
 }
