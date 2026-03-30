// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_old_response_user_schemas_hosts.dart';final class ShieldSchemaValidationRetrieveUserSchemaHostsResponse {const ShieldSchemaValidationRetrieveUserSchemaHostsResponse({this.result});

factory ShieldSchemaValidationRetrieveUserSchemaHostsResponse.fromJson(Map<String, dynamic> json) { return ShieldSchemaValidationRetrieveUserSchemaHostsResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => ShieldOldResponseUserSchemasHosts.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ShieldOldResponseUserSchemasHosts>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ShieldSchemaValidationRetrieveUserSchemaHostsResponse copyWith({List<ShieldOldResponseUserSchemasHosts> Function()? result}) { return ShieldSchemaValidationRetrieveUserSchemaHostsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldSchemaValidationRetrieveUserSchemaHostsResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'ShieldSchemaValidationRetrieveUserSchemaHostsResponse(result: $result)'; } 
 }
