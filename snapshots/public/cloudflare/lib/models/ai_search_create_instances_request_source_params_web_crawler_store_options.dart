// GENERATED CODE - DO NOT MODIFY BY HAND

final class AiSearchCreateInstancesRequestSourceParamsWebCrawlerStoreOptionsStorageType {const AiSearchCreateInstancesRequestSourceParamsWebCrawlerStoreOptionsStorageType._(this.value);

factory AiSearchCreateInstancesRequestSourceParamsWebCrawlerStoreOptionsStorageType.fromJson(String json) { return switch (json) {
  'r2' => r2,
  _ => AiSearchCreateInstancesRequestSourceParamsWebCrawlerStoreOptionsStorageType._(json),
}; }

static const AiSearchCreateInstancesRequestSourceParamsWebCrawlerStoreOptionsStorageType r2 = AiSearchCreateInstancesRequestSourceParamsWebCrawlerStoreOptionsStorageType._('r2');

static const List<AiSearchCreateInstancesRequestSourceParamsWebCrawlerStoreOptionsStorageType> values = [r2];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchCreateInstancesRequestSourceParamsWebCrawlerStoreOptionsStorageType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchCreateInstancesRequestSourceParamsWebCrawlerStoreOptionsStorageType($value)'; } 
 }
final class AiSearchCreateInstancesRequestSourceParamsWebCrawlerStoreOptions {const AiSearchCreateInstancesRequestSourceParamsWebCrawlerStoreOptions({this.r2Jurisdiction = 'default', required this.storageId, this.storageType = AiSearchCreateInstancesRequestSourceParamsWebCrawlerStoreOptionsStorageType.r2, });

factory AiSearchCreateInstancesRequestSourceParamsWebCrawlerStoreOptions.fromJson(Map<String, dynamic> json) { return AiSearchCreateInstancesRequestSourceParamsWebCrawlerStoreOptions(
  r2Jurisdiction: json.containsKey('r2_jurisdiction') ? json['r2_jurisdiction'] as String : 'default',
  storageId: json['storage_id'] as String,
  storageType: json.containsKey('storage_type') ? AiSearchCreateInstancesRequestSourceParamsWebCrawlerStoreOptionsStorageType.fromJson(json['storage_type'] as String) : AiSearchCreateInstancesRequestSourceParamsWebCrawlerStoreOptionsStorageType.r2,
); }

final String r2Jurisdiction;

final String storageId;

final AiSearchCreateInstancesRequestSourceParamsWebCrawlerStoreOptionsStorageType storageType;

Map<String, dynamic> toJson() { return {
  'r2_jurisdiction': r2Jurisdiction,
  'storage_id': storageId,
  'storage_type': storageType.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('storage_id') && json['storage_id'] is String; } 
AiSearchCreateInstancesRequestSourceParamsWebCrawlerStoreOptions copyWith({String Function()? r2Jurisdiction, String? storageId, AiSearchCreateInstancesRequestSourceParamsWebCrawlerStoreOptionsStorageType Function()? storageType, }) { return AiSearchCreateInstancesRequestSourceParamsWebCrawlerStoreOptions(
  r2Jurisdiction: r2Jurisdiction != null ? r2Jurisdiction() : this.r2Jurisdiction,
  storageId: storageId ?? this.storageId,
  storageType: storageType != null ? storageType() : this.storageType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchCreateInstancesRequestSourceParamsWebCrawlerStoreOptions &&
          r2Jurisdiction == other.r2Jurisdiction &&
          storageId == other.storageId &&
          storageType == other.storageType; } 
@override int get hashCode { return Object.hash(r2Jurisdiction, storageId, storageType); } 
@override String toString() { return 'AiSearchCreateInstancesRequestSourceParamsWebCrawlerStoreOptions(r2Jurisdiction: $r2Jurisdiction, storageId: $storageId, storageType: $storageType)'; } 
 }
