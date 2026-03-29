// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'destination_create_response401_errors.dart';import 'destination_create_response401_messages.dart';final class DestinationCreateResponse401 {const DestinationCreateResponse401({required this.errors, required this.messages, required this.success, });

factory DestinationCreateResponse401.fromJson(Map<String, dynamic> json) { return DestinationCreateResponse401(
  errors: (json['errors'] as List<dynamic>).map((e) => DestinationCreateResponse401Errors.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DestinationCreateResponse401Messages.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<DestinationCreateResponse401Errors> errors;

final List<DestinationCreateResponse401Messages> messages;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
DestinationCreateResponse401 copyWith({List<DestinationCreateResponse401Errors>? errors, List<DestinationCreateResponse401Messages>? messages, bool? success, }) { return DestinationCreateResponse401(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DestinationCreateResponse401 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success); } 
@override String toString() { return 'DestinationCreateResponse401(errors: $errors, messages: $messages, success: $success)'; } 
 }
