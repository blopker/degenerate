// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response_message.dart';@immutable final class DeleteRegistrationResponse {const DeleteRegistrationResponse({required this.errors, required this.messages, required this.success, this.result = const Omittable.absent(), });

factory DeleteRegistrationResponse.fromJson(Map<String, dynamic> json) { return DeleteRegistrationResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ResponseMessage.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ResponseMessage.fromJson(e as Map<String, dynamic>)).toList(),
  result: json.containsKey('result') ? Omittable(json['result'] as Map<String, dynamic>?) : const Omittable.absent(),
  success: json['success'] as bool,
); }

final List<ResponseMessage> errors;

final List<ResponseMessage> messages;

final Omittable<Map<String,dynamic>?> result;

/// Whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  if (result.isPresent) 'result': result.value,
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
DeleteRegistrationResponse copyWith({List<ResponseMessage>? errors, List<ResponseMessage>? messages, Omittable<Map<String,dynamic>?>? result, bool? success, }) { return DeleteRegistrationResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteRegistrationResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'DeleteRegistrationResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
