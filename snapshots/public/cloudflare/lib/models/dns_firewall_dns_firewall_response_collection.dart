// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_firewall_dns_firewall_cluster_response.dart';import 'dns_firewall_dns_firewall_response_collection_result_info.dart';import 'dns_firewall_messages2.dart';@immutable final class DnsFirewallDnsFirewallResponseCollection {const DnsFirewallDnsFirewallResponseCollection({required this.errors, required this.messages, required this.success, this.resultInfo, this.result, });

factory DnsFirewallDnsFirewallResponseCollection.fromJson(Map<String, dynamic> json) { return DnsFirewallDnsFirewallResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => DnsFirewallMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DnsFirewallMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? DnsFirewallDnsFirewallResponseCollectionResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  result: (json['result'] as List<dynamic>?)?.map((e) => DnsFirewallDnsFirewallClusterResponse.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DnsFirewallMessages2> errors;

final List<DnsFirewallMessages2> messages;

/// Whether the API call was successful.
final bool success;

final DnsFirewallDnsFirewallResponseCollectionResultInfo? resultInfo;

final List<DnsFirewallDnsFirewallClusterResponse>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
DnsFirewallDnsFirewallResponseCollection copyWith({List<DnsFirewallMessages2>? errors, List<DnsFirewallMessages2>? messages, bool? success, DnsFirewallDnsFirewallResponseCollectionResultInfo Function()? resultInfo, List<DnsFirewallDnsFirewallClusterResponse> Function()? result, }) { return DnsFirewallDnsFirewallResponseCollection(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsFirewallDnsFirewallResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'DnsFirewallDnsFirewallResponseCollection(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, result: $result)'; } 
 }
