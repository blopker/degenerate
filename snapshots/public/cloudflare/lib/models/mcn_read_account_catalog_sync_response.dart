// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mcn_catalog_sync.dart';final class McnReadAccountCatalogSyncResponse {const McnReadAccountCatalogSyncResponse({this.result});

factory McnReadAccountCatalogSyncResponse.fromJson(Map<String, dynamic> json) { return McnReadAccountCatalogSyncResponse(
  result: json['result'] != null ? McnCatalogSync.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final McnCatalogSync? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
McnReadAccountCatalogSyncResponse copyWith({McnCatalogSync Function()? result}) { return McnReadAccountCatalogSyncResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnReadAccountCatalogSyncResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'McnReadAccountCatalogSyncResponse(result: $result)'; } 
 }
