// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpSummaryOs {const RadarGetHttpSummaryOs._(this.value);

factory RadarGetHttpSummaryOs.fromJson(String json) { return switch (json) {
  'WINDOWS' => windows,
  'MACOSX' => macosx,
  'IOS' => ios,
  'ANDROID' => android,
  'CHROMEOS' => chromeos,
  'LINUX' => linux,
  'SMART_TV' => smartTv,
  _ => RadarGetHttpSummaryOs._(json),
}; }

static const RadarGetHttpSummaryOs windows = RadarGetHttpSummaryOs._('WINDOWS');

static const RadarGetHttpSummaryOs macosx = RadarGetHttpSummaryOs._('MACOSX');

static const RadarGetHttpSummaryOs ios = RadarGetHttpSummaryOs._('IOS');

static const RadarGetHttpSummaryOs android = RadarGetHttpSummaryOs._('ANDROID');

static const RadarGetHttpSummaryOs chromeos = RadarGetHttpSummaryOs._('CHROMEOS');

static const RadarGetHttpSummaryOs linux = RadarGetHttpSummaryOs._('LINUX');

static const RadarGetHttpSummaryOs smartTv = RadarGetHttpSummaryOs._('SMART_TV');

static const List<RadarGetHttpSummaryOs> values = [windows, macosx, ios, android, chromeos, linux, smartTv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryOs && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryOs($value)'; } 
 }
