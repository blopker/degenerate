// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_har_response_result_har.dart';@immutable final class UrlscannerGetScanHarResponseResult {const UrlscannerGetScanHarResponseResult({required this.har});

factory UrlscannerGetScanHarResponseResult.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanHarResponseResult(
  har: UrlscannerGetScanHarResponseResultHar.fromJson(json['har'] as Map<String, dynamic>),
); }

final UrlscannerGetScanHarResponseResultHar har;

Map<String, dynamic> toJson() { return {
  'har': har.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('har'); } 
UrlscannerGetScanHarResponseResult copyWith({UrlscannerGetScanHarResponseResultHar? har}) { return UrlscannerGetScanHarResponseResult(
  har: har ?? this.har,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanHarResponseResult &&
          har == other.har; } 
@override int get hashCode { return har.hashCode; } 
@override String toString() { return 'UrlscannerGetScanHarResponseResult(har: $har)'; } 
 }
