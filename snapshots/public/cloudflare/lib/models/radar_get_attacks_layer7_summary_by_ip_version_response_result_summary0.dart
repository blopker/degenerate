// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAttacksLayer7SummaryByIpVersionResponseResultSummary0 {const RadarGetAttacksLayer7SummaryByIpVersionResponseResultSummary0({required this.iPv4, required this.iPv6, });

factory RadarGetAttacksLayer7SummaryByIpVersionResponseResultSummary0.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer7SummaryByIpVersionResponseResultSummary0(
  iPv4: json['IPv4'] as String,
  iPv6: json['IPv6'] as String,
); }

final String iPv4;

final String iPv6;

Map<String, dynamic> toJson() { return {
  'IPv4': iPv4,
  'IPv6': iPv6,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('IPv4') && json['IPv4'] is String &&
      json.containsKey('IPv6') && json['IPv6'] is String; } 
RadarGetAttacksLayer7SummaryByIpVersionResponseResultSummary0 copyWith({String? iPv4, String? iPv6, }) { return RadarGetAttacksLayer7SummaryByIpVersionResponseResultSummary0(
  iPv4: iPv4 ?? this.iPv4,
  iPv6: iPv6 ?? this.iPv6,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer7SummaryByIpVersionResponseResultSummary0 &&
          iPv4 == other.iPv4 &&
          iPv6 == other.iPv6; } 
@override int get hashCode { return Object.hash(iPv4, iPv6); } 
@override String toString() { return 'RadarGetAttacksLayer7SummaryByIpVersionResponseResultSummary0(iPv4: $iPv4, iPv6: $iPv6)'; } 
 }
