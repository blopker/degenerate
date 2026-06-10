// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_firewall_dns_firewall_reverse_dns.dart';import 'dns_firewall_messages2.dart';@immutable final class DnsFirewallDnsFirewallReverseDnsResponse2 {const DnsFirewallDnsFirewallReverseDnsResponse2({required this.errors, required this.messages, required this.success, this.result, });

factory DnsFirewallDnsFirewallReverseDnsResponse2.fromJson(Map<String, dynamic> json) { return DnsFirewallDnsFirewallReverseDnsResponse2(
  errors: (json['errors'] as List<dynamic>).map((e) => DnsFirewallMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DnsFirewallMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? DnsFirewallDnsFirewallReverseDns.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<DnsFirewallMessages2> errors;

final List<DnsFirewallMessages2> messages;

/// Whether the API call was successful.
final bool success;

final DnsFirewallDnsFirewallReverseDns? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
DnsFirewallDnsFirewallReverseDnsResponse2 copyWith({List<DnsFirewallMessages2>? errors, List<DnsFirewallMessages2>? messages, bool? success, DnsFirewallDnsFirewallReverseDns Function()? result, }) { return DnsFirewallDnsFirewallReverseDnsResponse2(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsFirewallDnsFirewallReverseDnsResponse2 &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'DnsFirewallDnsFirewallReverseDnsResponse2(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
