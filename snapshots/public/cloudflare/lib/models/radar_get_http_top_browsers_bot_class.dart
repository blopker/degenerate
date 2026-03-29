// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopBrowsersBotClass {const RadarGetHttpTopBrowsersBotClass._(this.value);

factory RadarGetHttpTopBrowsersBotClass.fromJson(String json) { return switch (json) {
  'LIKELY_AUTOMATED' => likelyAutomated,
  'LIKELY_HUMAN' => likelyHuman,
  _ => RadarGetHttpTopBrowsersBotClass._(json),
}; }

static const RadarGetHttpTopBrowsersBotClass likelyAutomated = RadarGetHttpTopBrowsersBotClass._('LIKELY_AUTOMATED');

static const RadarGetHttpTopBrowsersBotClass likelyHuman = RadarGetHttpTopBrowsersBotClass._('LIKELY_HUMAN');

static const List<RadarGetHttpTopBrowsersBotClass> values = [likelyAutomated, likelyHuman];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopBrowsersBotClass && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopBrowsersBotClass($value)'; } 
 }
