// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DigitalExperienceMonitoringPercentiles {const DigitalExperienceMonitoringPercentiles({this.p50, this.p90, this.p95, this.p99, });

factory DigitalExperienceMonitoringPercentiles.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringPercentiles(
  p50: json['p50'] != null ? (json['p50'] as num).toDouble() : null,
  p90: json['p90'] != null ? (json['p90'] as num).toDouble() : null,
  p95: json['p95'] != null ? (json['p95'] as num).toDouble() : null,
  p99: json['p99'] != null ? (json['p99'] as num).toDouble() : null,
); }

/// p50 observed in the time period
final double? p50;

/// p90 observed in the time period
final double? p90;

/// p95 observed in the time period
final double? p95;

/// p99 observed in the time period
final double? p99;

Map<String, dynamic> toJson() { return {
  'p50': ?p50,
  'p90': ?p90,
  'p95': ?p95,
  'p99': ?p99,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'p50', 'p90', 'p95', 'p99'}.contains(key)); } 
DigitalExperienceMonitoringPercentiles copyWith({double? Function()? p50, double? Function()? p90, double? Function()? p95, double? Function()? p99, }) { return DigitalExperienceMonitoringPercentiles(
  p50: p50 != null ? p50() : this.p50,
  p90: p90 != null ? p90() : this.p90,
  p95: p95 != null ? p95() : this.p95,
  p99: p99 != null ? p99() : this.p99,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringPercentiles &&
          p50 == other.p50 &&
          p90 == other.p90 &&
          p95 == other.p95 &&
          p99 == other.p99; } 
@override int get hashCode { return Object.hash(p50, p90, p95, p99); } 
@override String toString() { return 'DigitalExperienceMonitoringPercentiles(p50: $p50, p90: $p90, p95: $p95, p99: $p99)'; } 
 }
