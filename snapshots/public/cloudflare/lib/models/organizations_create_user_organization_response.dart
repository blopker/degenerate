// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'message3.dart';import 'organization.dart';@immutable final class OrganizationsCreateUserOrganizationResponse {const OrganizationsCreateUserOrganizationResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory OrganizationsCreateUserOrganizationResponse.fromJson(Map<String, dynamic> json) { return OrganizationsCreateUserOrganizationResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => e as Map<String, dynamic>).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => Message3.fromJson(e as Map<String, dynamic>)).toList(),
  result: Organization.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<Map<String,dynamic>> errors;

final List<Message3> messages;

final Organization result;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
OrganizationsCreateUserOrganizationResponse copyWith({List<Map<String,dynamic>>? errors, List<Message3>? messages, Organization? result, bool? success, }) { return OrganizationsCreateUserOrganizationResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrganizationsCreateUserOrganizationResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'OrganizationsCreateUserOrganizationResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
