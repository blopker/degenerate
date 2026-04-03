// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_response_result_scan_meta_processors.dart';@immutable final class UrlscannerGetScanResponseResultScanMeta {const UrlscannerGetScanResponseResultScanMeta({required this.processors});

factory UrlscannerGetScanResponseResultScanMeta.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponseResultScanMeta(
  processors: UrlscannerGetScanResponseResultScanMetaProcessors.fromJson(json['processors'] as Map<String, dynamic>),
); }

final UrlscannerGetScanResponseResultScanMetaProcessors processors;

Map<String, dynamic> toJson() { return {
  'processors': processors.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('processors'); } 
UrlscannerGetScanResponseResultScanMeta copyWith({UrlscannerGetScanResponseResultScanMetaProcessors? processors}) { return UrlscannerGetScanResponseResultScanMeta(
  processors: processors ?? this.processors,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponseResultScanMeta &&
          processors == other.processors; } 
@override int get hashCode { return processors.hashCode; } 
@override String toString() { return 'UrlscannerGetScanResponseResultScanMeta(processors: $processors)'; } 
 }
