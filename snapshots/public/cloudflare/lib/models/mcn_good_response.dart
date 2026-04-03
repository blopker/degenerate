// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcn_error.dart';@immutable final class McnGoodResponse {const McnGoodResponse({required this.messages, required this.success, required this.errors, });

factory McnGoodResponse.fromJson(Map<String, dynamic> json) { return McnGoodResponse(
  messages: (json['messages'] as List<dynamic>).map((e) => McnError.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  errors: (json['errors'] as List<dynamic>).map((e) => McnError.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<McnError> messages;

final bool success;

final List<McnError> errors;

Map<String, dynamic> toJson() { return {
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'errors': errors.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('errors'); } 
McnGoodResponse copyWith({List<McnError>? messages, bool? success, List<McnError>? errors, }) { return McnGoodResponse(
  messages: messages ?? this.messages,
  success: success ?? this.success,
  errors: errors ?? this.errors,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnGoodResponse &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(errors, other.errors); } 
@override int get hashCode { return Object.hash(Object.hashAll(messages), success, Object.hashAll(errors)); } 
@override String toString() { return 'McnGoodResponse(messages: $messages, success: $success, errors: $errors)'; } 
 }
