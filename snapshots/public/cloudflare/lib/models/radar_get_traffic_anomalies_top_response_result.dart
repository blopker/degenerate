// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_traffic_anomalies_top_response_result_traffic_anomalies.dart';@immutable final class RadarGetTrafficAnomaliesTopResponseResult {const RadarGetTrafficAnomaliesTopResponseResult({required this.trafficAnomalies});

factory RadarGetTrafficAnomaliesTopResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetTrafficAnomaliesTopResponseResult(
  trafficAnomalies: (json['trafficAnomalies'] as List<dynamic>).map((e) => RadarGetTrafficAnomaliesTopResponseResultTrafficAnomalies.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<RadarGetTrafficAnomaliesTopResponseResultTrafficAnomalies> trafficAnomalies;

Map<String, dynamic> toJson() { return {
  'trafficAnomalies': trafficAnomalies.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('trafficAnomalies'); } 
RadarGetTrafficAnomaliesTopResponseResult copyWith({List<RadarGetTrafficAnomaliesTopResponseResultTrafficAnomalies>? trafficAnomalies}) { return RadarGetTrafficAnomaliesTopResponseResult(
  trafficAnomalies: trafficAnomalies ?? this.trafficAnomalies,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetTrafficAnomaliesTopResponseResult &&
          listEquals(trafficAnomalies, other.trafficAnomalies); } 
@override int get hashCode { return Object.hashAll(trafficAnomalies).hashCode; } 
@override String toString() { return 'RadarGetTrafficAnomaliesTopResponseResult(trafficAnomalies: $trafficAnomalies)'; } 
 }
