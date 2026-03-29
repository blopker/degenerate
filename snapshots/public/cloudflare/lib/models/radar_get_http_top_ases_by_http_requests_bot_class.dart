// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopAsesByHttpRequestsBotClass {const RadarGetHttpTopAsesByHttpRequestsBotClass._(this.value);

factory RadarGetHttpTopAsesByHttpRequestsBotClass.fromJson(String json) { return switch (json) {
  'LIKELY_AUTOMATED' => likelyAutomated,
  'LIKELY_HUMAN' => likelyHuman,
  _ => RadarGetHttpTopAsesByHttpRequestsBotClass._(json),
}; }

static const RadarGetHttpTopAsesByHttpRequestsBotClass likelyAutomated = RadarGetHttpTopAsesByHttpRequestsBotClass._('LIKELY_AUTOMATED');

static const RadarGetHttpTopAsesByHttpRequestsBotClass likelyHuman = RadarGetHttpTopAsesByHttpRequestsBotClass._('LIKELY_HUMAN');

static const List<RadarGetHttpTopAsesByHttpRequestsBotClass> values = [likelyAutomated, likelyHuman];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopAsesByHttpRequestsBotClass && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByHttpRequestsBotClass($value)'; } 
 }
