// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'alexandria_application.dart';import 'alexandria_messages2.dart';@immutable final class AlexandriaGetApplicationResponse {const AlexandriaGetApplicationResponse({required this.errors, required this.messages, required this.success, this.result, });

factory AlexandriaGetApplicationResponse.fromJson(Map<String, dynamic> json) { return AlexandriaGetApplicationResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => AlexandriaMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => AlexandriaMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? AlexandriaApplication.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<AlexandriaMessages2> errors;

final List<AlexandriaMessages2> messages;

/// Indicates whether the API call was successful.
final bool success;

final AlexandriaApplication? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
AlexandriaGetApplicationResponse copyWith({List<AlexandriaMessages2>? errors, List<AlexandriaMessages2>? messages, bool? success, AlexandriaApplication Function()? result, }) { return AlexandriaGetApplicationResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AlexandriaGetApplicationResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'AlexandriaGetApplicationResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
