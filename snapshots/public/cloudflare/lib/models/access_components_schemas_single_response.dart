// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_identity_provider.dart';import 'access_identity_providers.dart';import 'access_messages2.dart';@immutable final class AccessComponentsSchemasSingleResponse {const AccessComponentsSchemasSingleResponse({required this.errors, required this.messages, required this.success, this.result, });

factory AccessComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return AccessComponentsSchemasSingleResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => AccessMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => AccessMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? OneOf9.parse(json['result'], fromA: (v) => AccessIdentityProvider.fromJson(v as Map<String, dynamic>), fromB: (v) => AccessIdentityProvider.fromJson(v as Map<String, dynamic>), fromC: (v) => AccessIdentityProvider.fromJson(v as Map<String, dynamic>), fromD: (v) => AccessIdentityProvider.fromJson(v as Map<String, dynamic>), fromE: (v) => AccessIdentityProvider.fromJson(v as Map<String, dynamic>), fromF: (v) => AccessIdentityProvider.fromJson(v as Map<String, dynamic>), fromG: (v) => AccessIdentityProvider.fromJson(v as Map<String, dynamic>), fromH: (v) => AccessIdentityProvider.fromJson(v as Map<String, dynamic>), fromI: (v) => AccessIdentityProvider.fromJson(v as Map<String, dynamic>),) : null,
); }

final List<AccessMessages2> errors;

final List<AccessMessages2> messages;

/// Whether the API call was successful.
final bool success;

final AccessIdentityProviders? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
AccessComponentsSchemasSingleResponse copyWith({List<AccessMessages2>? errors, List<AccessMessages2>? messages, bool? success, AccessIdentityProviders Function()? result, }) { return AccessComponentsSchemasSingleResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessComponentsSchemasSingleResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'AccessComponentsSchemasSingleResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
