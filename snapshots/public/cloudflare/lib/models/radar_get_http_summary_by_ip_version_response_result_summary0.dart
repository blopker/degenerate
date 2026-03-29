// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpSummaryByIpVersionResponseResultSummary0 {const RadarGetHttpSummaryByIpVersionResponseResultSummary0({required this.iPv4, required this.iPv6, });

factory RadarGetHttpSummaryByIpVersionResponseResultSummary0.fromJson(Map<String, dynamic> json) { return RadarGetHttpSummaryByIpVersionResponseResultSummary0(
  iPv4: json['IPv4'] as String,
  iPv6: json['IPv6'] as String,
); }

/// A numeric string.
final String iPv4;

/// A numeric string.
final String iPv6;

Map<String, dynamic> toJson() { return {
  'IPv4': iPv4,
  'IPv6': iPv6,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('IPv4') && json['IPv4'] is String &&
      json.containsKey('IPv6') && json['IPv6'] is String; } 
RadarGetHttpSummaryByIpVersionResponseResultSummary0 copyWith({String? iPv4, String? iPv6, }) { return RadarGetHttpSummaryByIpVersionResponseResultSummary0(
  iPv4: iPv4 ?? this.iPv4,
  iPv6: iPv6 ?? this.iPv6,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpSummaryByIpVersionResponseResultSummary0 &&
          iPv4 == other.iPv4 &&
          iPv6 == other.iPv6; } 
@override int get hashCode { return Object.hash(iPv4, iPv6); } 
@override String toString() { return 'RadarGetHttpSummaryByIpVersionResponseResultSummary0(iPv4: $iPv4, iPv6: $iPv6)'; } 
 }
