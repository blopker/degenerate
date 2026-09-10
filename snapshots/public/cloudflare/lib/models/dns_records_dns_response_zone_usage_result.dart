// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DnsRecordsDnsResponseZoneUsageResult {const DnsRecordsDnsResponseZoneUsageResult({this.recordQuota = const Omittable.absent(), this.recordUsage, });

factory DnsRecordsDnsResponseZoneUsageResult.fromJson(Map<String, dynamic> json) { return DnsRecordsDnsResponseZoneUsageResult(
  recordQuota: json.containsKey('record_quota') ? Omittable(json['record_quota'] != null ? (json['record_quota'] as num).toInt() : null) : const Omittable.absent(),
  recordUsage: json['record_usage'] != null ? (json['record_usage'] as num).toInt() : null,
); }

/// Maximum number of DNS records allowed for the zone. Null if using account-level quota.
final Omittable<int?> recordQuota;

/// Current number of DNS records in the zone.
final int? recordUsage;

Map<String, dynamic> toJson() { return {
  if (recordQuota.isPresent) 'record_quota': recordQuota.value,
  'record_usage': ?recordUsage,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'record_quota', 'record_usage'}.contains(key)); } 
DnsRecordsDnsResponseZoneUsageResult copyWith({Omittable<int?>? recordQuota, int? Function()? recordUsage, }) { return DnsRecordsDnsResponseZoneUsageResult(
  recordQuota: recordQuota ?? this.recordQuota,
  recordUsage: recordUsage != null ? recordUsage() : this.recordUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsRecordsDnsResponseZoneUsageResult &&
          recordQuota == other.recordQuota &&
          recordUsage == other.recordUsage; } 
@override int get hashCode { return Object.hash(recordQuota, recordUsage); } 
@override String toString() { return 'DnsRecordsDnsResponseZoneUsageResult(recordQuota: $recordQuota, recordUsage: $recordUsage)'; } 
 }
