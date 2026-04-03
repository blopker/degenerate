// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_messages2.dart';import 'shield_public_schema.dart';@immutable final class ShieldPublicSchemaSuccessResult {const ShieldPublicSchemaSuccessResult({required this.errors, required this.messages, required this.success, required this.result, });

factory ShieldPublicSchemaSuccessResult.fromJson(Map<String, dynamic> json) { return ShieldPublicSchemaSuccessResult(
  errors: (json['errors'] as List<dynamic>).map((e) => ShieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ShieldMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: ShieldPublicSchema.fromJson(json['result'] as Map<String, dynamic>),
); }

final List<ShieldMessages2> errors;

final List<ShieldMessages2> messages;

/// Whether the API call was successful.
final bool success;

final ShieldPublicSchema result;

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
ShieldPublicSchemaSuccessResult copyWith({List<ShieldMessages2>? errors, List<ShieldMessages2>? messages, bool? success, ShieldPublicSchema? result, }) { return ShieldPublicSchemaSuccessResult(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldPublicSchemaSuccessResult &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'ShieldPublicSchemaSuccessResult(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
