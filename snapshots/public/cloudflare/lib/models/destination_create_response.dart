// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'destination_create_response_errors.dart';import 'destination_create_response_messages.dart';import 'destination_create_response_result.dart';final class DestinationCreateResponse {const DestinationCreateResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory DestinationCreateResponse.fromJson(Map<String, dynamic> json) { return DestinationCreateResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => DestinationCreateResponseErrors.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DestinationCreateResponseMessages.fromJson(e as Map<String, dynamic>)).toList(),
  result: DestinationCreateResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<DestinationCreateResponseErrors> errors;

final List<DestinationCreateResponseMessages> messages;

final DestinationCreateResponseResult result;

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
DestinationCreateResponse copyWith({List<DestinationCreateResponseErrors>? errors, List<DestinationCreateResponseMessages>? messages, DestinationCreateResponseResult? result, bool? success, }) { return DestinationCreateResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DestinationCreateResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'DestinationCreateResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
