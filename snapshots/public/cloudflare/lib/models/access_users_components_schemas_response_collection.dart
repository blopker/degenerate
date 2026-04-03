// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_schemas_users.dart';import 'access_users_components_schemas_response_collection_result_info.dart';@immutable final class AccessUsersComponentsSchemasResponseCollection {const AccessUsersComponentsSchemasResponseCollection({this.resultInfo, this.result, });

factory AccessUsersComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return AccessUsersComponentsSchemasResponseCollection(
  resultInfo: json['result_info'] != null ? AccessUsersComponentsSchemasResponseCollectionResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => AccessSchemasUsers.fromJson(e as Map<String, dynamic>)).toList(),
); }

final AccessUsersComponentsSchemasResponseCollectionResultInfo? resultInfo;

final List<AccessSchemasUsers>? result;

Map<String, dynamic> toJson() { return {
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result_info', 'result'}.contains(key)); } 
AccessUsersComponentsSchemasResponseCollection copyWith({AccessUsersComponentsSchemasResponseCollectionResultInfo Function()? resultInfo, List<AccessSchemasUsers> Function()? result, }) { return AccessUsersComponentsSchemasResponseCollection(
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessUsersComponentsSchemasResponseCollection &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'AccessUsersComponentsSchemasResponseCollection(resultInfo: $resultInfo, result: $result)'; } 
 }
