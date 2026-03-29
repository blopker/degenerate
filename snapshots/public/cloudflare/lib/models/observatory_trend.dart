// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class ObservatoryTrend {const ObservatoryTrend({this.cls, this.fcp, this.lcp, this.performanceScore, this.si, this.tbt, this.ttfb, this.tti, });

factory ObservatoryTrend.fromJson(Map<String, dynamic> json) { return ObservatoryTrend(
  cls: (json['cls'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList(),
  fcp: (json['fcp'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList(),
  lcp: (json['lcp'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList(),
  performanceScore: (json['performanceScore'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList(),
  si: (json['si'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList(),
  tbt: (json['tbt'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList(),
  ttfb: (json['ttfb'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList(),
  tti: (json['tti'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList(),
); }

/// Cumulative Layout Shift trend.
final List<double?>? cls;

/// First Contentful Paint trend.
final List<double?>? fcp;

/// Largest Contentful Paint trend.
final List<double?>? lcp;

/// The Lighthouse score trend.
final List<double?>? performanceScore;

/// Speed Index trend.
final List<double?>? si;

/// Total Blocking Time trend.
final List<double?>? tbt;

/// Time To First Byte trend.
final List<double?>? ttfb;

/// Time To Interactive trend.
final List<double?>? tti;

Map<String, dynamic> toJson() { return {
  'cls': ?cls,
  'fcp': ?fcp,
  'lcp': ?lcp,
  'performanceScore': ?performanceScore,
  'si': ?si,
  'tbt': ?tbt,
  'ttfb': ?ttfb,
  'tti': ?tti,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cls', 'fcp', 'lcp', 'performanceScore', 'si', 'tbt', 'ttfb', 'tti'}.contains(key)); } 
ObservatoryTrend copyWith({List<double> Function()? cls, List<double> Function()? fcp, List<double> Function()? lcp, List<double> Function()? performanceScore, List<double> Function()? si, List<double> Function()? tbt, List<double> Function()? ttfb, List<double> Function()? tti, }) { return ObservatoryTrend(
  cls: cls != null ? cls() : this.cls,
  fcp: fcp != null ? fcp() : this.fcp,
  lcp: lcp != null ? lcp() : this.lcp,
  performanceScore: performanceScore != null ? performanceScore() : this.performanceScore,
  si: si != null ? si() : this.si,
  tbt: tbt != null ? tbt() : this.tbt,
  ttfb: ttfb != null ? ttfb() : this.ttfb,
  tti: tti != null ? tti() : this.tti,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ObservatoryTrend &&
          listEquals(cls, other.cls) &&
          listEquals(fcp, other.fcp) &&
          listEquals(lcp, other.lcp) &&
          listEquals(performanceScore, other.performanceScore) &&
          listEquals(si, other.si) &&
          listEquals(tbt, other.tbt) &&
          listEquals(ttfb, other.ttfb) &&
          listEquals(tti, other.tti); } 
@override int get hashCode { return Object.hash(Object.hashAll(cls ?? const []), Object.hashAll(fcp ?? const []), Object.hashAll(lcp ?? const []), Object.hashAll(performanceScore ?? const []), Object.hashAll(si ?? const []), Object.hashAll(tbt ?? const []), Object.hashAll(ttfb ?? const []), Object.hashAll(tti ?? const [])); } 
@override String toString() { return 'ObservatoryTrend(cls: $cls, fcp: $fcp, lcp: $lcp, performanceScore: $performanceScore, si: $si, tbt: $tbt, ttfb: $ttfb, tti: $tti)'; } 
 }
