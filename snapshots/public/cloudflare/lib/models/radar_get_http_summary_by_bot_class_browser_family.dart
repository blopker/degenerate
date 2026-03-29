// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpSummaryByBotClassBrowserFamily {const RadarGetHttpSummaryByBotClassBrowserFamily._(this.value);

factory RadarGetHttpSummaryByBotClassBrowserFamily.fromJson(String json) { return switch (json) {
  'CHROME' => chrome,
  'EDGE' => edge,
  'FIREFOX' => firefox,
  'SAFARI' => safari,
  _ => RadarGetHttpSummaryByBotClassBrowserFamily._(json),
}; }

static const RadarGetHttpSummaryByBotClassBrowserFamily chrome = RadarGetHttpSummaryByBotClassBrowserFamily._('CHROME');

static const RadarGetHttpSummaryByBotClassBrowserFamily edge = RadarGetHttpSummaryByBotClassBrowserFamily._('EDGE');

static const RadarGetHttpSummaryByBotClassBrowserFamily firefox = RadarGetHttpSummaryByBotClassBrowserFamily._('FIREFOX');

static const RadarGetHttpSummaryByBotClassBrowserFamily safari = RadarGetHttpSummaryByBotClassBrowserFamily._('SAFARI');

static const List<RadarGetHttpSummaryByBotClassBrowserFamily> values = [chrome, edge, firefox, safari];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByBotClassBrowserFamily && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByBotClassBrowserFamily($value)'; } 
 }
