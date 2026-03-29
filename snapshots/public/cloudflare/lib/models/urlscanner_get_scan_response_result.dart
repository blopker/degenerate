// GENERATED CODE - DO NOT MODIFY BY HAND

import 'urlscanner_get_scan_response_result_scan.dart';final class UrlscannerGetScanResponseResult {const UrlscannerGetScanResponseResult({required this.scan});

factory UrlscannerGetScanResponseResult.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponseResult(
  scan: UrlscannerGetScanResponseResultScan.fromJson(json['scan'] as Map<String, dynamic>),
); }

final UrlscannerGetScanResponseResultScan scan;

Map<String, dynamic> toJson() { return {
  'scan': scan.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('scan'); } 
UrlscannerGetScanResponseResult copyWith({UrlscannerGetScanResponseResultScan? scan}) { return UrlscannerGetScanResponseResult(
  scan: scan ?? this.scan,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponseResult &&
          scan == other.scan; } 
@override int get hashCode { return scan.hashCode; } 
@override String toString() { return 'UrlscannerGetScanResponseResult(scan: $scan)'; } 
 }
