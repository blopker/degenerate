// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dns_records_dns_response_batch_object.dart';final class DnsRecordsDnsResponseBatch {const DnsRecordsDnsResponseBatch({this.result});

factory DnsRecordsDnsResponseBatch.fromJson(Map<String, dynamic> json) { return DnsRecordsDnsResponseBatch(
  result: json['result'] != null ? DnsRecordsDnsResponseBatchObject.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DnsRecordsDnsResponseBatchObject? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DnsRecordsDnsResponseBatch copyWith({DnsRecordsDnsResponseBatchObject Function()? result}) { return DnsRecordsDnsResponseBatch(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsDnsResponseBatch &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DnsRecordsDnsResponseBatch(result: $result)'; } 
 }
