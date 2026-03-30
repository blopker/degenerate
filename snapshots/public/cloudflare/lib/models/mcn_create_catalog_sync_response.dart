// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mcn_catalog_sync.dart';final class McnCreateCatalogSyncResponse {const McnCreateCatalogSyncResponse({this.result});

factory McnCreateCatalogSyncResponse.fromJson(Map<String, dynamic> json) { return McnCreateCatalogSyncResponse(
  result: json['result'] != null ? McnCatalogSync.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final McnCatalogSync? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
McnCreateCatalogSyncResponse copyWith({McnCatalogSync Function()? result}) { return McnCreateCatalogSyncResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnCreateCatalogSyncResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'McnCreateCatalogSyncResponse(result: $result)'; } 
 }
