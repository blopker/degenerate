// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_messages2.dart';import 'shield_old_response_user_schemas_hosts.dart';import 'shield_schema_validation_retrieve_user_schema_hosts_response_result_info.dart';@immutable final class ShieldSchemaValidationRetrieveUserSchemaHostsResponse {const ShieldSchemaValidationRetrieveUserSchemaHostsResponse({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory ShieldSchemaValidationRetrieveUserSchemaHostsResponse.fromJson(Map<String, dynamic> json) { return ShieldSchemaValidationRetrieveUserSchemaHostsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ShieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ShieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? ShieldSchemaValidationRetrieveUserSchemaHostsResponseResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => ShieldOldResponseUserSchemasHosts.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<ShieldMessages2> errors;

final List<ShieldMessages2> messages;

/// Whether the API call was successful.
final bool success;

final ShieldSchemaValidationRetrieveUserSchemaHostsResponseResultInfo? resultInfo;

final List<ShieldOldResponseUserSchemasHosts>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ShieldSchemaValidationRetrieveUserSchemaHostsResponse copyWith({List<ShieldMessages2>? errors, List<ShieldMessages2>? messages, bool? success, ShieldSchemaValidationRetrieveUserSchemaHostsResponseResultInfo Function()? resultInfo, List<ShieldOldResponseUserSchemasHosts> Function()? result, }) { return ShieldSchemaValidationRetrieveUserSchemaHostsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldSchemaValidationRetrieveUserSchemaHostsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'ShieldSchemaValidationRetrieveUserSchemaHostsResponse(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
