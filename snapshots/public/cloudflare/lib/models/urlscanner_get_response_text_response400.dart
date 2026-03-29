// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'urlscanner_get_response_text_response400_errors.dart';import 'urlscanner_get_response_text_response400_messages.dart';final class UrlscannerGetResponseTextResponse400 {const UrlscannerGetResponseTextResponse400({required this.errors, required this.messages, required this.success, });

factory UrlscannerGetResponseTextResponse400.fromJson(Map<String, dynamic> json) { return UrlscannerGetResponseTextResponse400(
  errors: (json['errors'] as List<dynamic>).map((e) => UrlscannerGetResponseTextResponse400Errors.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => UrlscannerGetResponseTextResponse400Messages.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<UrlscannerGetResponseTextResponse400Errors> errors;

final List<UrlscannerGetResponseTextResponse400Messages> messages;

/// Whether request was successful or not
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
UrlscannerGetResponseTextResponse400 copyWith({List<UrlscannerGetResponseTextResponse400Errors>? errors, List<UrlscannerGetResponseTextResponse400Messages>? messages, bool? success, }) { return UrlscannerGetResponseTextResponse400(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetResponseTextResponse400 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success); } 
@override String toString() { return 'UrlscannerGetResponseTextResponse400(errors: $errors, messages: $messages, success: $success)'; } 
 }
