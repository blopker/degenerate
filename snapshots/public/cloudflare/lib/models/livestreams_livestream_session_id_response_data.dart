// GENERATED CODE - DO NOT MODIFY BY HAND

final class LivestreamsLivestreamSessionIdResponseData {const LivestreamsLivestreamSessionIdResponseData({this.createdAt, this.errMessage, this.id, this.ingestSeconds, this.livestreamId, this.startedTime, this.stoppedTime, this.updatedAt, this.viewerSeconds, });

factory LivestreamsLivestreamSessionIdResponseData.fromJson(Map<String, dynamic> json) { return LivestreamsLivestreamSessionIdResponseData(
  createdAt: json['created_at'] != null ? DateTime.parse(json['created_at'] as String) : null,
  errMessage: json['err_message'] as String?,
  id: json['id'] as String?,
  ingestSeconds: json['ingest_seconds'] != null ? (json['ingest_seconds'] as num).toInt() : null,
  livestreamId: json['livestream_id'] as String?,
  startedTime: json['started_time'] as String?,
  stoppedTime: json['stopped_time'] as String?,
  updatedAt: json['updated_at'] as String?,
  viewerSeconds: json['viewer_seconds'] != null ? (json['viewer_seconds'] as num).toInt() : null,
); }

/// Timestamp the object was created at. The time is returned in ISO format.
final DateTime? createdAt;

/// The server URL to which the RTMP encoder sends the video and audio data.
final String? errMessage;

/// The livestream ID.
final String? id;

/// Name of the livestream.
final int? ingestSeconds;

final String? livestreamId;

/// Unique key for accessing each livestream.
final String? startedTime;

/// The web address that viewers can use to watch the livestream.
final String? stoppedTime;

/// Timestamp the object was updated at. The time is returned in ISO format.
final String? updatedAt;

/// Specifies if the livestream was disabled.
final int? viewerSeconds;

Map<String, dynamic> toJson() { return {
  if (createdAt != null) 'created_at': createdAt?.toIso8601String(),
  'err_message': ?errMessage,
  'id': ?id,
  'ingest_seconds': ?ingestSeconds,
  'livestream_id': ?livestreamId,
  'started_time': ?startedTime,
  'stopped_time': ?stoppedTime,
  'updated_at': ?updatedAt,
  'viewer_seconds': ?viewerSeconds,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created_at', 'err_message', 'id', 'ingest_seconds', 'livestream_id', 'started_time', 'stopped_time', 'updated_at', 'viewer_seconds'}.contains(key)); } 
LivestreamsLivestreamSessionIdResponseData copyWith({DateTime Function()? createdAt, String Function()? errMessage, String Function()? id, int Function()? ingestSeconds, String Function()? livestreamId, String Function()? startedTime, String Function()? stoppedTime, String Function()? updatedAt, int Function()? viewerSeconds, }) { return LivestreamsLivestreamSessionIdResponseData(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  errMessage: errMessage != null ? errMessage() : this.errMessage,
  id: id != null ? id() : this.id,
  ingestSeconds: ingestSeconds != null ? ingestSeconds() : this.ingestSeconds,
  livestreamId: livestreamId != null ? livestreamId() : this.livestreamId,
  startedTime: startedTime != null ? startedTime() : this.startedTime,
  stoppedTime: stoppedTime != null ? stoppedTime() : this.stoppedTime,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  viewerSeconds: viewerSeconds != null ? viewerSeconds() : this.viewerSeconds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LivestreamsLivestreamSessionIdResponseData &&
          createdAt == other.createdAt &&
          errMessage == other.errMessage &&
          id == other.id &&
          ingestSeconds == other.ingestSeconds &&
          livestreamId == other.livestreamId &&
          startedTime == other.startedTime &&
          stoppedTime == other.stoppedTime &&
          updatedAt == other.updatedAt &&
          viewerSeconds == other.viewerSeconds; } 
@override int get hashCode { return Object.hash(createdAt, errMessage, id, ingestSeconds, livestreamId, startedTime, stoppedTime, updatedAt, viewerSeconds); } 
@override String toString() { return 'LivestreamsLivestreamSessionIdResponseData(createdAt: $createdAt, errMessage: $errMessage, id: $id, ingestSeconds: $ingestSeconds, livestreamId: $livestreamId, startedTime: $startedTime, stoppedTime: $stoppedTime, updatedAt: $updatedAt, viewerSeconds: $viewerSeconds)'; } 
 }
