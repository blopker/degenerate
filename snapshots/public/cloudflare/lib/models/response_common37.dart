// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'infra_messages2.dart';@immutable final class ResponseCommon37 {const ResponseCommon37({required this.errors, required this.messages, required this.success, });

factory ResponseCommon37.fromJson(Map<String, dynamic> json) { return ResponseCommon37(
  errors: (json['errors'] as List<dynamic>).map((e) => InfraMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => InfraMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<InfraMessages2> errors;

final List<InfraMessages2> messages;

/// Whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ResponseCommon37 copyWith({List<InfraMessages2>? errors, List<InfraMessages2>? messages, bool? success, }) { return ResponseCommon37(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCommon37 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success); } 
@override String toString() { return 'ResponseCommon37(errors: $errors, messages: $messages, success: $success)'; } 
 }
