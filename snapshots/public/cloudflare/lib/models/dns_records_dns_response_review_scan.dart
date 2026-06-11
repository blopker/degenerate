// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_records_dns_response_review_scan_object.dart';import 'dns_records_messages2.dart';@immutable final class DnsRecordsDnsResponseReviewScan {const DnsRecordsDnsResponseReviewScan({required this.errors, required this.messages, required this.success, this.result, });

factory DnsRecordsDnsResponseReviewScan.fromJson(Map<String, dynamic> json) { return DnsRecordsDnsResponseReviewScan(
  errors: (json['errors'] as List<dynamic>).map((e) => DnsRecordsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => DnsRecordsMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? DnsRecordsDnsResponseReviewScanObject.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<DnsRecordsMessages2> errors;

final List<DnsRecordsMessages2> messages;

/// Whether the API call was successful.
final bool success;

final DnsRecordsDnsResponseReviewScanObject? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
DnsRecordsDnsResponseReviewScan copyWith({List<DnsRecordsMessages2>? errors, List<DnsRecordsMessages2>? messages, bool? success, DnsRecordsDnsResponseReviewScanObject Function()? result, }) { return DnsRecordsDnsResponseReviewScan(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsDnsResponseReviewScan &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'DnsRecordsDnsResponseReviewScan(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }
