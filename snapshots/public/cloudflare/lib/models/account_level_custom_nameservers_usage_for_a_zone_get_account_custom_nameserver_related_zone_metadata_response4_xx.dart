// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account_level_custom_nameservers_usage_for_a_zone_get_account_custom_nameserver_related_zone_metadata_response4_xx_result_info.dart';import 'dns_custom_nameservers_messages2.dart';@immutable final class AccountLevelCustomNameserversUsageForAZoneGetAccountCustomNameserverRelatedZoneMetadataResponse4Xx {const AccountLevelCustomNameserversUsageForAZoneGetAccountCustomNameserverRelatedZoneMetadataResponse4Xx({required this.errors, required this.messages, required this.success, required this.result, this.resultInfo, this.enabled, this.nsSet = 1.0, });

factory AccountLevelCustomNameserversUsageForAZoneGetAccountCustomNameserverRelatedZoneMetadataResponse4Xx.fromJson(Map<String, dynamic> json) { return AccountLevelCustomNameserversUsageForAZoneGetAccountCustomNameserverRelatedZoneMetadataResponse4Xx(
  errors: (json['errors'] as List<dynamic>).map((e) => DnsCustomNameserversMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DnsCustomNameserversMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? AccountLevelCustomNameserversUsageForAZoneGetAccountCustomNameserverRelatedZoneMetadataResponse4XxResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
  enabled: json['enabled'] as bool?,
  nsSet: json.containsKey('ns_set') ? (json['ns_set'] as num).toDouble() : 1.0,
  result: json['result'] as Map<String, dynamic>?,
); }

final List<DnsCustomNameserversMessages2> errors;

final List<DnsCustomNameserversMessages2> messages;

/// Whether the API call was successful.
final bool success;

final AccountLevelCustomNameserversUsageForAZoneGetAccountCustomNameserverRelatedZoneMetadataResponse4XxResultInfo? resultInfo;

/// Whether zone uses account-level custom nameservers.
final bool? enabled;

/// The number of the name server set to assign to the zone.
final double nsSet;

final Map<String,dynamic>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
  'enabled': ?enabled,
  'ns_set': nsSet,
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool &&
      json.containsKey('result'); } 
AccountLevelCustomNameserversUsageForAZoneGetAccountCustomNameserverRelatedZoneMetadataResponse4Xx copyWith({List<DnsCustomNameserversMessages2>? errors, List<DnsCustomNameserversMessages2>? messages, bool? success, AccountLevelCustomNameserversUsageForAZoneGetAccountCustomNameserverRelatedZoneMetadataResponse4XxResultInfo Function()? resultInfo, bool Function()? enabled, double Function()? nsSet, Map<String, dynamic>? Function()? result, }) { return AccountLevelCustomNameserversUsageForAZoneGetAccountCustomNameserverRelatedZoneMetadataResponse4Xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
  enabled: enabled != null ? enabled() : this.enabled,
  nsSet: nsSet != null ? nsSet() : this.nsSet,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountLevelCustomNameserversUsageForAZoneGetAccountCustomNameserverRelatedZoneMetadataResponse4Xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          resultInfo == other.resultInfo &&
          enabled == other.enabled &&
          nsSet == other.nsSet &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, resultInfo, enabled, nsSet, result); } 
@override String toString() { return 'AccountLevelCustomNameserversUsageForAZoneGetAccountCustomNameserverRelatedZoneMetadataResponse4Xx(errors: $errors, messages: $messages, success: $success, resultInfo: $resultInfo, enabled: $enabled, nsSet: $nsSet, result: $result)'; } 
 }
