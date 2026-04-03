// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dns_records_dns_response_review_scan_object.dart';@immutable final class DnsRecordsDnsResponseReviewScan {const DnsRecordsDnsResponseReviewScan({this.result});

factory DnsRecordsDnsResponseReviewScan.fromJson(Map<String, dynamic> json) { return DnsRecordsDnsResponseReviewScan(
  result: json['result'] != null ? DnsRecordsDnsResponseReviewScanObject.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DnsRecordsDnsResponseReviewScanObject? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DnsRecordsDnsResponseReviewScan copyWith({DnsRecordsDnsResponseReviewScanObject Function()? result}) { return DnsRecordsDnsResponseReviewScan(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsDnsResponseReviewScan &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DnsRecordsDnsResponseReviewScan(result: $result)'; } 
 }
