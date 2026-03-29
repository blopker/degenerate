// GENERATED CODE - DO NOT MODIFY BY HAND

final class UrlscannerGetScanResponseResultScanDomainsExampleComCategoriesRisks {const UrlscannerGetScanResponseResultScanDomainsExampleComCategoriesRisks({required this.id, required this.name, this.superCategoryId, });

factory UrlscannerGetScanResponseResultScanDomainsExampleComCategoriesRisks.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponseResultScanDomainsExampleComCategoriesRisks(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  superCategoryId: json['super_category_id'] != null ? (json['super_category_id'] as num).toInt() : null,
); }

final int id;

final String name;

final int? superCategoryId;

Map<String, dynamic> toJson() { return {
  'id': id,
  'name': name,
  'super_category_id': ?superCategoryId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('name') && json['name'] is String; } 
UrlscannerGetScanResponseResultScanDomainsExampleComCategoriesRisks copyWith({int? id, String? name, int Function()? superCategoryId, }) { return UrlscannerGetScanResponseResultScanDomainsExampleComCategoriesRisks(
  id: id ?? this.id,
  name: name ?? this.name,
  superCategoryId: superCategoryId != null ? superCategoryId() : this.superCategoryId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponseResultScanDomainsExampleComCategoriesRisks &&
          id == other.id &&
          name == other.name &&
          superCategoryId == other.superCategoryId; } 
@override int get hashCode { return Object.hash(id, name, superCategoryId); } 
@override String toString() { return 'UrlscannerGetScanResponseResultScanDomainsExampleComCategoriesRisks(id: $id, name: $name, superCategoryId: $superCategoryId)'; } 
 }
