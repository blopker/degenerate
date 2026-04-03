// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'spectrum_analytics_identifier.dart';@immutable final class SpectrumAnalyticsQueryResponseAggregateResult {const SpectrumAnalyticsQueryResponseAggregateResult({required this.appId, required this.bytesEgress, required this.bytesIngress, required this.connections, required this.durationAvg, });

factory SpectrumAnalyticsQueryResponseAggregateResult.fromJson(Map<String, dynamic> json) { return SpectrumAnalyticsQueryResponseAggregateResult(
  appId: SpectrumAnalyticsIdentifier.fromJson(json['appID'] as String),
  bytesEgress: (json['bytesEgress'] as num).toDouble(),
  bytesIngress: (json['bytesIngress'] as num).toDouble(),
  connections: (json['connections'] as num).toDouble(),
  durationAvg: (json['durationAvg'] as num).toDouble(),
); }

/// Identifier.
final SpectrumAnalyticsIdentifier appId;

/// Number of bytes sent
final double bytesEgress;

/// Number of bytes received
final double bytesIngress;

/// Number of connections
final double connections;

/// Average duration of connections
final double durationAvg;

Map<String, dynamic> toJson() { return {
  'appID': appId.toJson(),
  'bytesEgress': bytesEgress,
  'bytesIngress': bytesIngress,
  'connections': connections,
  'durationAvg': durationAvg,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('appID') &&
      json.containsKey('bytesEgress') && json['bytesEgress'] is num &&
      json.containsKey('bytesIngress') && json['bytesIngress'] is num &&
      json.containsKey('connections') && json['connections'] is num &&
      json.containsKey('durationAvg') && json['durationAvg'] is num; } 
SpectrumAnalyticsQueryResponseAggregateResult copyWith({SpectrumAnalyticsIdentifier? appId, double? bytesEgress, double? bytesIngress, double? connections, double? durationAvg, }) { return SpectrumAnalyticsQueryResponseAggregateResult(
  appId: appId ?? this.appId,
  bytesEgress: bytesEgress ?? this.bytesEgress,
  bytesIngress: bytesIngress ?? this.bytesIngress,
  connections: connections ?? this.connections,
  durationAvg: durationAvg ?? this.durationAvg,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SpectrumAnalyticsQueryResponseAggregateResult &&
          appId == other.appId &&
          bytesEgress == other.bytesEgress &&
          bytesIngress == other.bytesIngress &&
          connections == other.connections &&
          durationAvg == other.durationAvg; } 
@override int get hashCode { return Object.hash(appId, bytesEgress, bytesIngress, connections, durationAvg); } 
@override String toString() { return 'SpectrumAnalyticsQueryResponseAggregateResult(appId: $appId, bytesEgress: $bytesEgress, bytesIngress: $bytesIngress, connections: $connections, durationAvg: $durationAvg)'; } 
 }
