// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTimeseriesGroupByHttpProtocolBotClass {const RadarGetHttpTimeseriesGroupByHttpProtocolBotClass._(this.value);

factory RadarGetHttpTimeseriesGroupByHttpProtocolBotClass.fromJson(String json) { return switch (json) {
  'LIKELY_AUTOMATED' => likelyAutomated,
  'LIKELY_HUMAN' => likelyHuman,
  _ => RadarGetHttpTimeseriesGroupByHttpProtocolBotClass._(json),
}; }

static const RadarGetHttpTimeseriesGroupByHttpProtocolBotClass likelyAutomated = RadarGetHttpTimeseriesGroupByHttpProtocolBotClass._('LIKELY_AUTOMATED');

static const RadarGetHttpTimeseriesGroupByHttpProtocolBotClass likelyHuman = RadarGetHttpTimeseriesGroupByHttpProtocolBotClass._('LIKELY_HUMAN');

static const List<RadarGetHttpTimeseriesGroupByHttpProtocolBotClass> values = [likelyAutomated, likelyHuman];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByHttpProtocolBotClass && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByHttpProtocolBotClass($value)'; } 
 }
