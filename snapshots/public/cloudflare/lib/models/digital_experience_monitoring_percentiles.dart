// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DigitalExperienceMonitoringPercentiles {const DigitalExperienceMonitoringPercentiles({this.p50 = const Omittable.absent(), this.p90 = const Omittable.absent(), this.p95 = const Omittable.absent(), this.p99 = const Omittable.absent(), });

factory DigitalExperienceMonitoringPercentiles.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringPercentiles(
  p50: json.containsKey('p50') ? Omittable(json['p50'] != null ? (json['p50'] as num).toDouble() : null) : const Omittable.absent(),
  p90: json.containsKey('p90') ? Omittable(json['p90'] != null ? (json['p90'] as num).toDouble() : null) : const Omittable.absent(),
  p95: json.containsKey('p95') ? Omittable(json['p95'] != null ? (json['p95'] as num).toDouble() : null) : const Omittable.absent(),
  p99: json.containsKey('p99') ? Omittable(json['p99'] != null ? (json['p99'] as num).toDouble() : null) : const Omittable.absent(),
); }

/// p50 observed in the time period
final Omittable<double?> p50;

/// p90 observed in the time period
final Omittable<double?> p90;

/// p95 observed in the time period
final Omittable<double?> p95;

/// p99 observed in the time period
final Omittable<double?> p99;

Map<String, dynamic> toJson() { return {
  if (p50.isPresent) 'p50': p50.value,
  if (p90.isPresent) 'p90': p90.value,
  if (p95.isPresent) 'p95': p95.value,
  if (p99.isPresent) 'p99': p99.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'p50', 'p90', 'p95', 'p99'}.contains(key)); } 
DigitalExperienceMonitoringPercentiles copyWith({Omittable<double?>? p50, Omittable<double?>? p90, Omittable<double?>? p95, Omittable<double?>? p99, }) { return DigitalExperienceMonitoringPercentiles(
  p50: p50 ?? this.p50,
  p90: p90 ?? this.p90,
  p95: p95 ?? this.p95,
  p99: p99 ?? this.p99,
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
