// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DnsRecordsDnsResponseImportScanResult {const DnsRecordsDnsResponseImportScanResult({this.recsAdded, this.totalRecordsParsed, });

factory DnsRecordsDnsResponseImportScanResult.fromJson(Map<String, dynamic> json) { return DnsRecordsDnsResponseImportScanResult(
  recsAdded: json['recs_added'] != null ? (json['recs_added'] as num).toDouble() : null,
  totalRecordsParsed: json['total_records_parsed'] != null ? (json['total_records_parsed'] as num).toDouble() : null,
); }

/// Number of DNS records added.
final double? recsAdded;

/// Total number of DNS records parsed.
final double? totalRecordsParsed;

Map<String, dynamic> toJson() { return {
  'recs_added': ?recsAdded,
  'total_records_parsed': ?totalRecordsParsed,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'recs_added', 'total_records_parsed'}.contains(key)); } 
DnsRecordsDnsResponseImportScanResult copyWith({double Function()? recsAdded, double Function()? totalRecordsParsed, }) { return DnsRecordsDnsResponseImportScanResult(
  recsAdded: recsAdded != null ? recsAdded() : this.recsAdded,
  totalRecordsParsed: totalRecordsParsed != null ? totalRecordsParsed() : this.totalRecordsParsed,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsDnsResponseImportScanResult &&
          recsAdded == other.recsAdded &&
          totalRecordsParsed == other.totalRecordsParsed; } 
@override int get hashCode { return Object.hash(recsAdded, totalRecordsParsed); } 
@override String toString() { return 'DnsRecordsDnsResponseImportScanResult(recsAdded: $recsAdded, totalRecordsParsed: $totalRecordsParsed)'; } 
 }
