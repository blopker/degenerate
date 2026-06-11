// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'fraud_messages2.dart';@immutable final class FraudDetectionZoneUpdateSettingsResponse4Xx {const FraudDetectionZoneUpdateSettingsResponse4Xx({required this.errors, required this.messages, required this.success, required this.result, });

factory FraudDetectionZoneUpdateSettingsResponse4Xx.fromJson(Map<String, dynamic> json) { return FraudDetectionZoneUpdateSettingsResponse4Xx(
  errors: (json['errors'] as List<dynamic>).map((e) => FraudMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => FraudMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] as Map<String, dynamic>?,
); }

final List<FraudMessages2> errors;

final List<FraudMessages2> messages;

/// Whether the API call was successful.
final bool success;

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
FraudDetectionZoneUpdateSettingsResponse4Xx copyWith({List<FraudMessages2>? errors, List<FraudMessages2>? messages, bool? success, Map<String, dynamic>? Function()? result, }) { return FraudDetectionZoneUpdateSettingsResponse4Xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FraudDetectionZoneUpdateSettingsResponse4Xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'FraudDetectionZoneUpdateSettingsResponse4Xx(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
