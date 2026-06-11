// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_analytics_messages2.dart';import 'dns_analytics_report_bytime.dart';@immutable final class DnsFirewallAnalyticsByTimeResponse4Xx {const DnsFirewallAnalyticsByTimeResponse4Xx({required this.errors, required this.messages, required this.result, required this.success, });

factory DnsFirewallAnalyticsByTimeResponse4Xx.fromJson(Map<String, dynamic> json) { return DnsFirewallAnalyticsByTimeResponse4Xx(
  errors: (json['errors'] as List<dynamic>).map((e) => DnsAnalyticsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DnsAnalyticsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: DnsAnalyticsReportBytime.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<DnsAnalyticsMessages2> errors;

final List<DnsAnalyticsMessages2> messages;

final DnsAnalyticsReportBytime result;

/// Whether the API call was successful.
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
DnsFirewallAnalyticsByTimeResponse4Xx copyWith({List<DnsAnalyticsMessages2>? errors, List<DnsAnalyticsMessages2>? messages, DnsAnalyticsReportBytime? result, bool? success, }) { return DnsFirewallAnalyticsByTimeResponse4Xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsFirewallAnalyticsByTimeResponse4Xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'DnsFirewallAnalyticsByTimeResponse4Xx(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
