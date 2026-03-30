// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_dns_record.dart';import 'email_email_routing_get_response_dns_error.dart';final class EmailEmailRoutingDnsQueryResponseResult {const EmailEmailRoutingDnsQueryResponseResult({this.errors, this.record, });

factory EmailEmailRoutingDnsQueryResponseResult.fromJson(Map<String, dynamic> json) { return EmailEmailRoutingDnsQueryResponseResult(
  errors: (json['errors'] as List<dynamic>?)?.map((e) => EmailEmailRoutingGetResponseDnsError.fromJson(e as Map<String, dynamic>)).toList(),
  record: (json['record'] as List<dynamic>?)?.map((e) => EmailDnsRecord.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<EmailEmailRoutingGetResponseDnsError>? errors;

final List<EmailDnsRecord>? record;

Map<String, dynamic> toJson() { return {
  if (errors != null) 'errors': errors?.map((e) => e.toJson()).toList(),
  if (record != null) 'record': record?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'errors', 'record'}.contains(key)); } 
EmailEmailRoutingDnsQueryResponseResult copyWith({List<EmailEmailRoutingGetResponseDnsError> Function()? errors, List<EmailDnsRecord> Function()? record, }) { return EmailEmailRoutingDnsQueryResponseResult(
  errors: errors != null ? errors() : this.errors,
  record: record != null ? record() : this.record,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailEmailRoutingDnsQueryResponseResult &&
          listEquals(errors, other.errors) &&
          listEquals(record, other.record); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors ?? const []), Object.hashAll(record ?? const [])); } 
@override String toString() { return 'EmailEmailRoutingDnsQueryResponseResult(errors: $errors, record: $record)'; } 
 }
