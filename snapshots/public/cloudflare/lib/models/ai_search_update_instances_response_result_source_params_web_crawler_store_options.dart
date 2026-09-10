// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType {const AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType._(this.value);

factory AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType.fromJson(String json) { return switch (json) {
  'r2' => r2,
  _ => AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType._(json),
}; }

static const AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType r2 = AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType._('r2');

static const List<AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType> values = [r2];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType($value)'; } 
 }
@immutable final class AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerStoreOptions {const AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerStoreOptions({required this.storageId, this.r2Jurisdiction, this.storageType, });

factory AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerStoreOptions.fromJson(Map<String, dynamic> json) { return AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerStoreOptions(
  r2Jurisdiction: json['r2_jurisdiction'] as String?,
  storageId: json['storage_id'] as String,
  storageType: json['storage_type'] != null ? AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType.fromJson(json['storage_type'] as String) : null,
); }

final String? r2Jurisdiction;

final String storageId;

final AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType? storageType;

/// The value with the schema default applied when absent.
String get r2JurisdictionOrDefault { return r2Jurisdiction ?? 'default'; } 
/// The value with the schema default applied when absent.
AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType get storageTypeOrDefault { return storageType ?? AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType.fromJson('r2'); } 
Map<String, dynamic> toJson() { return {
  'r2_jurisdiction': ?r2Jurisdiction,
  'storage_id': storageId,
  if (storageType != null) 'storage_type': storageType?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('storage_id') && json['storage_id'] is String; } 
AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerStoreOptions copyWith({String? Function()? r2Jurisdiction, String? storageId, AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerStoreOptionsStorageType? Function()? storageType, }) { return AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerStoreOptions(
  r2Jurisdiction: r2Jurisdiction != null ? r2Jurisdiction() : this.r2Jurisdiction,
  storageId: storageId ?? this.storageId,
  storageType: storageType != null ? storageType() : this.storageType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerStoreOptions &&
          r2Jurisdiction == other.r2Jurisdiction &&
          storageId == other.storageId &&
          storageType == other.storageType; } 
@override int get hashCode { return Object.hash(r2Jurisdiction, storageId, storageType); } 
@override String toString() { return 'AiSearchUpdateInstancesResponseResultSourceParamsWebCrawlerStoreOptions(r2Jurisdiction: $r2Jurisdiction, storageId: $storageId, storageType: $storageType)'; } 
 }
