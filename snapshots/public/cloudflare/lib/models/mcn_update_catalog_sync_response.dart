// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mcn_catalog_sync.dart';final class McnUpdateCatalogSyncResponse {const McnUpdateCatalogSyncResponse({this.result});

factory McnUpdateCatalogSyncResponse.fromJson(Map<String, dynamic> json) { return McnUpdateCatalogSyncResponse(
  result: json['result'] != null ? McnCatalogSync.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final McnCatalogSync? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
McnUpdateCatalogSyncResponse copyWith({McnCatalogSync Function()? result}) { return McnUpdateCatalogSyncResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnUpdateCatalogSyncResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'McnUpdateCatalogSyncResponse(result: $result)'; } 
 }
