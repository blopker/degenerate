// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTimeseriesGroupByIpVersionBrowserFamily {const RadarGetHttpTimeseriesGroupByIpVersionBrowserFamily._(this.value);

factory RadarGetHttpTimeseriesGroupByIpVersionBrowserFamily.fromJson(String json) { return switch (json) {
  'CHROME' => chrome,
  'EDGE' => edge,
  'FIREFOX' => firefox,
  'SAFARI' => safari,
  _ => RadarGetHttpTimeseriesGroupByIpVersionBrowserFamily._(json),
}; }

static const RadarGetHttpTimeseriesGroupByIpVersionBrowserFamily chrome = RadarGetHttpTimeseriesGroupByIpVersionBrowserFamily._('CHROME');

static const RadarGetHttpTimeseriesGroupByIpVersionBrowserFamily edge = RadarGetHttpTimeseriesGroupByIpVersionBrowserFamily._('EDGE');

static const RadarGetHttpTimeseriesGroupByIpVersionBrowserFamily firefox = RadarGetHttpTimeseriesGroupByIpVersionBrowserFamily._('FIREFOX');

static const RadarGetHttpTimeseriesGroupByIpVersionBrowserFamily safari = RadarGetHttpTimeseriesGroupByIpVersionBrowserFamily._('SAFARI');

static const List<RadarGetHttpTimeseriesGroupByIpVersionBrowserFamily> values = [chrome, edge, firefox, safari];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByIpVersionBrowserFamily && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByIpVersionBrowserFamily($value)'; } 
 }
