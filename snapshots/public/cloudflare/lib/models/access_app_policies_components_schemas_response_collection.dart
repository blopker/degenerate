// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_app_policies_components_schemas_response_collection_result_info.dart';import 'access_app_policy_response.dart';import 'access_messages2.dart';@immutable final class AccessAppPoliciesComponentsSchemasResponseCollection {const AccessAppPoliciesComponentsSchemasResponseCollection({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory AccessAppPoliciesComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return AccessAppPoliciesComponentsSchemasResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => AccessMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => AccessMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? AccessAppPoliciesComponentsSchemasResponseCollectionResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => AccessAppPolicyResponse.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessMessages2> errors;

final List<AccessMessages2> messages;

/// Whether the API call was successful.
final bool success;

final AccessAppPoliciesComponentsSchemasResponseCollectionResultInfo? resultInfo;

final List<AccessAppPolicyResponse>? result;

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
AccessAppPoliciesComponentsSchemasResponseCollection copyWith({List<AccessMessages2>? errors, List<AccessMessages2>? messages, bool? success, AccessAppPoliciesComponentsSchemasResponseCollectionResultInfo Function()? resultInfo, List<AccessAppPolicyResponse> Function()? result, }) { return AccessAppPoliciesComponentsSchemasResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAppPoliciesComponentsSchemasResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'AccessAppPoliciesComponentsSchemasResponseCollection(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
