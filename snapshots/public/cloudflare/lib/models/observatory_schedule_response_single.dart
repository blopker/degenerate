// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'observatory_messages2.dart';import 'observatory_schedule.dart';@immutable final class ObservatoryScheduleResponseSingle {const ObservatoryScheduleResponseSingle({required this.errors, required this.messages, required this.success, this.result, });

factory ObservatoryScheduleResponseSingle.fromJson(Map<String, dynamic> json) { return ObservatoryScheduleResponseSingle(
  errors: (json['errors'] as List<dynamic>).map((e) => ObservatoryMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ObservatoryMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? ObservatorySchedule.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<ObservatoryMessages2> errors;

final List<ObservatoryMessages2> messages;

/// Whether the API call was successful.
final bool success;

final ObservatorySchedule? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ObservatoryScheduleResponseSingle copyWith({List<ObservatoryMessages2>? errors, List<ObservatoryMessages2>? messages, bool? success, ObservatorySchedule Function()? result, }) { return ObservatoryScheduleResponseSingle(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ObservatoryScheduleResponseSingle &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'ObservatoryScheduleResponseSingle(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
