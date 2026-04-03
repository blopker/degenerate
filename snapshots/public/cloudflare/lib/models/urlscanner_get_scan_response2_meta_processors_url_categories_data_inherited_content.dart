// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesDataInheritedContent {const UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesDataInheritedContent({required this.id, required this.name, required this.superCategoryId, });

factory UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesDataInheritedContent.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesDataInheritedContent(
  id: (json['id'] as num).toDouble(),
  name: json['name'] as String,
  superCategoryId: (json['super_category_id'] as num).toDouble(),
); }

final double id;

final String name;

final double superCategoryId;

Map<String, dynamic> toJson() { return {
  'id': id,
  'name': name,
  'super_category_id': superCategoryId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('super_category_id') && json['super_category_id'] is num; } 
UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesDataInheritedContent copyWith({double? id, String? name, double? superCategoryId, }) { return UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesDataInheritedContent(
  id: id ?? this.id,
  name: name ?? this.name,
  superCategoryId: superCategoryId ?? this.superCategoryId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesDataInheritedContent &&
          id == other.id &&
          name == other.name &&
          superCategoryId == other.superCategoryId; } 
@override int get hashCode { return Object.hash(id, name, superCategoryId); } 
@override String toString() { return 'UrlscannerGetScanResponse2MetaProcessorsUrlCategoriesDataInheritedContent(id: $id, name: $name, superCategoryId: $superCategoryId)'; } 
 }
