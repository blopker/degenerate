// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_har_response_result_har_log.dart';@immutable final class UrlscannerGetScanHarResponseResultHar {const UrlscannerGetScanHarResponseResultHar({required this.log});

factory UrlscannerGetScanHarResponseResultHar.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanHarResponseResultHar(
  log: UrlscannerGetScanHarResponseResultHarLog.fromJson(json['log'] as Map<String, dynamic>),
); }

final UrlscannerGetScanHarResponseResultHarLog log;

Map<String, dynamic> toJson() { return {
  'log': log.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('log'); } 
UrlscannerGetScanHarResponseResultHar copyWith({UrlscannerGetScanHarResponseResultHarLog? log}) { return UrlscannerGetScanHarResponseResultHar(
  log: log ?? this.log,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanHarResponseResultHar &&
          log == other.log; } 
@override int get hashCode { return log.hashCode; } 
@override String toString() { return 'UrlscannerGetScanHarResponseResultHar(log: $log)'; } 
 }
