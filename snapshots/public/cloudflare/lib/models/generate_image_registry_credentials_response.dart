// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cc_account_registry_token.dart';import 'cc_messages2.dart';final class GenerateImageRegistryCredentialsResponse {const GenerateImageRegistryCredentialsResponse({required this.errors, required this.messages, required this.success, required this.result, });

factory GenerateImageRegistryCredentialsResponse.fromJson(Map<String, dynamic> json) { return GenerateImageRegistryCredentialsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => CcMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => CcMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: CcAccountRegistryToken.fromJson(json['result'] as Map<String, dynamic>),
); }

final List<CcMessages2> errors;

final List<CcMessages2> messages;

/// Whether the API call was successful.
final bool success;

final CcAccountRegistryToken result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
GenerateImageRegistryCredentialsResponse copyWith({List<CcMessages2>? errors, List<CcMessages2>? messages, bool? success, CcAccountRegistryToken? result, }) { return GenerateImageRegistryCredentialsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GenerateImageRegistryCredentialsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'GenerateImageRegistryCredentialsResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
