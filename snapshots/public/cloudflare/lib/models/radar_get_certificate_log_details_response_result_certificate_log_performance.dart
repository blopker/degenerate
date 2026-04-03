// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_certificate_log_details_response_result_certificate_log_performance_endpoints.dart';/// Log performance metrics, including averages and per-endpoint details.
@immutable final class RadarGetCertificateLogDetailsResponseResultCertificateLogPerformance {const RadarGetCertificateLogDetailsResponseResultCertificateLogPerformance({required this.endpoints, required this.responseTime, required this.uptime, });

factory RadarGetCertificateLogDetailsResponseResultCertificateLogPerformance.fromJson(Map<String, dynamic> json) { return RadarGetCertificateLogDetailsResponseResultCertificateLogPerformance(
  endpoints: (json['endpoints'] as List<dynamic>).map((e) => RadarGetCertificateLogDetailsResponseResultCertificateLogPerformanceEndpoints.fromJson(e as Map<String, dynamic>)).toList(),
  responseTime: (json['responseTime'] as num).toDouble(),
  uptime: (json['uptime'] as num).toDouble(),
); }

final List<RadarGetCertificateLogDetailsResponseResultCertificateLogPerformanceEndpoints> endpoints;

final double responseTime;

final double uptime;

Map<String, dynamic> toJson() { return {
  'endpoints': endpoints.map((e) => e.toJson()).toList(),
  'responseTime': responseTime,
  'uptime': uptime,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('endpoints') &&
      json.containsKey('responseTime') && json['responseTime'] is num &&
      json.containsKey('uptime') && json['uptime'] is num; } 
RadarGetCertificateLogDetailsResponseResultCertificateLogPerformance copyWith({List<RadarGetCertificateLogDetailsResponseResultCertificateLogPerformanceEndpoints>? endpoints, double? responseTime, double? uptime, }) { return RadarGetCertificateLogDetailsResponseResultCertificateLogPerformance(
  endpoints: endpoints ?? this.endpoints,
  responseTime: responseTime ?? this.responseTime,
  uptime: uptime ?? this.uptime,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCertificateLogDetailsResponseResultCertificateLogPerformance &&
          listEquals(endpoints, other.endpoints) &&
          responseTime == other.responseTime &&
          uptime == other.uptime; } 
@override int get hashCode { return Object.hash(Object.hashAll(endpoints), responseTime, uptime); } 
@override String toString() { return 'RadarGetCertificateLogDetailsResponseResultCertificateLogPerformance(endpoints: $endpoints, responseTime: $responseTime, uptime: $uptime)'; } 
 }
