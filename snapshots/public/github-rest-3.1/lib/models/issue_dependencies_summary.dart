// GENERATED CODE - DO NOT MODIFY BY HAND

final class IssueDependenciesSummary {const IssueDependenciesSummary({required this.blockedBy, required this.blocking, required this.totalBlockedBy, required this.totalBlocking, });

factory IssueDependenciesSummary.fromJson(Map<String, dynamic> json) { return IssueDependenciesSummary(
  blockedBy: (json['blocked_by'] as num).toInt(),
  blocking: (json['blocking'] as num).toInt(),
  totalBlockedBy: (json['total_blocked_by'] as num).toInt(),
  totalBlocking: (json['total_blocking'] as num).toInt(),
); }

final int blockedBy;

final int blocking;

final int totalBlockedBy;

final int totalBlocking;

Map<String, dynamic> toJson() { return {
  'blocked_by': blockedBy,
  'blocking': blocking,
  'total_blocked_by': totalBlockedBy,
  'total_blocking': totalBlocking,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('blocked_by') && json['blocked_by'] is num &&
      json.containsKey('blocking') && json['blocking'] is num &&
      json.containsKey('total_blocked_by') && json['total_blocked_by'] is num &&
      json.containsKey('total_blocking') && json['total_blocking'] is num; } 
IssueDependenciesSummary copyWith({int? blockedBy, int? blocking, int? totalBlockedBy, int? totalBlocking, }) { return IssueDependenciesSummary(
  blockedBy: blockedBy ?? this.blockedBy,
  blocking: blocking ?? this.blocking,
  totalBlockedBy: totalBlockedBy ?? this.totalBlockedBy,
  totalBlocking: totalBlocking ?? this.totalBlocking,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssueDependenciesSummary &&
          blockedBy == other.blockedBy &&
          blocking == other.blocking &&
          totalBlockedBy == other.totalBlockedBy &&
          totalBlocking == other.totalBlocking; } 
@override int get hashCode { return Object.hash(blockedBy, blocking, totalBlockedBy, totalBlocking); } 
@override String toString() { return 'IssueDependenciesSummary(blockedBy: $blockedBy, blocking: $blocking, totalBlockedBy: $totalBlockedBy, totalBlocking: $totalBlocking)'; } 
 }
