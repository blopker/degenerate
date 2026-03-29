// GENERATED CODE - DO NOT MODIFY BY HAND

import 'shield_traffic_stats_traffic_stats.dart';final class ShieldTrafficStats {const ShieldTrafficStats({this.trafficStats});

factory ShieldTrafficStats.fromJson(Map<String, dynamic> json) { return ShieldTrafficStats(
  trafficStats: json['traffic_stats'] != null ? ShieldTrafficStatsTrafficStats.fromJson(json['traffic_stats'] as Map<String, dynamic>) : null,
); }

final ShieldTrafficStatsTrafficStats? trafficStats;

Map<String, dynamic> toJson() { return {
  if (trafficStats != null) 'traffic_stats': trafficStats?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ShieldTrafficStats copyWith({ShieldTrafficStatsTrafficStats Function()? trafficStats}) { return ShieldTrafficStats(
  trafficStats: trafficStats != null ? trafficStats() : this.trafficStats,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldTrafficStats &&
          trafficStats == other.trafficStats; } 
@override int get hashCode { return trafficStats.hashCode; } 
@override String toString() { return 'ShieldTrafficStats(trafficStats: $trafficStats)'; } 
 }
