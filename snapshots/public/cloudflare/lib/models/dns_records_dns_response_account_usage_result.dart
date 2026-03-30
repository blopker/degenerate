// GENERATED CODE - DO NOT MODIFY BY HAND

final class DnsRecordsDnsResponseAccountUsageResult {const DnsRecordsDnsResponseAccountUsageResult({this.internalRecordQuota, this.internalRecordUsage, this.recordQuota, this.recordUsage, });

factory DnsRecordsDnsResponseAccountUsageResult.fromJson(Map<String, dynamic> json) { return DnsRecordsDnsResponseAccountUsageResult(
  internalRecordQuota: json['internal_record_quota'] != null ? (json['internal_record_quota'] as num).toInt() : null,
  internalRecordUsage: json['internal_record_usage'] != null ? (json['internal_record_usage'] as num).toInt() : null,
  recordQuota: json['record_quota'] != null ? (json['record_quota'] as num).toInt() : null,
  recordUsage: json['record_usage'] != null ? (json['record_usage'] as num).toInt() : null,
); }

/// Maximum number of DNS records allowed across all internal zones in the account. Only present if internal DNS is enabled.
final int? internalRecordQuota;

/// Current number of DNS records across all internal zones in the account. Only present if internal DNS is enabled.
final int? internalRecordUsage;

/// Maximum number of DNS records allowed across all public zones in the account. Null if using zone-level quota.
final int? recordQuota;

/// Current number of DNS records across all public zones in the account.
final int? recordUsage;

Map<String, dynamic> toJson() { return {
  'internal_record_quota': ?internalRecordQuota,
  'internal_record_usage': ?internalRecordUsage,
  'record_quota': ?recordQuota,
  'record_usage': ?recordUsage,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'internal_record_quota', 'internal_record_usage', 'record_quota', 'record_usage'}.contains(key)); } 
DnsRecordsDnsResponseAccountUsageResult copyWith({int? Function()? internalRecordQuota, int? Function()? internalRecordUsage, int? Function()? recordQuota, int Function()? recordUsage, }) { return DnsRecordsDnsResponseAccountUsageResult(
  internalRecordQuota: internalRecordQuota != null ? internalRecordQuota() : this.internalRecordQuota,
  internalRecordUsage: internalRecordUsage != null ? internalRecordUsage() : this.internalRecordUsage,
  recordQuota: recordQuota != null ? recordQuota() : this.recordQuota,
  recordUsage: recordUsage != null ? recordUsage() : this.recordUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsDnsResponseAccountUsageResult &&
          internalRecordQuota == other.internalRecordQuota &&
          internalRecordUsage == other.internalRecordUsage &&
          recordQuota == other.recordQuota &&
          recordUsage == other.recordUsage; } 
@override int get hashCode { return Object.hash(internalRecordQuota, internalRecordUsage, recordQuota, recordUsage); } 
@override String toString() { return 'DnsRecordsDnsResponseAccountUsageResult(internalRecordQuota: $internalRecordQuota, internalRecordUsage: $internalRecordUsage, recordQuota: $recordQuota, recordUsage: $recordUsage)'; } 
 }
