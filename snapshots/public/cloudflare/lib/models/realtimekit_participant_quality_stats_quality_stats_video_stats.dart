// GENERATED CODE - DO NOT MODIFY BY HAND

final class RealtimekitParticipantQualityStatsQualityStatsVideoStats {const RealtimekitParticipantQualityStatsQualityStatsVideoStats({this.frameHeight, this.frameWidth, this.framesDropped, this.framesPerSecond, this.jitter, this.packetsLost, this.quality, this.timestamp, });

factory RealtimekitParticipantQualityStatsQualityStatsVideoStats.fromJson(Map<String, dynamic> json) { return RealtimekitParticipantQualityStatsQualityStatsVideoStats(
  frameHeight: json['frame_height'] != null ? (json['frame_height'] as num).toDouble() : null,
  frameWidth: json['frame_width'] != null ? (json['frame_width'] as num).toDouble() : null,
  framesDropped: json['frames_dropped'] != null ? (json['frames_dropped'] as num).toDouble() : null,
  framesPerSecond: json['frames_per_second'] != null ? (json['frames_per_second'] as num).toDouble() : null,
  jitter: json['jitter'] != null ? (json['jitter'] as num).toDouble() : null,
  packetsLost: json['packets_lost'] != null ? (json['packets_lost'] as num).toDouble() : null,
  quality: json['quality'] != null ? (json['quality'] as num).toDouble() : null,
  timestamp: json['timestamp'] as String?,
); }

final double? frameHeight;

final double? frameWidth;

final double? framesDropped;

final double? framesPerSecond;

final double? jitter;

final double? packetsLost;

final double? quality;

final String? timestamp;

Map<String, dynamic> toJson() { return {
  'frame_height': ?frameHeight,
  'frame_width': ?frameWidth,
  'frames_dropped': ?framesDropped,
  'frames_per_second': ?framesPerSecond,
  'jitter': ?jitter,
  'packets_lost': ?packetsLost,
  'quality': ?quality,
  'timestamp': ?timestamp,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RealtimekitParticipantQualityStatsQualityStatsVideoStats copyWith({double Function()? frameHeight, double Function()? frameWidth, double Function()? framesDropped, double Function()? framesPerSecond, double Function()? jitter, double Function()? packetsLost, double Function()? quality, String Function()? timestamp, }) { return RealtimekitParticipantQualityStatsQualityStatsVideoStats(
  frameHeight: frameHeight != null ? frameHeight() : this.frameHeight,
  frameWidth: frameWidth != null ? frameWidth() : this.frameWidth,
  framesDropped: framesDropped != null ? framesDropped() : this.framesDropped,
  framesPerSecond: framesPerSecond != null ? framesPerSecond() : this.framesPerSecond,
  jitter: jitter != null ? jitter() : this.jitter,
  packetsLost: packetsLost != null ? packetsLost() : this.packetsLost,
  quality: quality != null ? quality() : this.quality,
  timestamp: timestamp != null ? timestamp() : this.timestamp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitParticipantQualityStatsQualityStatsVideoStats &&
          frameHeight == other.frameHeight &&
          frameWidth == other.frameWidth &&
          framesDropped == other.framesDropped &&
          framesPerSecond == other.framesPerSecond &&
          jitter == other.jitter &&
          packetsLost == other.packetsLost &&
          quality == other.quality &&
          timestamp == other.timestamp; } 
@override int get hashCode { return Object.hash(frameHeight, frameWidth, framesDropped, framesPerSecond, jitter, packetsLost, quality, timestamp); } 
@override String toString() { return 'RealtimekitParticipantQualityStatsQualityStatsVideoStats(frameHeight: $frameHeight, frameWidth: $frameWidth, framesDropped: $framesDropped, framesPerSecond: $framesPerSecond, jitter: $jitter, packetsLost: $packetsLost, quality: $quality, timestamp: $timestamp)'; } 
 }
