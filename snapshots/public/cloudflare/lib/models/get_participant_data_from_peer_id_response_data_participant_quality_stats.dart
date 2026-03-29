// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class GetParticipantDataFromPeerIdResponseDataParticipantQualityStats {const GetParticipantDataFromPeerIdResponseDataParticipantQualityStats({this.audioBandwidth, this.audioStats, this.averageQuality, this.end, this.firstAudioPacketReceived, this.firstVideoPacketReceived, this.lastAudioPacketReceived, this.lastVideoPacketReceived, this.peerIds, this.start, this.totalAudioPackets, this.totalAudioPacketsLost, this.totalVideoPackets, this.totalVideoPacketsLost, this.videoBandwidth, this.videoStats, });

factory GetParticipantDataFromPeerIdResponseDataParticipantQualityStats.fromJson(Map<String, dynamic> json) { return GetParticipantDataFromPeerIdResponseDataParticipantQualityStats(
  audioBandwidth: json['audio_bandwidth'] != null ? (json['audio_bandwidth'] as num).toInt() : null,
  audioStats: (json['audio_stats'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),
  averageQuality: json['average_quality'] != null ? (json['average_quality'] as num).toInt() : null,
  end: json['end'] as String?,
  firstAudioPacketReceived: json['first_audio_packet_received'] as String?,
  firstVideoPacketReceived: json['first_video_packet_received'] as String?,
  lastAudioPacketReceived: json['last_audio_packet_received'] as String?,
  lastVideoPacketReceived: json['last_video_packet_received'] as String?,
  peerIds: (json['peer_ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
  start: json['start'] as String?,
  totalAudioPackets: json['total_audio_packets'] != null ? (json['total_audio_packets'] as num).toInt() : null,
  totalAudioPacketsLost: json['total_audio_packets_lost'] != null ? (json['total_audio_packets_lost'] as num).toInt() : null,
  totalVideoPackets: json['total_video_packets'] != null ? (json['total_video_packets'] as num).toInt() : null,
  totalVideoPacketsLost: json['total_video_packets_lost'] != null ? (json['total_video_packets_lost'] as num).toInt() : null,
  videoBandwidth: json['video_bandwidth'] != null ? (json['video_bandwidth'] as num).toInt() : null,
  videoStats: (json['video_stats'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),
); }

final int? audioBandwidth;

final List<Map<String,dynamic>>? audioStats;

final int? averageQuality;

final String? end;

final String? firstAudioPacketReceived;

final String? firstVideoPacketReceived;

final String? lastAudioPacketReceived;

final String? lastVideoPacketReceived;

final List<String>? peerIds;

final String? start;

final int? totalAudioPackets;

final int? totalAudioPacketsLost;

final int? totalVideoPackets;

final int? totalVideoPacketsLost;

final int? videoBandwidth;

final List<Map<String,dynamic>>? videoStats;

Map<String, dynamic> toJson() { return {
  'audio_bandwidth': ?audioBandwidth,
  if (audioStats != null) 'audio_stats': audioStats?.map((e) => e).toList(),
  'average_quality': ?averageQuality,
  'end': ?end,
  'first_audio_packet_received': ?firstAudioPacketReceived,
  'first_video_packet_received': ?firstVideoPacketReceived,
  'last_audio_packet_received': ?lastAudioPacketReceived,
  'last_video_packet_received': ?lastVideoPacketReceived,
  'peer_ids': ?peerIds,
  'start': ?start,
  'total_audio_packets': ?totalAudioPackets,
  'total_audio_packets_lost': ?totalAudioPacketsLost,
  'total_video_packets': ?totalVideoPackets,
  'total_video_packets_lost': ?totalVideoPacketsLost,
  'video_bandwidth': ?videoBandwidth,
  if (videoStats != null) 'video_stats': videoStats?.map((e) => e).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'audio_bandwidth', 'audio_stats', 'average_quality', 'end', 'first_audio_packet_received', 'first_video_packet_received', 'last_audio_packet_received', 'last_video_packet_received', 'peer_ids', 'start', 'total_audio_packets', 'total_audio_packets_lost', 'total_video_packets', 'total_video_packets_lost', 'video_bandwidth', 'video_stats'}.contains(key)); } 
GetParticipantDataFromPeerIdResponseDataParticipantQualityStats copyWith({int Function()? audioBandwidth, List<Map<String, dynamic>> Function()? audioStats, int Function()? averageQuality, String? Function()? end, String Function()? firstAudioPacketReceived, String Function()? firstVideoPacketReceived, String Function()? lastAudioPacketReceived, String Function()? lastVideoPacketReceived, List<String> Function()? peerIds, String? Function()? start, int Function()? totalAudioPackets, int Function()? totalAudioPacketsLost, int Function()? totalVideoPackets, int Function()? totalVideoPacketsLost, int Function()? videoBandwidth, List<Map<String, dynamic>> Function()? videoStats, }) { return GetParticipantDataFromPeerIdResponseDataParticipantQualityStats(
  audioBandwidth: audioBandwidth != null ? audioBandwidth() : this.audioBandwidth,
  audioStats: audioStats != null ? audioStats() : this.audioStats,
  averageQuality: averageQuality != null ? averageQuality() : this.averageQuality,
  end: end != null ? end() : this.end,
  firstAudioPacketReceived: firstAudioPacketReceived != null ? firstAudioPacketReceived() : this.firstAudioPacketReceived,
  firstVideoPacketReceived: firstVideoPacketReceived != null ? firstVideoPacketReceived() : this.firstVideoPacketReceived,
  lastAudioPacketReceived: lastAudioPacketReceived != null ? lastAudioPacketReceived() : this.lastAudioPacketReceived,
  lastVideoPacketReceived: lastVideoPacketReceived != null ? lastVideoPacketReceived() : this.lastVideoPacketReceived,
  peerIds: peerIds != null ? peerIds() : this.peerIds,
  start: start != null ? start() : this.start,
  totalAudioPackets: totalAudioPackets != null ? totalAudioPackets() : this.totalAudioPackets,
  totalAudioPacketsLost: totalAudioPacketsLost != null ? totalAudioPacketsLost() : this.totalAudioPacketsLost,
  totalVideoPackets: totalVideoPackets != null ? totalVideoPackets() : this.totalVideoPackets,
  totalVideoPacketsLost: totalVideoPacketsLost != null ? totalVideoPacketsLost() : this.totalVideoPacketsLost,
  videoBandwidth: videoBandwidth != null ? videoBandwidth() : this.videoBandwidth,
  videoStats: videoStats != null ? videoStats() : this.videoStats,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDataFromPeerIdResponseDataParticipantQualityStats &&
          audioBandwidth == other.audioBandwidth &&
          listEquals(audioStats, other.audioStats) &&
          averageQuality == other.averageQuality &&
          end == other.end &&
          firstAudioPacketReceived == other.firstAudioPacketReceived &&
          firstVideoPacketReceived == other.firstVideoPacketReceived &&
          lastAudioPacketReceived == other.lastAudioPacketReceived &&
          lastVideoPacketReceived == other.lastVideoPacketReceived &&
          listEquals(peerIds, other.peerIds) &&
          start == other.start &&
          totalAudioPackets == other.totalAudioPackets &&
          totalAudioPacketsLost == other.totalAudioPacketsLost &&
          totalVideoPackets == other.totalVideoPackets &&
          totalVideoPacketsLost == other.totalVideoPacketsLost &&
          videoBandwidth == other.videoBandwidth &&
          listEquals(videoStats, other.videoStats); } 
@override int get hashCode { return Object.hash(audioBandwidth, Object.hashAll(audioStats ?? const []), averageQuality, end, firstAudioPacketReceived, firstVideoPacketReceived, lastAudioPacketReceived, lastVideoPacketReceived, Object.hashAll(peerIds ?? const []), start, totalAudioPackets, totalAudioPacketsLost, totalVideoPackets, totalVideoPacketsLost, videoBandwidth, Object.hashAll(videoStats ?? const [])); } 
@override String toString() { return 'GetParticipantDataFromPeerIdResponseDataParticipantQualityStats(audioBandwidth: $audioBandwidth, audioStats: $audioStats, averageQuality: $averageQuality, end: $end, firstAudioPacketReceived: $firstAudioPacketReceived, firstVideoPacketReceived: $firstVideoPacketReceived, lastAudioPacketReceived: $lastAudioPacketReceived, lastVideoPacketReceived: $lastVideoPacketReceived, peerIds: $peerIds, start: $start, totalAudioPackets: $totalAudioPackets, totalAudioPacketsLost: $totalAudioPacketsLost, totalVideoPackets: $totalVideoPackets, totalVideoPacketsLost: $totalVideoPacketsLost, videoBandwidth: $videoBandwidth, videoStats: $videoStats)'; } 
 }
