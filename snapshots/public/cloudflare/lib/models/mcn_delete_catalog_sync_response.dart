// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcn_deleted_catalog_sync.dart';@immutable final class McnDeleteCatalogSyncResponse {const McnDeleteCatalogSyncResponse({this.result});

factory McnDeleteCatalogSyncResponse.fromJson(Map<String, dynamic> json) { return McnDeleteCatalogSyncResponse(
  result: json['result'] != null ? McnDeletedCatalogSync.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final McnDeletedCatalogSync? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
McnDeleteCatalogSyncResponse copyWith({McnDeletedCatalogSync Function()? result}) { return McnDeleteCatalogSyncResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnDeleteCatalogSyncResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'McnDeleteCatalogSyncResponse(result: $result)'; } 
 }
