// GENERATED CODE - DO NOT MODIFY BY HAND

import 'realtimekit_ai_config.dart';/// Whether the meeting is `ACTIVE` or `INACTIVE`. Users will not be able to join an `INACTIVE` meeting.
final class UpdateMeetingRequestStatus {const UpdateMeetingRequestStatus._(this.value);

factory UpdateMeetingRequestStatus.fromJson(String json) { return switch (json) {
  'ACTIVE' => active,
  'INACTIVE' => inactive,
  _ => UpdateMeetingRequestStatus._(json),
}; }

static const UpdateMeetingRequestStatus active = UpdateMeetingRequestStatus._('ACTIVE');

static const UpdateMeetingRequestStatus inactive = UpdateMeetingRequestStatus._('INACTIVE');

static const List<UpdateMeetingRequestStatus> values = [active, inactive];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UpdateMeetingRequestStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UpdateMeetingRequestStatus($value)'; } 
 }
final class UpdateMeetingRequest {const UpdateMeetingRequest({this.aiConfig, this.liveStreamOnStart = false, this.persistChat = false, this.recordOnStart = false, this.sessionKeepAliveTimeInSecs = 60.0, this.status, this.summarizeOnEnd = false, this.title, });

factory UpdateMeetingRequest.fromJson(Map<String, dynamic> json) { return UpdateMeetingRequest(
  aiConfig: json['ai_config'] != null ? RealtimekitAiConfig.fromJson(json['ai_config'] as Map<String, dynamic>) : null,
  liveStreamOnStart: json.containsKey('live_stream_on_start') ? json['live_stream_on_start'] as bool : false,
  persistChat: json.containsKey('persist_chat') ? json['persist_chat'] as bool : false,
  recordOnStart: json.containsKey('record_on_start') ? json['record_on_start'] as bool : false,
  sessionKeepAliveTimeInSecs: json.containsKey('session_keep_alive_time_in_secs') ? (json['session_keep_alive_time_in_secs'] as num).toDouble() : 60.0,
  status: json['status'] != null ? UpdateMeetingRequestStatus.fromJson(json['status'] as String) : null,
  summarizeOnEnd: json.containsKey('summarize_on_end') ? json['summarize_on_end'] as bool : false,
  title: json['title'] as String?,
); }

final RealtimekitAiConfig? aiConfig;

/// Specifies if the meeting should start getting livestreamed on start.
final bool liveStreamOnStart;

/// If a meeting is updated to persist_chat, meeting chat would remain for a week within the meeting space.
final bool persistChat;

/// Specifies if the meeting should start getting recorded as soon as someone joins the meeting.
final bool recordOnStart;

/// Time in seconds, for which a session remains active, after the last participant has left the meeting.
final double sessionKeepAliveTimeInSecs;

/// Whether the meeting is `ACTIVE` or `INACTIVE`. Users will not be able to join an `INACTIVE` meeting.
final UpdateMeetingRequestStatus? status;

/// Automatically generate summary of meetings using transcripts. Requires Transcriptions to be enabled, and can be retrieved via Webhooks or summary API.
final bool summarizeOnEnd;

/// Title of the meeting
final String? title;

Map<String, dynamic> toJson() { return {
  if (aiConfig != null) 'ai_config': aiConfig?.toJson(),
  'live_stream_on_start': liveStreamOnStart,
  'persist_chat': persistChat,
  'record_on_start': recordOnStart,
  'session_keep_alive_time_in_secs': sessionKeepAliveTimeInSecs,
  if (status != null) 'status': status?.toJson(),
  'summarize_on_end': summarizeOnEnd,
  'title': ?title,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
UpdateMeetingRequest copyWith({RealtimekitAiConfig Function()? aiConfig, bool Function()? liveStreamOnStart, bool Function()? persistChat, bool Function()? recordOnStart, double Function()? sessionKeepAliveTimeInSecs, UpdateMeetingRequestStatus Function()? status, bool Function()? summarizeOnEnd, String Function()? title, }) { return UpdateMeetingRequest(
  aiConfig: aiConfig != null ? aiConfig() : this.aiConfig,
  liveStreamOnStart: liveStreamOnStart != null ? liveStreamOnStart() : this.liveStreamOnStart,
  persistChat: persistChat != null ? persistChat() : this.persistChat,
  recordOnStart: recordOnStart != null ? recordOnStart() : this.recordOnStart,
  sessionKeepAliveTimeInSecs: sessionKeepAliveTimeInSecs != null ? sessionKeepAliveTimeInSecs() : this.sessionKeepAliveTimeInSecs,
  status: status != null ? status() : this.status,
  summarizeOnEnd: summarizeOnEnd != null ? summarizeOnEnd() : this.summarizeOnEnd,
  title: title != null ? title() : this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateMeetingRequest &&
          aiConfig == other.aiConfig &&
          liveStreamOnStart == other.liveStreamOnStart &&
          persistChat == other.persistChat &&
          recordOnStart == other.recordOnStart &&
          sessionKeepAliveTimeInSecs == other.sessionKeepAliveTimeInSecs &&
          status == other.status &&
          summarizeOnEnd == other.summarizeOnEnd &&
          title == other.title; } 
@override int get hashCode { return Object.hash(aiConfig, liveStreamOnStart, persistChat, recordOnStart, sessionKeepAliveTimeInSecs, status, summarizeOnEnd, title); } 
@override String toString() { return 'UpdateMeetingRequest(aiConfig: $aiConfig, liveStreamOnStart: $liveStreamOnStart, persistChat: $persistChat, recordOnStart: $recordOnStart, sessionKeepAliveTimeInSecs: $sessionKeepAliveTimeInSecs, status: $status, summarizeOnEnd: $summarizeOnEnd, title: $title)'; } 
 }
