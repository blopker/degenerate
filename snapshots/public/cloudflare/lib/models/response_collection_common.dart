// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_messages2.dart';@immutable final class ResponseCollectionCommon {const ResponseCollectionCommon({required this.errors, required this.messages, required this.success, this.result = const Omittable.absent(), });

factory ResponseCollectionCommon.fromJson(Map<String, dynamic> json) { return ResponseCollectionCommon(
  errors: (json['errors'] as List<dynamic>).map((e) => DigitalExperienceMonitoringMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DigitalExperienceMonitoringMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json.containsKey('result') ? Omittable((json['result'] as List<dynamic>?)?.map((e) => e).toList()) : const Omittable.absent(),
); }

final List<DigitalExperienceMonitoringMessages2> errors;

final List<DigitalExperienceMonitoringMessages2> messages;

/// Whether the API call was successful.
final bool success;

final Omittable<List<dynamic>?> result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result.isPresent) 'result': result.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
ResponseCollectionCommon copyWith({List<DigitalExperienceMonitoringMessages2>? errors, List<DigitalExperienceMonitoringMessages2>? messages, bool? success, Omittable<List<dynamic>?>? result, }) { return ResponseCollectionCommon(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCollectionCommon &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result.isPresent == other.result.isPresent &&
          listEquals(result.value, other.result.value); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result.value ?? const [])); } 
@override String toString() { return 'ResponseCollectionCommon(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
