// GENERATED CODE - DO NOT MODIFY BY HAND

import 'urlscanner_get_scan_response2_meta_processors.dart';final class UrlscannerGetScanResponse2Meta {const UrlscannerGetScanResponse2Meta({required this.processors});

factory UrlscannerGetScanResponse2Meta.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse2Meta(
  processors: UrlscannerGetScanResponse2MetaProcessors.fromJson(json['processors'] as Map<String, dynamic>),
); }

final UrlscannerGetScanResponse2MetaProcessors processors;

Map<String, dynamic> toJson() { return {
  'processors': processors.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('processors'); } 
UrlscannerGetScanResponse2Meta copyWith({UrlscannerGetScanResponse2MetaProcessors? processors}) { return UrlscannerGetScanResponse2Meta(
  processors: processors ?? this.processors,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse2Meta &&
          processors == other.processors; } 
@override int get hashCode { return processors.hashCode; } 
@override String toString() { return 'UrlscannerGetScanResponse2Meta(processors: $processors)'; } 
 }
