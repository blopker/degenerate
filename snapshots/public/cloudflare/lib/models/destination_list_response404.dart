// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'destination_list_response404_errors.dart';import 'destination_list_response404_messages.dart';@immutable final class DestinationListResponse404 {const DestinationListResponse404({required this.errors, required this.messages, required this.success, });

factory DestinationListResponse404.fromJson(Map<String, dynamic> json) { return DestinationListResponse404(
  errors: (json['errors'] as List<dynamic>).map((e) => DestinationListResponse404Errors.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DestinationListResponse404Messages.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
); }

final List<DestinationListResponse404Errors> errors;

final List<DestinationListResponse404Messages> messages;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
DestinationListResponse404 copyWith({List<DestinationListResponse404Errors>? errors, List<DestinationListResponse404Messages>? messages, bool? success, }) { return DestinationListResponse404(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DestinationListResponse404 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success); } 
@override String toString() { return 'DestinationListResponse404(errors: $errors, messages: $messages, success: $success)'; } 
 }
