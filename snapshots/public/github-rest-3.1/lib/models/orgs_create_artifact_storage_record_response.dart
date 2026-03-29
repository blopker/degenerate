// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'orgs_create_artifact_storage_record_response_storage_records.dart';final class OrgsCreateArtifactStorageRecordResponse {const OrgsCreateArtifactStorageRecordResponse({this.totalCount, this.storageRecords, });

factory OrgsCreateArtifactStorageRecordResponse.fromJson(Map<String, dynamic> json) { return OrgsCreateArtifactStorageRecordResponse(
  totalCount: json['total_count'] != null ? (json['total_count'] as num).toInt() : null,
  storageRecords: (json['storage_records'] as List<dynamic>?)?.map((e) => OrgsCreateArtifactStorageRecordResponseStorageRecords.fromJson(e as Map<String, dynamic>)).toList(),
); }

final int? totalCount;

final List<OrgsCreateArtifactStorageRecordResponseStorageRecords>? storageRecords;

Map<String, dynamic> toJson() { return {
  'total_count': ?totalCount,
  if (storageRecords != null) 'storage_records': storageRecords?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'total_count', 'storage_records'}.contains(key)); } 
OrgsCreateArtifactStorageRecordResponse copyWith({int Function()? totalCount, List<OrgsCreateArtifactStorageRecordResponseStorageRecords> Function()? storageRecords, }) { return OrgsCreateArtifactStorageRecordResponse(
  totalCount: totalCount != null ? totalCount() : this.totalCount,
  storageRecords: storageRecords != null ? storageRecords() : this.storageRecords,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrgsCreateArtifactStorageRecordResponse &&
          totalCount == other.totalCount &&
          listEquals(storageRecords, other.storageRecords); } 
@override int get hashCode { return Object.hash(totalCount, Object.hashAll(storageRecords ?? const [])); } 
@override String toString() { return 'OrgsCreateArtifactStorageRecordResponse(totalCount: $totalCount, storageRecords: $storageRecords)'; } 
 }
