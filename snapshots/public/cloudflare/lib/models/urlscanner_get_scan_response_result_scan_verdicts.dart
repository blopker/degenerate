// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_response_result_scan_verdicts_overall.dart';@immutable final class UrlscannerGetScanResponseResultScanVerdicts {const UrlscannerGetScanResponseResultScanVerdicts({required this.overall});

factory UrlscannerGetScanResponseResultScanVerdicts.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponseResultScanVerdicts(
  overall: UrlscannerGetScanResponseResultScanVerdictsOverall.fromJson(json['overall'] as Map<String, dynamic>),
); }

final UrlscannerGetScanResponseResultScanVerdictsOverall overall;

Map<String, dynamic> toJson() { return {
  'overall': overall.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('overall'); } 
UrlscannerGetScanResponseResultScanVerdicts copyWith({UrlscannerGetScanResponseResultScanVerdictsOverall? overall}) { return UrlscannerGetScanResponseResultScanVerdicts(
  overall: overall ?? this.overall,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponseResultScanVerdicts &&
          overall == other.overall; } 
@override int get hashCode { return overall.hashCode; } 
@override String toString() { return 'UrlscannerGetScanResponseResultScanVerdicts(overall: $overall)'; } 
 }
