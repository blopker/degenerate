// GENERATED CODE - DO NOT MODIFY BY HAND

/// Network settings for an application
final class CcApplicationNetwork {const CcApplicationNetwork({required this.bandwidthLimitMbps});

factory CcApplicationNetwork.fromJson(Map<String, dynamic> json) { return CcApplicationNetwork(
  bandwidthLimitMbps: (json['bandwidth_limit_mbps'] as num).toInt(),
); }

/// The network bandwidth limit per container in Megabits per second (Mbps).
/// 
final int bandwidthLimitMbps;

Map<String, dynamic> toJson() { return {
  'bandwidth_limit_mbps': bandwidthLimitMbps,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('bandwidth_limit_mbps') && json['bandwidth_limit_mbps'] is num; } 
CcApplicationNetwork copyWith({int? bandwidthLimitMbps}) { return CcApplicationNetwork(
  bandwidthLimitMbps: bandwidthLimitMbps ?? this.bandwidthLimitMbps,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CcApplicationNetwork &&
          bandwidthLimitMbps == other.bandwidthLimitMbps; } 
@override int get hashCode { return bandwidthLimitMbps.hashCode; } 
@override String toString() { return 'CcApplicationNetwork(bandwidthLimitMbps: $bandwidthLimitMbps)'; } 
 }
