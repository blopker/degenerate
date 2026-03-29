// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_bgp_ips_timeseries_response_result_meta_delay_asn_data.dart';import 'radar_get_bgp_ips_timeseries_response_result_meta_delay_country_data.dart';final class RadarGetBgpIpsTimeseriesResponseResultMetaDelay {const RadarGetBgpIpsTimeseriesResponseResultMetaDelay({required this.asnData, required this.countryData, required this.healthy, required this.nowTs, });

factory RadarGetBgpIpsTimeseriesResponseResultMetaDelay.fromJson(Map<String, dynamic> json) { return RadarGetBgpIpsTimeseriesResponseResultMetaDelay(
  asnData: RadarGetBgpIpsTimeseriesResponseResultMetaDelayAsnData.fromJson(json['asn_data'] as Map<String, dynamic>),
  countryData: RadarGetBgpIpsTimeseriesResponseResultMetaDelayCountryData.fromJson(json['country_data'] as Map<String, dynamic>),
  healthy: json['healthy'] as bool,
  nowTs: (json['nowTs'] as num).toDouble(),
); }

final RadarGetBgpIpsTimeseriesResponseResultMetaDelayAsnData asnData;

final RadarGetBgpIpsTimeseriesResponseResultMetaDelayCountryData countryData;

final bool healthy;

final double nowTs;

Map<String, dynamic> toJson() { return {
  'asn_data': asnData.toJson(),
  'country_data': countryData.toJson(),
  'healthy': healthy,
  'nowTs': nowTs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('asn_data') &&
      json.containsKey('country_data') &&
      json.containsKey('healthy') && json['healthy'] is bool &&
      json.containsKey('nowTs') && json['nowTs'] is num; } 
RadarGetBgpIpsTimeseriesResponseResultMetaDelay copyWith({RadarGetBgpIpsTimeseriesResponseResultMetaDelayAsnData? asnData, RadarGetBgpIpsTimeseriesResponseResultMetaDelayCountryData? countryData, bool? healthy, double? nowTs, }) { return RadarGetBgpIpsTimeseriesResponseResultMetaDelay(
  asnData: asnData ?? this.asnData,
  countryData: countryData ?? this.countryData,
  healthy: healthy ?? this.healthy,
  nowTs: nowTs ?? this.nowTs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBgpIpsTimeseriesResponseResultMetaDelay &&
          asnData == other.asnData &&
          countryData == other.countryData &&
          healthy == other.healthy &&
          nowTs == other.nowTs; } 
@override int get hashCode { return Object.hash(asnData, countryData, healthy, nowTs); } 
@override String toString() { return 'RadarGetBgpIpsTimeseriesResponseResultMetaDelay(asnData: $asnData, countryData: $countryData, healthy: $healthy, nowTs: $nowTs)'; } 
 }
