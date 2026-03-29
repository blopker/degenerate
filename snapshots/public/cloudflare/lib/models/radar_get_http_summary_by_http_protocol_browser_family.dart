// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpSummaryByHttpProtocolBrowserFamily {const RadarGetHttpSummaryByHttpProtocolBrowserFamily._(this.value);

factory RadarGetHttpSummaryByHttpProtocolBrowserFamily.fromJson(String json) { return switch (json) {
  'CHROME' => chrome,
  'EDGE' => edge,
  'FIREFOX' => firefox,
  'SAFARI' => safari,
  _ => RadarGetHttpSummaryByHttpProtocolBrowserFamily._(json),
}; }

static const RadarGetHttpSummaryByHttpProtocolBrowserFamily chrome = RadarGetHttpSummaryByHttpProtocolBrowserFamily._('CHROME');

static const RadarGetHttpSummaryByHttpProtocolBrowserFamily edge = RadarGetHttpSummaryByHttpProtocolBrowserFamily._('EDGE');

static const RadarGetHttpSummaryByHttpProtocolBrowserFamily firefox = RadarGetHttpSummaryByHttpProtocolBrowserFamily._('FIREFOX');

static const RadarGetHttpSummaryByHttpProtocolBrowserFamily safari = RadarGetHttpSummaryByHttpProtocolBrowserFamily._('SAFARI');

static const List<RadarGetHttpSummaryByHttpProtocolBrowserFamily> values = [chrome, edge, firefox, safari];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByHttpProtocolBrowserFamily && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByHttpProtocolBrowserFamily($value)'; } 
 }
