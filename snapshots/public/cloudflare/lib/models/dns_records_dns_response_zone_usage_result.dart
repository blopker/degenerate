// GENERATED CODE - DO NOT MODIFY BY HAND

final class DnsRecordsDnsResponseZoneUsageResult {const DnsRecordsDnsResponseZoneUsageResult({this.recordQuota, this.recordUsage, });

factory DnsRecordsDnsResponseZoneUsageResult.fromJson(Map<String, dynamic> json) { return DnsRecordsDnsResponseZoneUsageResult(
  recordQuota: json['record_quota'] != null ? (json['record_quota'] as num).toInt() : null,
  recordUsage: json['record_usage'] != null ? (json['record_usage'] as num).toInt() : null,
); }

/// Maximum number of DNS records allowed for the zone. Null if using account-level quota.
final int? recordQuota;

/// Current number of DNS records in the zone.
final int? recordUsage;

Map<String, dynamic> toJson() { return {
  'record_quota': ?recordQuota,
  'record_usage': ?recordUsage,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'record_quota', 'record_usage'}.contains(key)); } 
DnsRecordsDnsResponseZoneUsageResult copyWith({int? Function()? recordQuota, int Function()? recordUsage, }) { return DnsRecordsDnsResponseZoneUsageResult(
  recordQuota: recordQuota != null ? recordQuota() : this.recordQuota,
  recordUsage: recordUsage != null ? recordUsage() : this.recordUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsDnsResponseZoneUsageResult &&
          recordQuota == other.recordQuota &&
          recordUsage == other.recordUsage; } 
@override int get hashCode { return Object.hash(recordQuota, recordUsage); } 
@override String toString() { return 'DnsRecordsDnsResponseZoneUsageResult(recordQuota: $recordQuota, recordUsage: $recordUsage)'; } 
 }
