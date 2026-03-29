// GENERATED CODE - DO NOT MODIFY BY HAND

/// Whether the meeting is `ACTIVE` or `INACTIVE`. Users will not be able to join an `INACTIVE` meeting.
final class RealtimekitMeetingStatus {const RealtimekitMeetingStatus._(this.value);

factory RealtimekitMeetingStatus.fromJson(String json) { return switch (json) {
  'ACTIVE' => active,
  'INACTIVE' => inactive,
  _ => RealtimekitMeetingStatus._(json),
}; }

static const RealtimekitMeetingStatus active = RealtimekitMeetingStatus._('ACTIVE');

static const RealtimekitMeetingStatus inactive = RealtimekitMeetingStatus._('INACTIVE');

static const List<RealtimekitMeetingStatus> values = [active, inactive];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimekitMeetingStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimekitMeetingStatus($value)'; } 
 }
final class RealtimekitMeeting {const RealtimekitMeeting({required this.createdAt, required this.id, this.liveStreamOnStart, this.persistChat, this.recordOnStart, this.sessionKeepAliveTimeInSecs = 60.0, this.status, this.summarizeOnEnd, this.title, required this.updatedAt, });

factory RealtimekitMeeting.fromJson(Map<String, dynamic> json) { return RealtimekitMeeting(
  createdAt: DateTime.parse(json['created_at'] as String),
  id: json['id'] as String,
  liveStreamOnStart: json['live_stream_on_start'] as bool?,
  persistChat: json['persist_chat'] as bool?,
  recordOnStart: json['record_on_start'] as bool?,
  sessionKeepAliveTimeInSecs: json.containsKey('session_keep_alive_time_in_secs') ? (json['session_keep_alive_time_in_secs'] as num).toDouble() : 60.0,
  status: json['status'] != null ? RealtimekitMeetingStatus.fromJson(json['status'] as String) : null,
  summarizeOnEnd: json['summarize_on_end'] as bool?,
  title: json['title'] as String?,
  updatedAt: DateTime.parse(json['updated_at'] as String),
); }

/// Timestamp the object was created at. The time is returned in ISO format.
final DateTime createdAt;

/// ID of the meeting.
final String id;

/// Specifies if the meeting should start getting livestreamed on start.
final bool? liveStreamOnStart;

/// Specifies if Chat within a meeting should persist for a week.
final bool? persistChat;

/// Specifies if the meeting should start getting recorded as soon as someone joins the meeting.
final bool? recordOnStart;

/// Time in seconds, for which a session remains active, after the last participant has left the meeting.
final double sessionKeepAliveTimeInSecs;

/// Whether the meeting is `ACTIVE` or `INACTIVE`. Users will not be able to join an `INACTIVE` meeting.
final RealtimekitMeetingStatus? status;

/// Automatically generate summary of meetings using transcripts. Requires Transcriptions to be enabled, and can be retrieved via Webhooks or summary API.
final bool? summarizeOnEnd;

/// Title of the meeting.
final String? title;

/// Timestamp the object was updated at. The time is returned in ISO format.
final DateTime updatedAt;

Map<String, dynamic> toJson() { return {
  'created_at': createdAt.toIso8601String(),
  'id': id,
  'live_stream_on_start': ?liveStreamOnStart,
  'persist_chat': ?persistChat,
  'record_on_start': ?recordOnStart,
  'session_keep_alive_time_in_secs': sessionKeepAliveTimeInSecs,
  if (status != null) 'status': status?.toJson(),
  'summarize_on_end': ?summarizeOnEnd,
  'title': ?title,
  'updated_at': updatedAt.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('updated_at') && json['updated_at'] is String; } 
RealtimekitMeeting copyWith({DateTime? createdAt, String? id, bool Function()? liveStreamOnStart, bool Function()? persistChat, bool Function()? recordOnStart, double Function()? sessionKeepAliveTimeInSecs, RealtimekitMeetingStatus Function()? status, bool Function()? summarizeOnEnd, String Function()? title, DateTime? updatedAt, }) { return RealtimekitMeeting(
  createdAt: createdAt ?? this.createdAt,
  id: id ?? this.id,
  liveStreamOnStart: liveStreamOnStart != null ? liveStreamOnStart() : this.liveStreamOnStart,
  persistChat: persistChat != null ? persistChat() : this.persistChat,
  recordOnStart: recordOnStart != null ? recordOnStart() : this.recordOnStart,
  sessionKeepAliveTimeInSecs: sessionKeepAliveTimeInSecs != null ? sessionKeepAliveTimeInSecs() : this.sessionKeepAliveTimeInSecs,
  status: status != null ? status() : this.status,
  summarizeOnEnd: summarizeOnEnd != null ? summarizeOnEnd() : this.summarizeOnEnd,
  title: title != null ? title() : this.title,
  updatedAt: updatedAt ?? this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitMeeting &&
          createdAt == other.createdAt &&
          id == other.id &&
          liveStreamOnStart == other.liveStreamOnStart &&
          persistChat == other.persistChat &&
          recordOnStart == other.recordOnStart &&
          sessionKeepAliveTimeInSecs == other.sessionKeepAliveTimeInSecs &&
          status == other.status &&
          summarizeOnEnd == other.summarizeOnEnd &&
          title == other.title &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(createdAt, id, liveStreamOnStart, persistChat, recordOnStart, sessionKeepAliveTimeInSecs, status, summarizeOnEnd, title, updatedAt); } 
@override String toString() { return 'RealtimekitMeeting(createdAt: $createdAt, id: $id, liveStreamOnStart: $liveStreamOnStart, persistChat: $persistChat, recordOnStart: $recordOnStart, sessionKeepAliveTimeInSecs: $sessionKeepAliveTimeInSecs, status: $status, summarizeOnEnd: $summarizeOnEnd, title: $title, updatedAt: $updatedAt)'; } 
 }
