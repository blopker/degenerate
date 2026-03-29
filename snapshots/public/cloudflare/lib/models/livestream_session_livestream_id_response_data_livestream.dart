// GENERATED CODE - DO NOT MODIFY BY HAND

final class LivestreamSessionLivestreamIdResponseDataLivestreamStatus {const LivestreamSessionLivestreamIdResponseDataLivestreamStatus._(this.value);

factory LivestreamSessionLivestreamIdResponseDataLivestreamStatus.fromJson(String json) { return switch (json) {
  'LIVE' => live,
  'IDLE' => idle,
  'ERRORED' => errored,
  'INVOKED' => invoked,
  _ => LivestreamSessionLivestreamIdResponseDataLivestreamStatus._(json),
}; }

static const LivestreamSessionLivestreamIdResponseDataLivestreamStatus live = LivestreamSessionLivestreamIdResponseDataLivestreamStatus._('LIVE');

static const LivestreamSessionLivestreamIdResponseDataLivestreamStatus idle = LivestreamSessionLivestreamIdResponseDataLivestreamStatus._('IDLE');

static const LivestreamSessionLivestreamIdResponseDataLivestreamStatus errored = LivestreamSessionLivestreamIdResponseDataLivestreamStatus._('ERRORED');

static const LivestreamSessionLivestreamIdResponseDataLivestreamStatus invoked = LivestreamSessionLivestreamIdResponseDataLivestreamStatus._('INVOKED');

static const List<LivestreamSessionLivestreamIdResponseDataLivestreamStatus> values = [live, idle, errored, invoked];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is LivestreamSessionLivestreamIdResponseDataLivestreamStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'LivestreamSessionLivestreamIdResponseDataLivestreamStatus($value)'; } 
 }
final class LivestreamSessionLivestreamIdResponseDataLivestream {const LivestreamSessionLivestreamIdResponseDataLivestream({this.createdAt, this.disabled, this.id, this.ingestServer, this.meetingId, this.name, this.playbackUrl, this.status, this.streamKey, this.updatedAt, });

factory LivestreamSessionLivestreamIdResponseDataLivestream.fromJson(Map<String, dynamic> json) { return LivestreamSessionLivestreamIdResponseDataLivestream(
  createdAt: json['created_at'] as String?,
  disabled: json['disabled'] as String?,
  id: json['id'] as String?,
  ingestServer: json['ingest_server'] as String?,
  meetingId: json['meeting_id'] as String?,
  name: json['name'] as String?,
  playbackUrl: json['playback_url'] as String?,
  status: json['status'] != null ? LivestreamSessionLivestreamIdResponseDataLivestreamStatus.fromJson(json['status'] as String) : null,
  streamKey: json['stream_key'] as String?,
  updatedAt: json['updated_at'] as String?,
); }

/// Timestamp the object was created at. The time is returned in ISO format.
final String? createdAt;

/// Specifies if the livestream was disabled.
final String? disabled;

/// ID of the livestream.
final String? id;

/// The server URL to which the RTMP encoder sends the video and audio data.
final String? ingestServer;

/// The ID of the meeting.
final String? meetingId;

/// Name of the livestream.
final String? name;

/// The web address that viewers can use to watch the livestream.
final String? playbackUrl;

final LivestreamSessionLivestreamIdResponseDataLivestreamStatus? status;

/// Unique key for accessing each livestream.
final String? streamKey;

/// Timestamp the object was updated at. The time is returned in ISO format.
final String? updatedAt;

Map<String, dynamic> toJson() { return {
  'created_at': ?createdAt,
  'disabled': ?disabled,
  'id': ?id,
  'ingest_server': ?ingestServer,
  'meeting_id': ?meetingId,
  'name': ?name,
  'playback_url': ?playbackUrl,
  if (status != null) 'status': status?.toJson(),
  'stream_key': ?streamKey,
  'updated_at': ?updatedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
LivestreamSessionLivestreamIdResponseDataLivestream copyWith({String Function()? createdAt, String Function()? disabled, String Function()? id, String Function()? ingestServer, String Function()? meetingId, String Function()? name, String Function()? playbackUrl, LivestreamSessionLivestreamIdResponseDataLivestreamStatus Function()? status, String Function()? streamKey, String Function()? updatedAt, }) { return LivestreamSessionLivestreamIdResponseDataLivestream(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  disabled: disabled != null ? disabled() : this.disabled,
  id: id != null ? id() : this.id,
  ingestServer: ingestServer != null ? ingestServer() : this.ingestServer,
  meetingId: meetingId != null ? meetingId() : this.meetingId,
  name: name != null ? name() : this.name,
  playbackUrl: playbackUrl != null ? playbackUrl() : this.playbackUrl,
  status: status != null ? status() : this.status,
  streamKey: streamKey != null ? streamKey() : this.streamKey,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LivestreamSessionLivestreamIdResponseDataLivestream &&
          createdAt == other.createdAt &&
          disabled == other.disabled &&
          id == other.id &&
          ingestServer == other.ingestServer &&
          meetingId == other.meetingId &&
          name == other.name &&
          playbackUrl == other.playbackUrl &&
          status == other.status &&
          streamKey == other.streamKey &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(createdAt, disabled, id, ingestServer, meetingId, name, playbackUrl, status, streamKey, updatedAt); } 
@override String toString() { return 'LivestreamSessionLivestreamIdResponseDataLivestream(createdAt: $createdAt, disabled: $disabled, id: $id, ingestServer: $ingestServer, meetingId: $meetingId, name: $name, playbackUrl: $playbackUrl, status: $status, streamKey: $streamKey, updatedAt: $updatedAt)'; } 
 }
