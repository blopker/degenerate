// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_participant_details_response_data_participant_quality_stats_audio_stats.dart';import 'get_participant_details_response_data_participant_quality_stats_video_stats.dart';@immutable final class GetParticipantDetailsResponseDataParticipantQualityStats {const GetParticipantDetailsResponseDataParticipantQualityStats({this.audioBandwidth, this.audioPacketLoss, this.audioStats, this.averageQuality, this.end, this.peerId, this.start, this.videoBandwidth, this.videoPacketLoss, this.videoStats, });

factory GetParticipantDetailsResponseDataParticipantQualityStats.fromJson(Map<String, dynamic> json) { return GetParticipantDetailsResponseDataParticipantQualityStats(
  audioBandwidth: json['audio_bandwidth'] != null ? (json['audio_bandwidth'] as num).toDouble() : null,
  audioPacketLoss: json['audio_packet_loss'] != null ? (json['audio_packet_loss'] as num).toDouble() : null,
  audioStats: (json['audio_stats'] as List<dynamic>?)?.map((e) => GetParticipantDetailsResponseDataParticipantQualityStatsAudioStats.fromJson(e as Map<String, dynamic>)).toList(),
  averageQuality: json['average_quality'] != null ? (json['average_quality'] as num).toDouble() : null,
  end: json['end'] as String?,
  peerId: json['peer_id'] as String?,
  start: json['start'] as String?,
  videoBandwidth: json['video_bandwidth'] != null ? (json['video_bandwidth'] as num).toDouble() : null,
  videoPacketLoss: json['video_packet_loss'] != null ? (json['video_packet_loss'] as num).toDouble() : null,
  videoStats: (json['video_stats'] as List<dynamic>?)?.map((e) => GetParticipantDetailsResponseDataParticipantQualityStatsVideoStats.fromJson(e as Map<String, dynamic>)).toList(),
); }

final double? audioBandwidth;

final double? audioPacketLoss;

final List<GetParticipantDetailsResponseDataParticipantQualityStatsAudioStats>? audioStats;

final double? averageQuality;

final String? end;

final String? peerId;

final String? start;

final double? videoBandwidth;

final double? videoPacketLoss;

final List<GetParticipantDetailsResponseDataParticipantQualityStatsVideoStats>? videoStats;

Map<String, dynamic> toJson() { return {
  'audio_bandwidth': ?audioBandwidth,
  'audio_packet_loss': ?audioPacketLoss,
  if (audioStats != null) 'audio_stats': audioStats?.map((e) => e.toJson()).toList(),
  'average_quality': ?averageQuality,
  'end': ?end,
  'peer_id': ?peerId,
  'start': ?start,
  'video_bandwidth': ?videoBandwidth,
  'video_packet_loss': ?videoPacketLoss,
  if (videoStats != null) 'video_stats': videoStats?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'audio_bandwidth', 'audio_packet_loss', 'audio_stats', 'average_quality', 'end', 'peer_id', 'start', 'video_bandwidth', 'video_packet_loss', 'video_stats'}.contains(key)); } 
GetParticipantDetailsResponseDataParticipantQualityStats copyWith({double Function()? audioBandwidth, double Function()? audioPacketLoss, List<GetParticipantDetailsResponseDataParticipantQualityStatsAudioStats> Function()? audioStats, double Function()? averageQuality, String Function()? end, String Function()? peerId, String Function()? start, double Function()? videoBandwidth, double Function()? videoPacketLoss, List<GetParticipantDetailsResponseDataParticipantQualityStatsVideoStats> Function()? videoStats, }) { return GetParticipantDetailsResponseDataParticipantQualityStats(
  audioBandwidth: audioBandwidth != null ? audioBandwidth() : this.audioBandwidth,
  audioPacketLoss: audioPacketLoss != null ? audioPacketLoss() : this.audioPacketLoss,
  audioStats: audioStats != null ? audioStats() : this.audioStats,
  averageQuality: averageQuality != null ? averageQuality() : this.averageQuality,
  end: end != null ? end() : this.end,
  peerId: peerId != null ? peerId() : this.peerId,
  start: start != null ? start() : this.start,
  videoBandwidth: videoBandwidth != null ? videoBandwidth() : this.videoBandwidth,
  videoPacketLoss: videoPacketLoss != null ? videoPacketLoss() : this.videoPacketLoss,
  videoStats: videoStats != null ? videoStats() : this.videoStats,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetParticipantDetailsResponseDataParticipantQualityStats &&
          audioBandwidth == other.audioBandwidth &&
          audioPacketLoss == other.audioPacketLoss &&
          listEquals(audioStats, other.audioStats) &&
          averageQuality == other.averageQuality &&
          end == other.end &&
          peerId == other.peerId &&
          start == other.start &&
          videoBandwidth == other.videoBandwidth &&
          videoPacketLoss == other.videoPacketLoss &&
          listEquals(videoStats, other.videoStats); } 
@override int get hashCode { return Object.hash(audioBandwidth, audioPacketLoss, Object.hashAll(audioStats ?? const []), averageQuality, end, peerId, start, videoBandwidth, videoPacketLoss, Object.hashAll(videoStats ?? const [])); } 
@override String toString() { return 'GetParticipantDetailsResponseDataParticipantQualityStats(audioBandwidth: $audioBandwidth, audioPacketLoss: $audioPacketLoss, audioStats: $audioStats, averageQuality: $averageQuality, end: $end, peerId: $peerId, start: $start, videoBandwidth: $videoBandwidth, videoPacketLoss: $videoPacketLoss, videoStats: $videoStats)'; } 
 }
