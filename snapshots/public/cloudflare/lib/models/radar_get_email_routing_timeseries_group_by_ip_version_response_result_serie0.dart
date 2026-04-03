// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultSerie0 {const RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultSerie0({required this.iPv4, required this.iPv6, });

factory RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultSerie0.fromJson(Map<String, dynamic> json) { return RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultSerie0(
  iPv4: (json['IPv4'] as List<dynamic>).map((e) => e as String).toList(),
  iPv6: (json['IPv6'] as List<dynamic>).map((e) => e as String).toList(),
); }

final List<String> iPv4;

final List<String> iPv6;

Map<String, dynamic> toJson() { return {
  'IPv4': iPv4,
  'IPv6': iPv6,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('IPv4') &&
      json.containsKey('IPv6'); } 
RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultSerie0 copyWith({List<String>? iPv4, List<String>? iPv6, }) { return RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultSerie0(
  iPv4: iPv4 ?? this.iPv4,
  iPv6: iPv6 ?? this.iPv6,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultSerie0 &&
          listEquals(iPv4, other.iPv4) &&
          listEquals(iPv6, other.iPv6); } 
@override int get hashCode { return Object.hash(Object.hashAll(iPv4), Object.hashAll(iPv6)); } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultSerie0(iPv4: $iPv4, iPv6: $iPv6)'; } 
 }
