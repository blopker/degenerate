// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_messages2.dart';import 'magic_schemas_tunnels_collection_response_result.dart';@immutable final class MagicSchemasTunnelsCollectionResponse {const MagicSchemasTunnelsCollectionResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory MagicSchemasTunnelsCollectionResponse.fromJson(Map<String, dynamic> json) { return MagicSchemasTunnelsCollectionResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => MagicMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => MagicMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: MagicSchemasTunnelsCollectionResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<MagicMessages2> errors;

final List<MagicMessages2> messages;

final MagicSchemasTunnelsCollectionResponseResult result;

/// Whether the API call was successful
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
MagicSchemasTunnelsCollectionResponse copyWith({List<MagicMessages2>? errors, List<MagicMessages2>? messages, MagicSchemasTunnelsCollectionResponseResult? result, bool? success, }) { return MagicSchemasTunnelsCollectionResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicSchemasTunnelsCollectionResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'MagicSchemasTunnelsCollectionResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
