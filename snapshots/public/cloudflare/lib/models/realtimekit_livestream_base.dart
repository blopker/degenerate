// GENERATED CODE - DO NOT MODIFY BY HAND

/// The status of the livestream.
final class RealtimekitLivestreamBaseStatus {const RealtimekitLivestreamBaseStatus._(this.value);

factory RealtimekitLivestreamBaseStatus.fromJson(String json) { return switch (json) {
  'LIVE' => live,
  'IDLE' => idle,
  'ERRORED' => errored,
  'INVOKED' => invoked,
  _ => RealtimekitLivestreamBaseStatus._(json),
}; }

static const RealtimekitLivestreamBaseStatus live = RealtimekitLivestreamBaseStatus._('LIVE');

static const RealtimekitLivestreamBaseStatus idle = RealtimekitLivestreamBaseStatus._('IDLE');

static const RealtimekitLivestreamBaseStatus errored = RealtimekitLivestreamBaseStatus._('ERRORED');

static const RealtimekitLivestreamBaseStatus invoked = RealtimekitLivestreamBaseStatus._('INVOKED');

static const List<RealtimekitLivestreamBaseStatus> values = [live, idle, errored, invoked];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimekitLivestreamBaseStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimekitLivestreamBaseStatus($value)'; } 
 }
final class RealtimekitLivestreamBase {const RealtimekitLivestreamBase({this.createdAt, this.disabled, this.id, this.ingestServer, this.meetingId, this.name, this.orgId, this.playbackUrl, this.status, this.streamKey, this.updatedAt, });

factory RealtimekitLivestreamBase.fromJson(Map<String, dynamic> json) { return RealtimekitLivestreamBase(
  createdAt: json['created_at'] != null ? DateTime.parse(json['created_at'] as String) : null,
  disabled: json['disabled'] as bool?,
  id: json['id'] as String?,
  ingestServer: json['ingest_server'] as String?,
  meetingId: json['meeting_id'] as String?,
  name: json['name'] as String?,
  orgId: json['org_id'] as String?,
  playbackUrl: json['playback_url'] as String?,
  status: json['status'] != null ? RealtimekitLivestreamBaseStatus.fromJson(json['status'] as String) : null,
  streamKey: json['stream_key'] as String?,
  updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at'] as String) : null,
); }

/// The timestamp at which the livestream was created. The time is returned in ISO format.
final DateTime? createdAt;

/// Specifies if the livestream was disabled.
final bool? disabled;

/// The livestream ID.
final String? id;

/// The server URL to which the RTMP encoder sends the video and audio data.
final String? ingestServer;

/// ID of the meeting.
final String? meetingId;

/// Name of the livestream.
final String? name;

final String? orgId;

/// The web address that viewers can use to watch the livestream.
final String? playbackUrl;

/// The status of the livestream.
final RealtimekitLivestreamBaseStatus? status;

/// Unique key for accessing each livestream.
final String? streamKey;

/// The timestamp at which the livestream was updated. The time is returned in ISO format.
final DateTime? updatedAt;

Map<String, dynamic> toJson() { return {
  if (createdAt != null) 'created_at': createdAt?.toIso8601String(),
  'disabled': ?disabled,
  'id': ?id,
  'ingest_server': ?ingestServer,
  'meeting_id': ?meetingId,
  'name': ?name,
  'org_id': ?orgId,
  'playback_url': ?playbackUrl,
  if (status != null) 'status': status?.toJson(),
  'stream_key': ?streamKey,
  if (updatedAt != null) 'updated_at': updatedAt?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created_at', 'disabled', 'id', 'ingest_server', 'meeting_id', 'name', 'org_id', 'playback_url', 'status', 'stream_key', 'updated_at'}.contains(key)); } 
RealtimekitLivestreamBase copyWith({DateTime Function()? createdAt, bool Function()? disabled, String Function()? id, String Function()? ingestServer, String? Function()? meetingId, String? Function()? name, String Function()? orgId, String Function()? playbackUrl, RealtimekitLivestreamBaseStatus Function()? status, String Function()? streamKey, DateTime Function()? updatedAt, }) { return RealtimekitLivestreamBase(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  disabled: disabled != null ? disabled() : this.disabled,
  id: id != null ? id() : this.id,
  ingestServer: ingestServer != null ? ingestServer() : this.ingestServer,
  meetingId: meetingId != null ? meetingId() : this.meetingId,
  name: name != null ? name() : this.name,
  orgId: orgId != null ? orgId() : this.orgId,
  playbackUrl: playbackUrl != null ? playbackUrl() : this.playbackUrl,
  status: status != null ? status() : this.status,
  streamKey: streamKey != null ? streamKey() : this.streamKey,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitLivestreamBase &&
          createdAt == other.createdAt &&
          disabled == other.disabled &&
          id == other.id &&
          ingestServer == other.ingestServer &&
          meetingId == other.meetingId &&
          name == other.name &&
          orgId == other.orgId &&
          playbackUrl == other.playbackUrl &&
          status == other.status &&
          streamKey == other.streamKey &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(createdAt, disabled, id, ingestServer, meetingId, name, orgId, playbackUrl, status, streamKey, updatedAt); } 
@override String toString() { return 'RealtimekitLivestreamBase(createdAt: $createdAt, disabled: $disabled, id: $id, ingestServer: $ingestServer, meetingId: $meetingId, name: $name, orgId: $orgId, playbackUrl: $playbackUrl, status: $status, streamKey: $streamKey, updatedAt: $updatedAt)'; } 
 }
