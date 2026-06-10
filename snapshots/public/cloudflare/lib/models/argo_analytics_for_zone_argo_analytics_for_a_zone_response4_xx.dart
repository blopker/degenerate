// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'argo_analytics_messages2.dart';@immutable final class ArgoAnalyticsForZoneArgoAnalyticsForAZoneResponse4Xx {const ArgoAnalyticsForZoneArgoAnalyticsForAZoneResponse4Xx({required this.errors, required this.messages, required this.result, required this.success, });

factory ArgoAnalyticsForZoneArgoAnalyticsForAZoneResponse4Xx.fromJson(Map<String, dynamic> json) { return ArgoAnalyticsForZoneArgoAnalyticsForAZoneResponse4Xx(
  errors: (json['errors'] as List<dynamic>).map((e) => ArgoAnalyticsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => ArgoAnalyticsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'] as Map<String, dynamic>?,
  success: json['success'] as bool,
); }

final List<ArgoAnalyticsMessages2> errors;

final List<ArgoAnalyticsMessages2> messages;

final Map<String,dynamic>? result;

/// Whether the API call was successful
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': ?result,
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
ArgoAnalyticsForZoneArgoAnalyticsForAZoneResponse4Xx copyWith({List<ArgoAnalyticsMessages2>? errors, List<ArgoAnalyticsMessages2>? messages, Map<String, dynamic>? Function()? result, bool? success, }) { return ArgoAnalyticsForZoneArgoAnalyticsForAZoneResponse4Xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ArgoAnalyticsForZoneArgoAnalyticsForAZoneResponse4Xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'ArgoAnalyticsForZoneArgoAnalyticsForAZoneResponse4Xx(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
