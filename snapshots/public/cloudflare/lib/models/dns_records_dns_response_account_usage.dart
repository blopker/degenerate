// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_records_dns_response_account_usage_result.dart';@immutable final class DnsRecordsDnsResponseAccountUsage {const DnsRecordsDnsResponseAccountUsage({this.result});

factory DnsRecordsDnsResponseAccountUsage.fromJson(Map<String, dynamic> json) { return DnsRecordsDnsResponseAccountUsage(
  result: json['result'] != null ? DnsRecordsDnsResponseAccountUsageResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DnsRecordsDnsResponseAccountUsageResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DnsRecordsDnsResponseAccountUsage copyWith({DnsRecordsDnsResponseAccountUsageResult Function()? result}) { return DnsRecordsDnsResponseAccountUsage(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsDnsResponseAccountUsage &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DnsRecordsDnsResponseAccountUsage(result: $result)'; } 
 }
