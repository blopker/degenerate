// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_response2_meta_processors_geoip_data.dart';@immutable final class UrlscannerGetScanResponse2MetaProcessorsGeoip {const UrlscannerGetScanResponse2MetaProcessorsGeoip({required this.data});

factory UrlscannerGetScanResponse2MetaProcessorsGeoip.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse2MetaProcessorsGeoip(
  data: (json['data'] as List<dynamic>).map((e) => UrlscannerGetScanResponse2MetaProcessorsGeoipData.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<UrlscannerGetScanResponse2MetaProcessorsGeoipData> data;

Map<String, dynamic> toJson() { return {
  'data': data.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data'); } 
UrlscannerGetScanResponse2MetaProcessorsGeoip copyWith({List<UrlscannerGetScanResponse2MetaProcessorsGeoipData>? data}) { return UrlscannerGetScanResponse2MetaProcessorsGeoip(
  data: data ?? this.data,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse2MetaProcessorsGeoip &&
          listEquals(data, other.data); } 
@override int get hashCode { return Object.hashAll(data).hashCode; } 
@override String toString() { return 'UrlscannerGetScanResponse2MetaProcessorsGeoip(data: $data)'; } 
 }
