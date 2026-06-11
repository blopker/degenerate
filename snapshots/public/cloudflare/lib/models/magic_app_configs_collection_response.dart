// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account_app.dart';import 'magic_app_config.dart';import 'magic_messages2.dart';import 'managed_app.dart';@immutable final class MagicAppConfigsCollectionResponse {const MagicAppConfigsCollectionResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory MagicAppConfigsCollectionResponse.fromJson(Map<String, dynamic> json) { return MagicAppConfigsCollectionResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => MagicMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => MagicMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>).map((e) => OneOf2.parse(e, fromA: (v) => AccountApp.fromJson(v as Map<String, dynamic>), fromB: (v) => ManagedApp.fromJson(v as Map<String, dynamic>),)).toList(),
  success: json['success'] as bool,
); }

final List<MagicMessages2> errors;

final List<MagicMessages2> messages;

final List<MagicAppConfig> result;

/// Whether the API call was successful
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
MagicAppConfigsCollectionResponse copyWith({List<MagicMessages2>? errors, List<MagicMessages2>? messages, List<MagicAppConfig>? result, bool? success, }) { return MagicAppConfigsCollectionResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicAppConfigsCollectionResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          listEquals(result, other.result) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), Object.hashAll(result), success); } 
@override String toString() { return 'MagicAppConfigsCollectionResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
