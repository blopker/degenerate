// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'stream_creator.dart';@immutable final class StreamStorageUseResponseResult {const StreamStorageUseResponseResult({this.creator, this.totalStorageMinutes, this.totalStorageMinutesLimit, this.videoCount, });

factory StreamStorageUseResponseResult.fromJson(Map<String, dynamic> json) { return StreamStorageUseResponseResult(
  creator: json['creator'] != null ? StreamCreator.fromJson(json['creator'] as String) : null,
  totalStorageMinutes: json['totalStorageMinutes'] != null ? (json['totalStorageMinutes'] as num).toInt() : null,
  totalStorageMinutesLimit: json['totalStorageMinutesLimit'] != null ? (json['totalStorageMinutesLimit'] as num).toInt() : null,
  videoCount: json['videoCount'] != null ? (json['videoCount'] as num).toInt() : null,
); }

/// A user-defined identifier for the media creator.
final StreamCreator? creator;

/// The total minutes of video content stored in the account.
final int? totalStorageMinutes;

/// The storage capacity alloted for the account.
final int? totalStorageMinutesLimit;

/// The total count of videos associated with the account.
final int? videoCount;

Map<String, dynamic> toJson() { return {
  if (creator != null) 'creator': creator?.toJson(),
  'totalStorageMinutes': ?totalStorageMinutes,
  'totalStorageMinutesLimit': ?totalStorageMinutesLimit,
  'videoCount': ?videoCount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'creator', 'totalStorageMinutes', 'totalStorageMinutesLimit', 'videoCount'}.contains(key)); } 
StreamStorageUseResponseResult copyWith({StreamCreator Function()? creator, int Function()? totalStorageMinutes, int Function()? totalStorageMinutesLimit, int Function()? videoCount, }) { return StreamStorageUseResponseResult(
  creator: creator != null ? creator() : this.creator,
  totalStorageMinutes: totalStorageMinutes != null ? totalStorageMinutes() : this.totalStorageMinutes,
  totalStorageMinutesLimit: totalStorageMinutesLimit != null ? totalStorageMinutesLimit() : this.totalStorageMinutesLimit,
  videoCount: videoCount != null ? videoCount() : this.videoCount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamStorageUseResponseResult &&
          creator == other.creator &&
          totalStorageMinutes == other.totalStorageMinutes &&
          totalStorageMinutesLimit == other.totalStorageMinutesLimit &&
          videoCount == other.videoCount; } 
@override int get hashCode { return Object.hash(creator, totalStorageMinutes, totalStorageMinutesLimit, videoCount); } 
@override String toString() { return 'StreamStorageUseResponseResult(creator: $creator, totalStorageMinutes: $totalStorageMinutes, totalStorageMinutesLimit: $totalStorageMinutesLimit, videoCount: $videoCount)'; } 
 }
