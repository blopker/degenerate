// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_records_for_a_zone_delete_dns_record_response4_xx_result.dart';import 'dns_records_messages2.dart';@immutable final class DnsRecordsForAZoneDeleteDnsRecordResponse4Xx {const DnsRecordsForAZoneDeleteDnsRecordResponse4Xx({required this.errors, required this.messages, required this.result, required this.success, });

factory DnsRecordsForAZoneDeleteDnsRecordResponse4Xx.fromJson(Map<String, dynamic> json) { return DnsRecordsForAZoneDeleteDnsRecordResponse4Xx(
  errors: (json['errors'] as List<dynamic>).map((e) => DnsRecordsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DnsRecordsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  result: DnsRecordsForAZoneDeleteDnsRecordResponse4XxResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<DnsRecordsMessages2> errors;

final List<DnsRecordsMessages2> messages;

final DnsRecordsForAZoneDeleteDnsRecordResponse4XxResult result;

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
DnsRecordsForAZoneDeleteDnsRecordResponse4Xx copyWith({List<DnsRecordsMessages2>? errors, List<DnsRecordsMessages2>? messages, DnsRecordsForAZoneDeleteDnsRecordResponse4XxResult? result, bool? success, }) { return DnsRecordsForAZoneDeleteDnsRecordResponse4Xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsForAZoneDeleteDnsRecordResponse4Xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'DnsRecordsForAZoneDeleteDnsRecordResponse4Xx(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }
