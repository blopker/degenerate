// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetBgpRoutesRealtimeResponseResultMetaCollectors {const RadarGetBgpRoutesRealtimeResponseResultMetaCollectors({required this.collector, required this.latestRealtimeTs, required this.latestRibTs, required this.latestUpdatesTs, required this.peersCount, required this.peersV4Count, required this.peersV6Count, });

factory RadarGetBgpRoutesRealtimeResponseResultMetaCollectors.fromJson(Map<String, dynamic> json) { return RadarGetBgpRoutesRealtimeResponseResultMetaCollectors(
  collector: json['collector'] as String,
  latestRealtimeTs: json['latest_realtime_ts'] as String,
  latestRibTs: json['latest_rib_ts'] as String,
  latestUpdatesTs: json['latest_updates_ts'] as String,
  peersCount: (json['peers_count'] as num).toInt(),
  peersV4Count: (json['peers_v4_count'] as num).toInt(),
  peersV6Count: (json['peers_v6_count'] as num).toInt(),
); }

/// Public route collector ID.
final String collector;

/// Latest real-time stream timestamp for this collector.
final String latestRealtimeTs;

/// Latest RIB dump MRT file timestamp for this collector.
final String latestRibTs;

/// Latest BGP updates MRT file timestamp for this collector.
final String latestUpdatesTs;

/// Total number of collector peers used from this collector.
final int peersCount;

/// Total number of collector peers used from this collector for IPv4 prefixes.
final int peersV4Count;

/// Total number of collector peers used from this collector for IPv6 prefixes.
final int peersV6Count;

Map<String, dynamic> toJson() { return {
  'collector': collector,
  'latest_realtime_ts': latestRealtimeTs,
  'latest_rib_ts': latestRibTs,
  'latest_updates_ts': latestUpdatesTs,
  'peers_count': peersCount,
  'peers_v4_count': peersV4Count,
  'peers_v6_count': peersV6Count,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('collector') && json['collector'] is String &&
      json.containsKey('latest_realtime_ts') && json['latest_realtime_ts'] is String &&
      json.containsKey('latest_rib_ts') && json['latest_rib_ts'] is String &&
      json.containsKey('latest_updates_ts') && json['latest_updates_ts'] is String &&
      json.containsKey('peers_count') && json['peers_count'] is num &&
      json.containsKey('peers_v4_count') && json['peers_v4_count'] is num &&
      json.containsKey('peers_v6_count') && json['peers_v6_count'] is num; } 
RadarGetBgpRoutesRealtimeResponseResultMetaCollectors copyWith({String? collector, String? latestRealtimeTs, String? latestRibTs, String? latestUpdatesTs, int? peersCount, int? peersV4Count, int? peersV6Count, }) { return RadarGetBgpRoutesRealtimeResponseResultMetaCollectors(
  collector: collector ?? this.collector,
  latestRealtimeTs: latestRealtimeTs ?? this.latestRealtimeTs,
  latestRibTs: latestRibTs ?? this.latestRibTs,
  latestUpdatesTs: latestUpdatesTs ?? this.latestUpdatesTs,
  peersCount: peersCount ?? this.peersCount,
  peersV4Count: peersV4Count ?? this.peersV4Count,
  peersV6Count: peersV6Count ?? this.peersV6Count,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBgpRoutesRealtimeResponseResultMetaCollectors &&
          collector == other.collector &&
          latestRealtimeTs == other.latestRealtimeTs &&
          latestRibTs == other.latestRibTs &&
          latestUpdatesTs == other.latestUpdatesTs &&
          peersCount == other.peersCount &&
          peersV4Count == other.peersV4Count &&
          peersV6Count == other.peersV6Count; } 
@override int get hashCode { return Object.hash(collector, latestRealtimeTs, latestRibTs, latestUpdatesTs, peersCount, peersV4Count, peersV6Count); } 
@override String toString() { return 'RadarGetBgpRoutesRealtimeResponseResultMetaCollectors(collector: $collector, latestRealtimeTs: $latestRealtimeTs, latestRibTs: $latestRibTs, latestUpdatesTs: $latestUpdatesTs, peersCount: $peersCount, peersV4Count: $peersV4Count, peersV6Count: $peersV6Count)'; } 
 }
