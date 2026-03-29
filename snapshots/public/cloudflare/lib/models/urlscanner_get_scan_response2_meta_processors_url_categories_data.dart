// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_scan_response2_meta_processors_url_categories_data_content.dart';import 'urlscanner_get_scan_response2_meta_processors_url_categories_data_inherited.dart';import 'urlscanner_get_scan_response2_meta_processors_url_categories_data_risks.dart';final class UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesData {const UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesData({required this.content, required this.inherited, required this.name, required this.risks, });

factory UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesData.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesData(
  content: (json['content'] as List<dynamic>).map((e) => UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesDataContent.fromJson(e as Map<String, dynamic>)).toList(),
  inherited: UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesDataInherited.fromJson(json['inherited'] as Map<String, dynamic>),
  name: json['name'] as String,
  risks: (json['risks'] as List<dynamic>).map((e) => UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesDataRisks.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesDataContent> content;

final UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesDataInherited inherited;

final String name;

final List<UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesDataRisks> risks;

Map<String, dynamic> toJson() { return {
  'content': content.map((e) => e.toJson()).toList(),
  'inherited': inherited.toJson(),
  'name': name,
  'risks': risks.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('content') &&
      json.containsKey('inherited') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('risks'); } 
UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesData copyWith({List<UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesDataContent>? content, UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesDataInherited? inherited, String? name, List<UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesDataRisks>? risks, }) { return UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesData(
  content: content ?? this.content,
  inherited: inherited ?? this.inherited,
  name: name ?? this.name,
  risks: risks ?? this.risks,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesData &&
          listEquals(content, other.content) &&
          inherited == other.inherited &&
          name == other.name &&
          listEquals(risks, other.risks); } 
@override int get hashCode { return Object.hash(Object.hashAll(content), inherited, name, Object.hashAll(risks)); } 
@override String toString() { return 'UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesData(content: $content, inherited: $inherited, name: $name, risks: $risks)'; } 
 }
