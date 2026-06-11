// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'observatory_availabilities.dart';import 'observatory_messages2.dart';@immutable final class ObservatoryAvailabilitiesResponse {const ObservatoryAvailabilitiesResponse({required this.errors, required this.messages, required this.success, this.result, });

factory ObservatoryAvailabilitiesResponse.fromJson(Map<String, dynamic> json) { return ObservatoryAvailabilitiesResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => ObservatoryMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ObservatoryMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? ObservatoryAvailabilities.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<ObservatoryMessages2> errors;

final List<ObservatoryMessages2> messages;

/// Whether the API call was successful.
final bool success;

final ObservatoryAvailabilities? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ObservatoryAvailabilitiesResponse copyWith({List<ObservatoryMessages2>? errors, List<ObservatoryMessages2>? messages, bool? success, ObservatoryAvailabilities Function()? result, }) { return ObservatoryAvailabilitiesResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ObservatoryAvailabilitiesResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'ObservatoryAvailabilitiesResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
