// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'spectrum_analytics_messages2.dart';import 'spectrum_analytics_query_response_aggregate_result.dart';@immutable final class SpectrumAnalyticsQueryResponseAggregate {const SpectrumAnalyticsQueryResponseAggregate({required this.errors, required this.messages, required this.success, this.result, });

factory SpectrumAnalyticsQueryResponseAggregate.fromJson(Map<String, dynamic> json) { return SpectrumAnalyticsQueryResponseAggregate(
  errors: (json['errors'] as List<dynamic>).map((e) => SpectrumAnalyticsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => SpectrumAnalyticsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>?)?.map((e) => SpectrumAnalyticsQueryResponseAggregateResult.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<SpectrumAnalyticsMessages2> errors;

final List<SpectrumAnalyticsMessages2> messages;

/// Whether the API call was successful.
final bool success;

final List<SpectrumAnalyticsQueryResponseAggregateResult>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
SpectrumAnalyticsQueryResponseAggregate copyWith({List<SpectrumAnalyticsMessages2>? errors, List<SpectrumAnalyticsMessages2>? messages, bool? success, List<SpectrumAnalyticsQueryResponseAggregateResult> Function()? result, }) { return SpectrumAnalyticsQueryResponseAggregate(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SpectrumAnalyticsQueryResponseAggregate &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'SpectrumAnalyticsQueryResponseAggregate(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
