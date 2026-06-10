// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcn_error.dart';import 'mcn_provider.dart';@immutable final class McnReadAccountProvidersResponse {const McnReadAccountProvidersResponse({required this.messages, required this.success, required this.errors, required this.result, });

factory McnReadAccountProvidersResponse.fromJson(Map<String, dynamic> json) { return McnReadAccountProvidersResponse(
  messages: (json['messages'] as List<dynamic>).map((e) => McnError.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  errors: (json['errors'] as List<dynamic>).map((e) => McnError.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>).map((e) => McnProvider.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<McnError> messages;

final bool success;

final List<McnError> errors;

final List<McnProvider> result;

Map<String, dynamic> toJson() { return {
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'errors': errors.map((e) => e.toJson()).toList(),
  'result': result.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('errors') &&
      json.containsKey('result'); } 
McnReadAccountProvidersResponse copyWith({List<McnError>? messages, bool? success, List<McnError>? errors, List<McnProvider>? result, }) { return McnReadAccountProvidersResponse(
  messages: messages ?? this.messages,
  success: success ?? this.success,
  errors: errors ?? this.errors,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnReadAccountProvidersResponse &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(errors, other.errors) &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(messages), success, Object.hashAll(errors), Object.hashAll(result)); } 
@override String toString() { return 'McnReadAccountProvidersResponse(messages: $messages, success: $success, errors: $errors, result: $result)'; } 
 }
