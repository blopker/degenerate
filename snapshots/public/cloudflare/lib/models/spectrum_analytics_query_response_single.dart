// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'spectrum_analytics_messages2.dart';import 'spectrum_analytics_query_response_single_result.dart';@immutable final class SpectrumAnalyticsQueryResponseSingle {const SpectrumAnalyticsQueryResponseSingle({required this.errors, required this.messages, required this.success, this.result, });

factory SpectrumAnalyticsQueryResponseSingle.fromJson(Map<String, dynamic> json) { return SpectrumAnalyticsQueryResponseSingle(
  errors: (json['errors'] as List<dynamic>).map((e) => SpectrumAnalyticsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => SpectrumAnalyticsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? SpectrumAnalyticsQueryResponseSingleResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<SpectrumAnalyticsMessages2> errors;

final List<SpectrumAnalyticsMessages2> messages;

/// Whether the API call was successful.
final bool success;

final SpectrumAnalyticsQueryResponseSingleResult? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
SpectrumAnalyticsQueryResponseSingle copyWith({List<SpectrumAnalyticsMessages2>? errors, List<SpectrumAnalyticsMessages2>? messages, bool? success, SpectrumAnalyticsQueryResponseSingleResult Function()? result, }) { return SpectrumAnalyticsQueryResponseSingle(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SpectrumAnalyticsQueryResponseSingle &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'SpectrumAnalyticsQueryResponseSingle(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
