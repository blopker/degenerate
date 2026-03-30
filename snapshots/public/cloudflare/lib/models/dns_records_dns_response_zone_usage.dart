// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dns_records_dns_response_zone_usage_result.dart';final class DnsRecordsDnsResponseZoneUsage {const DnsRecordsDnsResponseZoneUsage({this.result});

factory DnsRecordsDnsResponseZoneUsage.fromJson(Map<String, dynamic> json) { return DnsRecordsDnsResponseZoneUsage(
  result: json['result'] != null ? DnsRecordsDnsResponseZoneUsageResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DnsRecordsDnsResponseZoneUsageResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DnsRecordsDnsResponseZoneUsage copyWith({DnsRecordsDnsResponseZoneUsageResult Function()? result}) { return DnsRecordsDnsResponseZoneUsage(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsDnsResponseZoneUsage &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DnsRecordsDnsResponseZoneUsage(result: $result)'; } 
 }
