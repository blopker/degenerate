// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_ai_config.dart';/// Whether the meeting is `ACTIVE` or `INACTIVE`. Users will not be able to join an `INACTIVE` meeting.
@immutable final class UpdateMeetingRequestStatus {const UpdateMeetingRequestStatus._(this.value);

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
@immutable final class UpdateMeetingRequest {const UpdateMeetingRequest({this.aiConfig, this.liveStreamOnStart, this.persistChat, this.recordOnStart, this.sessionKeepAliveTimeInSecs, this.status, this.summarizeOnEnd, this.title, });

factory UpdateMeetingRequest.fromJson(Map<String, dynamic> json) { return UpdateMeetingRequest(
  aiConfig: json['ai_config'] != null ? RealtimekitAiConfig.fromJson(json['ai_config'] as Map<String, dynamic>) : null,
  liveStreamOnStart: json['live_stream_on_start'] as bool?,
  persistChat: json['persist_chat'] as bool?,
  recordOnStart: json['record_on_start'] as bool?,
  sessionKeepAliveTimeInSecs: json['session_keep_alive_time_in_secs'] != null ? (json['session_keep_alive_time_in_secs'] as num).toDouble() : null,
  status: json['status'] != null ? UpdateMeetingRequestStatus.fromJson(json['status'] as String) : null,
  summarizeOnEnd: json['summarize_on_end'] as bool?,
  title: json['title'] as String?,
); }

final RealtimekitAiConfig? aiConfig;

/// Specifies if the meeting should start getting livestreamed on start.
final bool? liveStreamOnStart;

/// If a meeting is updated to persist_chat, meeting chat would remain for a week within the meeting space.
final bool? persistChat;

/// Specifies if the meeting should start getting recorded as soon as someone joins the meeting.
final bool? recordOnStart;

/// Time in seconds, for which a session remains active, after the last participant has left the meeting.
final double? sessionKeepAliveTimeInSecs;

/// Whether the meeting is `ACTIVE` or `INACTIVE`. Users will not be able to join an `INACTIVE` meeting.
final UpdateMeetingRequestStatus? status;

/// Automatically generate summary of meetings using transcripts. Requires Transcriptions to be enabled, and can be retrieved via Webhooks or summary API.
final bool? summarizeOnEnd;

/// Title of the meeting
final String? title;

/// The value with the schema default applied when absent.
bool get liveStreamOnStartOrDefault { return liveStreamOnStart ?? false; } 
/// The value with the schema default applied when absent.
bool get persistChatOrDefault { return persistChat ?? false; } 
/// The value with the schema default applied when absent.
bool get recordOnStartOrDefault { return recordOnStart ?? false; } 
/// The value with the schema default applied when absent.
double get sessionKeepAliveTimeInSecsOrDefault { return sessionKeepAliveTimeInSecs ?? 60.0; } 
/// The value with the schema default applied when absent.
bool get summarizeOnEndOrDefault { return summarizeOnEnd ?? false; } 
Map<String, dynamic> toJson() { return {
  if (aiConfig != null) 'ai_config': aiConfig?.toJson(),
  'live_stream_on_start': ?liveStreamOnStart,
  'persist_chat': ?persistChat,
  'record_on_start': ?recordOnStart,
  'session_keep_alive_time_in_secs': ?sessionKeepAliveTimeInSecs,
  if (status != null) 'status': status?.toJson(),
  'summarize_on_end': ?summarizeOnEnd,
  'title': ?title,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ai_config', 'live_stream_on_start', 'persist_chat', 'record_on_start', 'session_keep_alive_time_in_secs', 'status', 'summarize_on_end', 'title'}.contains(key)); } 
UpdateMeetingRequest copyWith({RealtimekitAiConfig? Function()? aiConfig, bool? Function()? liveStreamOnStart, bool? Function()? persistChat, bool? Function()? recordOnStart, double? Function()? sessionKeepAliveTimeInSecs, UpdateMeetingRequestStatus? Function()? status, bool? Function()? summarizeOnEnd, String? Function()? title, }) { return UpdateMeetingRequest(
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
