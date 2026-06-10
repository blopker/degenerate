// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'iam_schemas_messages2.dart';import 'iam_user_group_member.dart';@immutable final class AccountUserGroupMembersUpdateResponse {const AccountUserGroupMembersUpdateResponse({required this.errors, required this.messages, required this.success, this.result, });

factory AccountUserGroupMembersUpdateResponse.fromJson(Map<String, dynamic> json) { return AccountUserGroupMembersUpdateResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => IamSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => IamSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>?)?.map((e) => IamUserGroupMember.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<IamSchemasMessages2> errors;

final List<IamSchemasMessages2> messages;

/// Whether the API call was successful.
final bool success;

final List<IamUserGroupMember>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
AccountUserGroupMembersUpdateResponse copyWith({List<IamSchemasMessages2>? errors, List<IamSchemasMessages2>? messages, bool? success, List<IamUserGroupMember> Function()? result, }) { return AccountUserGroupMembersUpdateResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountUserGroupMembersUpdateResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'AccountUserGroupMembersUpdateResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
