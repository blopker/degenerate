// GENERATED CODE - DO NOT MODIFY BY HAND

import 'realtimekit_ai_config.dart';import 'realtimekit_recording_config.dart';final class CreateMeetingRequest {const CreateMeetingRequest({this.aiConfig, this.liveStreamOnStart = false, this.persistChat = false, this.recordOnStart = false, this.recordingConfig, this.sessionKeepAliveTimeInSecs = 60.0, this.summarizeOnEnd = false, this.title, });

factory CreateMeetingRequest.fromJson(Map<String, dynamic> json) { return CreateMeetingRequest(
  aiConfig: json['ai_config'] != null ? RealtimekitAiConfig.fromJson(json['ai_config'] as Map<String, dynamic>) : null,
  liveStreamOnStart: json.containsKey('live_stream_on_start') ? json['live_stream_on_start'] as bool? : false,
  persistChat: json.containsKey('persist_chat') ? json['persist_chat'] as bool : false,
  recordOnStart: json.containsKey('record_on_start') ? json['record_on_start'] as bool? : false,
  recordingConfig: json['recording_config'] != null ? RealtimekitRecordingConfig.fromJson(json['recording_config'] as Map<String, dynamic>) : null,
  sessionKeepAliveTimeInSecs: json.containsKey('session_keep_alive_time_in_secs') ? (json['session_keep_alive_time_in_secs'] as num).toDouble() : 60.0,
  summarizeOnEnd: json.containsKey('summarize_on_end') ? json['summarize_on_end'] as bool : false,
  title: json['title'] as String?,
); }

final RealtimekitAiConfig? aiConfig;

/// Specifies if the meeting should start getting livestreamed on start.
final bool? liveStreamOnStart;

/// If a meeting is set to persist_chat, meeting chat would remain for a week within the meeting space.
final bool persistChat;

/// Specifies if the meeting should start getting recorded as soon as someone joins the meeting.
final bool? recordOnStart;

final RealtimekitRecordingConfig? recordingConfig;

/// Time in seconds, for which a session remains active, after the last participant has left the meeting.
final double sessionKeepAliveTimeInSecs;

/// Automatically generate summary of meetings using transcripts. Requires Transcriptions to be enabled, and can be retrieved via Webhooks or summary API.
final bool summarizeOnEnd;

/// Title of the meeting
final String? title;

Map<String, dynamic> toJson() { return {
  if (aiConfig != null) 'ai_config': aiConfig?.toJson(),
  'live_stream_on_start': ?liveStreamOnStart,
  'persist_chat': persistChat,
  'record_on_start': ?recordOnStart,
  if (recordingConfig != null) 'recording_config': recordingConfig?.toJson(),
  'session_keep_alive_time_in_secs': sessionKeepAliveTimeInSecs,
  'summarize_on_end': summarizeOnEnd,
  'title': ?title,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ai_config', 'live_stream_on_start', 'persist_chat', 'record_on_start', 'recording_config', 'session_keep_alive_time_in_secs', 'summarize_on_end', 'title'}.contains(key)); } 
CreateMeetingRequest copyWith({RealtimekitAiConfig Function()? aiConfig, bool? Function()? liveStreamOnStart, bool Function()? persistChat, bool? Function()? recordOnStart, RealtimekitRecordingConfig Function()? recordingConfig, double Function()? sessionKeepAliveTimeInSecs, bool Function()? summarizeOnEnd, String? Function()? title, }) { return CreateMeetingRequest(
  aiConfig: aiConfig != null ? aiConfig() : this.aiConfig,
  liveStreamOnStart: liveStreamOnStart != null ? liveStreamOnStart() : this.liveStreamOnStart,
  persistChat: persistChat != null ? persistChat() : this.persistChat,
  recordOnStart: recordOnStart != null ? recordOnStart() : this.recordOnStart,
  recordingConfig: recordingConfig != null ? recordingConfig() : this.recordingConfig,
  sessionKeepAliveTimeInSecs: sessionKeepAliveTimeInSecs != null ? sessionKeepAliveTimeInSecs() : this.sessionKeepAliveTimeInSecs,
  summarizeOnEnd: summarizeOnEnd != null ? summarizeOnEnd() : this.summarizeOnEnd,
  title: title != null ? title() : this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateMeetingRequest &&
          aiConfig == other.aiConfig &&
          liveStreamOnStart == other.liveStreamOnStart &&
          persistChat == other.persistChat &&
          recordOnStart == other.recordOnStart &&
          recordingConfig == other.recordingConfig &&
          sessionKeepAliveTimeInSecs == other.sessionKeepAliveTimeInSecs &&
          summarizeOnEnd == other.summarizeOnEnd &&
          title == other.title; } 
@override int get hashCode { return Object.hash(aiConfig, liveStreamOnStart, persistChat, recordOnStart, recordingConfig, sessionKeepAliveTimeInSecs, summarizeOnEnd, title); } 
@override String toString() { return 'CreateMeetingRequest(aiConfig: $aiConfig, liveStreamOnStart: $liveStreamOnStart, persistChat: $persistChat, recordOnStart: $recordOnStart, recordingConfig: $recordingConfig, sessionKeepAliveTimeInSecs: $sessionKeepAliveTimeInSecs, summarizeOnEnd: $summarizeOnEnd, title: $title)'; } 
 }
