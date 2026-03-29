// GENERATED CODE - DO NOT MODIFY BY HAND

final class UrlscannerGetScanResponseResultScanMetaProcessorsCategoriesRisks {const UrlscannerGetScanResponseResultScanMetaProcessorsCategoriesRisks({required this.id, required this.name, required this.superCategoryId, });

factory UrlscannerGetScanResponseResultScanMetaProcessorsCategoriesRisks.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponseResultScanMetaProcessorsCategoriesRisks(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  superCategoryId: (json['super_category_id'] as num).toInt(),
); }

final int id;

final String name;

final int superCategoryId;

Map<String, dynamic> toJson() { return {
  'id': id,
  'name': name,
  'super_category_id': superCategoryId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('super_category_id') && json['super_category_id'] is num; } 
UrlscannerGetScanResponseResultScanMetaProcessorsCategoriesRisks copyWith({int? id, String? name, int? superCategoryId, }) { return UrlscannerGetScanResponseResultScanMetaProcessorsCategoriesRisks(
  id: id ?? this.id,
  name: name ?? this.name,
  superCategoryId: superCategoryId ?? this.superCategoryId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponseResultScanMetaProcessorsCategoriesRisks &&
          id == other.id &&
          name == other.name &&
          superCategoryId == other.superCategoryId; } 
@override int get hashCode { return Object.hash(id, name, superCategoryId); } 
@override String toString() { return 'UrlscannerGetScanResponseResultScanMetaProcessorsCategoriesRisks(id: $id, name: $name, superCategoryId: $superCategoryId)'; } 
 }
