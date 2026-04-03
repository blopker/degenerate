// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The EPSS scores as calculated by the [Exploit Prediction Scoring System](https://www.first.org/epss).
@immutable final class SecurityAdvisoryEpss {const SecurityAdvisoryEpss({this.percentage, this.percentile, });

factory SecurityAdvisoryEpss.fromJson(Map<String, dynamic> json) { return SecurityAdvisoryEpss(
  percentage: json['percentage'] != null ? (json['percentage'] as num).toDouble() : null,
  percentile: json['percentile'] != null ? (json['percentile'] as num).toDouble() : null,
); }

final double? percentage;

final double? percentile;

Map<String, dynamic> toJson() { return {
  'percentage': ?percentage,
  'percentile': ?percentile,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'percentage', 'percentile'}.contains(key)); } 
SecurityAdvisoryEpss copyWith({double Function()? percentage, double Function()? percentile, }) { return SecurityAdvisoryEpss(
  percentage: percentage != null ? percentage() : this.percentage,
  percentile: percentile != null ? percentile() : this.percentile,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecurityAdvisoryEpss &&
          percentage == other.percentage &&
          percentile == other.percentile; } 
@override int get hashCode { return Object.hash(percentage, percentile); } 
@override String toString() { return 'SecurityAdvisoryEpss(percentage: $percentage, percentile: $percentile)'; } 
 }
