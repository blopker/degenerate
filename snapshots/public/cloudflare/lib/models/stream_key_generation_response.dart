// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'stream_keys.dart';import 'stream_messages2.dart';final class StreamKeyGenerationResponse {const StreamKeyGenerationResponse({required this.errors, required this.messages, required this.success, this.result, });

factory StreamKeyGenerationResponse.fromJson(Map<String, dynamic> json) { return StreamKeyGenerationResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => StreamMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => StreamMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? StreamKeys.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<StreamMessages2> errors;

final List<StreamMessages2> messages;

/// Whether the API call was successful.
final bool success;

final StreamKeys? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
StreamKeyGenerationResponse copyWith({List<StreamMessages2>? errors, List<StreamMessages2>? messages, bool? success, StreamKeys Function()? result, }) { return StreamKeyGenerationResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamKeyGenerationResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'StreamKeyGenerationResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
