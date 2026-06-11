// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_analytics_messages2.dart';import 'dns_analytics_report_bytime.dart';@immutable final class DnsFirewallAnalyticsByTimeResponse {const DnsFirewallAnalyticsByTimeResponse({required this.errors, required this.messages, required this.success, this.result, });

factory DnsFirewallAnalyticsByTimeResponse.fromJson(Map<String, dynamic> json) { return DnsFirewallAnalyticsByTimeResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => DnsAnalyticsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DnsAnalyticsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? DnsAnalyticsReportBytime.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<DnsAnalyticsMessages2> errors;

final List<DnsAnalyticsMessages2> messages;

/// Whether the API call was successful.
final bool success;

final DnsAnalyticsReportBytime? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
DnsFirewallAnalyticsByTimeResponse copyWith({List<DnsAnalyticsMessages2>? errors, List<DnsAnalyticsMessages2>? messages, bool? success, DnsAnalyticsReportBytime Function()? result, }) { return DnsFirewallAnalyticsByTimeResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsFirewallAnalyticsByTimeResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'DnsFirewallAnalyticsByTimeResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
