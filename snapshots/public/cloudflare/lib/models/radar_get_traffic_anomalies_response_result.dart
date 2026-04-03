// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_traffic_anomalies_response_result_traffic_anomalies.dart';@immutable final class RadarGetTrafficAnomaliesResponseResult {const RadarGetTrafficAnomaliesResponseResult({required this.trafficAnomalies});

factory RadarGetTrafficAnomaliesResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetTrafficAnomaliesResponseResult(
  trafficAnomalies: (json['trafficAnomalies'] as List<dynamic>).map((e) => RadarGetTrafficAnomaliesResponseResultTrafficAnomalies.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<RadarGetTrafficAnomaliesResponseResultTrafficAnomalies> trafficAnomalies;

Map<String, dynamic> toJson() { return {
  'trafficAnomalies': trafficAnomalies.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('trafficAnomalies'); } 
RadarGetTrafficAnomaliesResponseResult copyWith({List<RadarGetTrafficAnomaliesResponseResultTrafficAnomalies>? trafficAnomalies}) { return RadarGetTrafficAnomaliesResponseResult(
  trafficAnomalies: trafficAnomalies ?? this.trafficAnomalies,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetTrafficAnomaliesResponseResult &&
          listEquals(trafficAnomalies, other.trafficAnomalies); } 
@override int get hashCode { return Object.hashAll(trafficAnomalies).hashCode; } 
@override String toString() { return 'RadarGetTrafficAnomaliesResponseResult(trafficAnomalies: $trafficAnomalies)'; } 
 }
