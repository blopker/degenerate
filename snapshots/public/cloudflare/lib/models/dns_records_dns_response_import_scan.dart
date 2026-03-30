// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dns_records_dns_response_import_scan_result.dart';final class DnsRecordsDnsResponseImportScan {const DnsRecordsDnsResponseImportScan({this.result});

factory DnsRecordsDnsResponseImportScan.fromJson(Map<String, dynamic> json) { return DnsRecordsDnsResponseImportScan(
  result: json['result'] != null ? DnsRecordsDnsResponseImportScanResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DnsRecordsDnsResponseImportScanResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DnsRecordsDnsResponseImportScan copyWith({DnsRecordsDnsResponseImportScanResult Function()? result}) { return DnsRecordsDnsResponseImportScan(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsDnsResponseImportScan &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DnsRecordsDnsResponseImportScan(result: $result)'; } 
 }
