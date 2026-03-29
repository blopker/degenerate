// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_bgp_ips_timeseries_response_result_meta_delay_country_data_latest.dart';final class RadarGetBgpIpsTimeseriesResponseResultMetaDelayCountryData {const RadarGetBgpIpsTimeseriesResponseResultMetaDelayCountryData({required this.delaySecs, required this.delayStr, required this.healthy, required this.latest, });

factory RadarGetBgpIpsTimeseriesResponseResultMetaDelayCountryData.fromJson(Map<String, dynamic> json) { return RadarGetBgpIpsTimeseriesResponseResultMetaDelayCountryData(
  delaySecs: (json['delaySecs'] as num).toDouble(),
  delayStr: json['delayStr'] as String,
  healthy: json['healthy'] as bool,
  latest: RadarGetBgpIpsTimeseriesResponseResultMetaDelayCountryDataLatest.fromJson(json['latest'] as Map<String, dynamic>),
); }

final double delaySecs;

final String delayStr;

final bool healthy;

final RadarGetBgpIpsTimeseriesResponseResultMetaDelayCountryDataLatest latest;

Map<String, dynamic> toJson() { return {
  'delaySecs': delaySecs,
  'delayStr': delayStr,
  'healthy': healthy,
  'latest': latest.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('delaySecs') && json['delaySecs'] is num &&
      json.containsKey('delayStr') && json['delayStr'] is String &&
      json.containsKey('healthy') && json['healthy'] is bool &&
      json.containsKey('latest'); } 
RadarGetBgpIpsTimeseriesResponseResultMetaDelayCountryData copyWith({double? delaySecs, String? delayStr, bool? healthy, RadarGetBgpIpsTimeseriesResponseResultMetaDelayCountryDataLatest? latest, }) { return RadarGetBgpIpsTimeseriesResponseResultMetaDelayCountryData(
  delaySecs: delaySecs ?? this.delaySecs,
  delayStr: delayStr ?? this.delayStr,
  healthy: healthy ?? this.healthy,
  latest: latest ?? this.latest,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBgpIpsTimeseriesResponseResultMetaDelayCountryData &&
          delaySecs == other.delaySecs &&
          delayStr == other.delayStr &&
          healthy == other.healthy &&
          latest == other.latest; } 
@override int get hashCode { return Object.hash(delaySecs, delayStr, healthy, latest); } 
@override String toString() { return 'RadarGetBgpIpsTimeseriesResponseResultMetaDelayCountryData(delaySecs: $delaySecs, delayStr: $delayStr, healthy: $healthy, latest: $latest)'; } 
 }
