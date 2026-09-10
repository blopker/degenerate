// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchListInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType {const AiSearchListInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType._(this.value);

factory AiSearchListInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType.fromJson(String json) { return switch (json) {
  'r2' => r2,
  _ => AiSearchListInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType._(json),
}; }

static const AiSearchListInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType r2 = AiSearchListInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType._('r2');

static const List<AiSearchListInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType> values = [r2];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchListInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchListInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType($value)'; } 
 }
@immutable final class AiSearchListInstancesResponseResultSourceParamsWebCrawlerStoreOptions {const AiSearchListInstancesResponseResultSourceParamsWebCrawlerStoreOptions({required this.storageId, this.r2Jurisdiction, this.storageType, });

factory AiSearchListInstancesResponseResultSourceParamsWebCrawlerStoreOptions.fromJson(Map<String, dynamic> json) { return AiSearchListInstancesResponseResultSourceParamsWebCrawlerStoreOptions(
  r2Jurisdiction: json['r2_jurisdiction'] as String?,
  storageId: json['storage_id'] as String,
  storageType: json['storage_type'] != null ? AiSearchListInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType.fromJson(json['storage_type'] as String) : null,
); }

final String? r2Jurisdiction;

final String storageId;

final AiSearchListInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType? storageType;

/// The value with the schema default applied when absent.
String get r2JurisdictionOrDefault { return r2Jurisdiction ?? 'default'; } 
/// The value with the schema default applied when absent.
AiSearchListInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType get storageTypeOrDefault { return storageType ?? AiSearchListInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType.fromJson('r2'); } 
Map<String, dynamic> toJson() { return {
  'r2_jurisdiction': ?r2Jurisdiction,
  'storage_id': storageId,
  if (storageType != null) 'storage_type': storageType?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('storage_id') && json['storage_id'] is String; } 
AiSearchListInstancesResponseResultSourceParamsWebCrawlerStoreOptions copyWith({String? Function()? r2Jurisdiction, String? storageId, AiSearchListInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType? Function()? storageType, }) { return AiSearchListInstancesResponseResultSourceParamsWebCrawlerStoreOptions(
  r2Jurisdiction: r2Jurisdiction != null ? r2Jurisdiction() : this.r2Jurisdiction,
  storageId: storageId ?? this.storageId,
  storageType: storageType != null ? storageType() : this.storageType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchListInstancesResponseResultSourceParamsWebCrawlerStoreOptions &&
          r2Jurisdiction == other.r2Jurisdiction &&
          storageId == other.storageId &&
          storageType == other.storageType; } 
@override int get hashCode { return Object.hash(r2Jurisdiction, storageId, storageType); } 
@override String toString() { return 'AiSearchListInstancesResponseResultSourceParamsWebCrawlerStoreOptions(r2Jurisdiction: $r2Jurisdiction, storageId: $storageId, storageType: $storageType)'; } 
 }
