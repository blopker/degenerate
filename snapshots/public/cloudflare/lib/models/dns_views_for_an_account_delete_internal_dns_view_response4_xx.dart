// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_settings_messages2.dart';import 'dns_views_for_an_account_delete_internal_dns_view_response4_xx_result.dart';@immutable final class DnsViewsForAnAccountDeleteInternalDnsViewResponse4Xx {const DnsViewsForAnAccountDeleteInternalDnsViewResponse4Xx({required this.errors, required this.messages, required this.result, required this.success, });

factory DnsViewsForAnAccountDeleteInternalDnsViewResponse4Xx.fromJson(Map<String, dynamic> json) { return DnsViewsForAnAccountDeleteInternalDnsViewResponse4Xx(
  errors: (json['errors'] as List<dynamic>).map((e) => DnsSettingsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DnsSettingsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: DnsViewsForAnAccountDeleteInternalDnsViewResponse4XxResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<DnsSettingsMessages2> errors;

final List<DnsSettingsMessages2> messages;

final DnsViewsForAnAccountDeleteInternalDnsViewResponse4XxResult result;

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
DnsViewsForAnAccountDeleteInternalDnsViewResponse4Xx copyWith({List<DnsSettingsMessages2>? errors, List<DnsSettingsMessages2>? messages, DnsViewsForAnAccountDeleteInternalDnsViewResponse4XxResult? result, bool? success, }) { return DnsViewsForAnAccountDeleteInternalDnsViewResponse4Xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsViewsForAnAccountDeleteInternalDnsViewResponse4Xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'DnsViewsForAnAccountDeleteInternalDnsViewResponse4Xx(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
