// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_response2_meta_processors_asn_data.dart';final class UrlscannerGetScanResponse2MetaProcessorsAsn {const UrlscannerGetScanResponse2MetaProcessorsAsn({required this.data});

factory UrlscannerGetScanResponse2MetaProcessorsAsn.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse2MetaProcessorsAsn(
  data: (json['data'] as List<dynamic>).map((e) => UrlscannerGetScanResponse2MetaProcessorsAsnData.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<UrlscannerGetScanResponse2MetaProcessorsAsnData> data;

Map<String, dynamic> toJson() { return {
  'data': data.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data'); } 
UrlscannerGetScanResponse2MetaProcessorsAsn copyWith({List<UrlscannerGetScanResponse2MetaProcessorsAsnData>? data}) { return UrlscannerGetScanResponse2MetaProcessorsAsn(
  data: data ?? this.data,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse2MetaProcessorsAsn &&
          listEquals(data, other.data); } 
@override int get hashCode { return Object.hashAll(data).hashCode; } 
@override String toString() { return 'UrlscannerGetScanResponse2MetaProcessorsAsn(data: $data)'; } 
 }
