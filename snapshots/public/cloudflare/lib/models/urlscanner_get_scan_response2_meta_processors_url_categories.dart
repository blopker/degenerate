// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_response2_meta_processors_url_categories_data.dart';final class UrlscannerGetScanResponse2MetaProcessorsUrlCategories {const UrlscannerGetScanResponse2MetaProcessorsUrlCategories({required this.data});

factory UrlscannerGetScanResponse2MetaProcessorsUrlCategories.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse2MetaProcessorsUrlCategories(
  data: (json['data'] as List<dynamic>).map((e) => UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesData.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesData> data;

Map<String, dynamic> toJson() { return {
  'data': data.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data'); } 
UrlscannerGetScanResponse2MetaProcessorsUrlCategories copyWith({List<UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesData>? data}) { return UrlscannerGetScanResponse2MetaProcessorsUrlCategories(
  data: data ?? this.data,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse2MetaProcessorsUrlCategories &&
          listEquals(data, other.data); } 
@override int get hashCode { return Object.hashAll(data).hashCode; } 
@override String toString() { return 'UrlscannerGetScanResponse2MetaProcessorsUrlCategories(data: $data)'; } 
 }
