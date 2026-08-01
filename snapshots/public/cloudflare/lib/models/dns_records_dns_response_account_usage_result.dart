// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DnsRecordsDnsResponseAccountUsageResult {const DnsRecordsDnsResponseAccountUsageResult({this.internalRecordQuota = const Omittable.absent(), this.internalRecordUsage = const Omittable.absent(), this.recordQuota = const Omittable.absent(), this.recordUsage, });

factory DnsRecordsDnsResponseAccountUsageResult.fromJson(Map<String, dynamic> json) { return DnsRecordsDnsResponseAccountUsageResult(
  internalRecordQuota: json.containsKey('internal_record_quota') ? Omittable(json['internal_record_quota'] != null ? (json['internal_record_quota'] as num).toInt() : null) : const Omittable.absent(),
  internalRecordUsage: json.containsKey('internal_record_usage') ? Omittable(json['internal_record_usage'] != null ? (json['internal_record_usage'] as num).toInt() : null) : const Omittable.absent(),
  recordQuota: json.containsKey('record_quota') ? Omittable(json['record_quota'] != null ? (json['record_quota'] as num).toInt() : null) : const Omittable.absent(),
  recordUsage: json['record_usage'] != null ? (json['record_usage'] as num).toInt() : null,
); }

/// Maximum number of DNS records allowed across all internal zones in the account. Only present if internal DNS is enabled.
final Omittable<int?> internalRecordQuota;

/// Current number of DNS records across all internal zones in the account. Only present if internal DNS is enabled.
final Omittable<int?> internalRecordUsage;

/// Maximum number of DNS records allowed across all public zones in the account. Null if using zone-level quota.
final Omittable<int?> recordQuota;

/// Current number of DNS records across all public zones in the account.
final int? recordUsage;

Map<String, dynamic> toJson() { return {
  if (internalRecordQuota.isPresent) 'internal_record_quota': internalRecordQuota.value,
  if (internalRecordUsage.isPresent) 'internal_record_usage': internalRecordUsage.value,
  if (recordQuota.isPresent) 'record_quota': recordQuota.value,
  'record_usage': ?recordUsage,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'internal_record_quota', 'internal_record_usage', 'record_quota', 'record_usage'}.contains(key)); } 
DnsRecordsDnsResponseAccountUsageResult copyWith({Omittable<int?>? internalRecordQuota, Omittable<int?>? internalRecordUsage, Omittable<int?>? recordQuota, int? Function()? recordUsage, }) { return DnsRecordsDnsResponseAccountUsageResult(
  internalRecordQuota: internalRecordQuota ?? this.internalRecordQuota,
  internalRecordUsage: internalRecordUsage ?? this.internalRecordUsage,
  recordQuota: recordQuota ?? this.recordQuota,
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
