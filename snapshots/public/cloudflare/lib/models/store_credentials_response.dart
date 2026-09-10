// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response_errors3.dart';import 'response_messages2.dart';import 'response_success.dart';@immutable final class StoreCredentialsResponse {const StoreCredentialsResponse({required this.errors, required this.messages, required this.success, this.result = const Omittable.absent(), });

factory StoreCredentialsResponse.fromJson(Map<String, dynamic> json) { return StoreCredentialsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ResponseErrors3.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ResponseMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: ResponseSuccess.fromJson(json['success'] as bool),
  result: json.containsKey('result') ? Omittable(json['result'] as Map<String, dynamic>?) : const Omittable.absent(),
); }

/// Contains errors if the API call was unsuccessful.
final List<ResponseErrors3> errors;

/// Contains informational messages.
final List<ResponseMessages2> messages;

/// Indicates whether the API call was successful.
final ResponseSuccess success;

final Omittable<Map<String,dynamic>?> result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success.toJson(),
  if (result.isPresent) 'result': result.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success'); } 
StoreCredentialsResponse copyWith({List<ResponseErrors3>? errors, List<ResponseMessages2>? messages, ResponseSuccess? success, Omittable<Map<String,dynamic>?>? result, }) { return StoreCredentialsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StoreCredentialsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'StoreCredentialsResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
