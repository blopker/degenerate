// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_bgp_hijacks_events_response_result_asn_info.dart';import 'radar_get_bgp_hijacks_events_response_result_events.dart';final class RadarGetBgpHijacksEventsResponseResult {const RadarGetBgpHijacksEventsResponseResult({required this.asnInfo, required this.events, required this.totalMonitors, });

factory RadarGetBgpHijacksEventsResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetBgpHijacksEventsResponseResult(
  asnInfo: (json['asn_info'] as List<dynamic>).map((e) => RadarGetBgpHijacksEventsResponseResultAsnInfo.fromJson(e as Map<String, dynamic>)).toList(),
  events: (json['events'] as List<dynamic>).map((e) => RadarGetBgpHijacksEventsResponseResultEvents.fromJson(e as Map<String, dynamic>)).toList(),
  totalMonitors: (json['total_monitors'] as num).toInt(),
); }

final List<RadarGetBgpHijacksEventsResponseResultAsnInfo> asnInfo;

final List<RadarGetBgpHijacksEventsResponseResultEvents> events;

final int totalMonitors;

Map<String, dynamic> toJson() { return {
  'asn_info': asnInfo.map((e) => e.toJson()).toList(),
  'events': events.map((e) => e.toJson()).toList(),
  'total_monitors': totalMonitors,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('asn_info') &&
      json.containsKey('events') &&
      json.containsKey('total_monitors') && json['total_monitors'] is num; } 
RadarGetBgpHijacksEventsResponseResult copyWith({List<RadarGetBgpHijacksEventsResponseResultAsnInfo>? asnInfo, List<RadarGetBgpHijacksEventsResponseResultEvents>? events, int? totalMonitors, }) { return RadarGetBgpHijacksEventsResponseResult(
  asnInfo: asnInfo ?? this.asnInfo,
  events: events ?? this.events,
  totalMonitors: totalMonitors ?? this.totalMonitors,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBgpHijacksEventsResponseResult &&
          listEquals(asnInfo, other.asnInfo) &&
          listEquals(events, other.events) &&
          totalMonitors == other.totalMonitors; } 
@override int get hashCode { return Object.hash(Object.hashAll(asnInfo), Object.hashAll(events), totalMonitors); } 
@override String toString() { return 'RadarGetBgpHijacksEventsResponseResult(asnInfo: $asnInfo, events: $events, totalMonitors: $totalMonitors)'; } 
 }
