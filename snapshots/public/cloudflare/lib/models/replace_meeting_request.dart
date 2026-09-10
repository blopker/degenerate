// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_ai_config.dart';import 'realtimekit_recording_config.dart';@immutable final class ReplaceMeetingRequest {const ReplaceMeetingRequest({this.aiConfig, this.liveStreamOnStart = const Omittable.absent(), this.persistChat, this.recordOnStart = const Omittable.absent(), this.recordingConfig, this.sessionKeepAliveTimeInSecs, this.summarizeOnEnd, this.title = const Omittable.absent(), });

factory ReplaceMeetingRequest.fromJson(Map<String, dynamic> json) { return ReplaceMeetingRequest(
  aiConfig: json['ai_config'] != null ? RealtimekitAiConfig.fromJson(json['ai_config'] as Map<String, dynamic>) : null,
  liveStreamOnStart: json.containsKey('live_stream_on_start') ? Omittable(json['live_stream_on_start'] as bool?) : const Omittable.absent(),
  persistChat: json['persist_chat'] as bool?,
  recordOnStart: json.containsKey('record_on_start') ? Omittable(json['record_on_start'] as bool?) : const Omittable.absent(),
  recordingConfig: json['recording_config'] != null ? RealtimekitRecordingConfig.fromJson(json['recording_config'] as Map<String, dynamic>) : null,
  sessionKeepAliveTimeInSecs: json['session_keep_alive_time_in_secs'] != null ? (json['session_keep_alive_time_in_secs'] as num).toDouble() : null,
  summarizeOnEnd: json['summarize_on_end'] as bool?,
  title: json.containsKey('title') ? Omittable(json['title'] as String?) : const Omittable.absent(),
); }

final RealtimekitAiConfig? aiConfig;

/// Specifies if the meeting should start getting livestreamed on start.
final Omittable<bool?> liveStreamOnStart;

/// If a meeting is set to persist_chat, meeting chat would remain for a week within the meeting space.
final bool? persistChat;

/// Specifies if the meeting should start getting recorded as soon as someone joins the meeting.
final Omittable<bool?> recordOnStart;

final RealtimekitRecordingConfig? recordingConfig;

/// Time in seconds, for which a session remains active, after the last participant has left the meeting.
final double? sessionKeepAliveTimeInSecs;

/// Automatically generate summary of meetings using transcripts. Requires Transcriptions to be enabled, and can be retrieved via Webhooks or summary API.
final bool? summarizeOnEnd;

/// Title of the meeting
final Omittable<String?> title;

/// The value with the schema default applied when absent.
bool? get liveStreamOnStartOrDefault { return liveStreamOnStart.valueOr(false); } 
/// The value with the schema default applied when absent.
bool get persistChatOrDefault { return persistChat ?? false; } 
/// The value with the schema default applied when absent.
bool? get recordOnStartOrDefault { return recordOnStart.valueOr(false); } 
/// The value with the schema default applied when absent.
double get sessionKeepAliveTimeInSecsOrDefault { return sessionKeepAliveTimeInSecs ?? 60.0; } 
/// The value with the schema default applied when absent.
bool get summarizeOnEndOrDefault { return summarizeOnEnd ?? false; } 
Map<String, dynamic> toJson() { return {
  if (aiConfig != null) 'ai_config': aiConfig?.toJson(),
  if (liveStreamOnStart.isPresent) 'live_stream_on_start': liveStreamOnStart.value,
  'persist_chat': ?persistChat,
  if (recordOnStart.isPresent) 'record_on_start': recordOnStart.value,
  if (recordingConfig != null) 'recording_config': recordingConfig?.toJson(),
  'session_keep_alive_time_in_secs': ?sessionKeepAliveTimeInSecs,
  'summarize_on_end': ?summarizeOnEnd,
  if (title.isPresent) 'title': title.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ai_config', 'live_stream_on_start', 'persist_chat', 'record_on_start', 'recording_config', 'session_keep_alive_time_in_secs', 'summarize_on_end', 'title'}.contains(key)); } 
ReplaceMeetingRequest copyWith({RealtimekitAiConfig? Function()? aiConfig, Omittable<bool?>? liveStreamOnStart, bool? Function()? persistChat, Omittable<bool?>? recordOnStart, RealtimekitRecordingConfig? Function()? recordingConfig, double? Function()? sessionKeepAliveTimeInSecs, bool? Function()? summarizeOnEnd, Omittable<String?>? title, }) { return ReplaceMeetingRequest(
  aiConfig: aiConfig != null ? aiConfig() : this.aiConfig,
  liveStreamOnStart: liveStreamOnStart ?? this.liveStreamOnStart,
  persistChat: persistChat != null ? persistChat() : this.persistChat,
  recordOnStart: recordOnStart ?? this.recordOnStart,
  recordingConfig: recordingConfig != null ? recordingConfig() : this.recordingConfig,
  sessionKeepAliveTimeInSecs: sessionKeepAliveTimeInSecs != null ? sessionKeepAliveTimeInSecs() : this.sessionKeepAliveTimeInSecs,
  summarizeOnEnd: summarizeOnEnd != null ? summarizeOnEnd() : this.summarizeOnEnd,
  title: title ?? this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReplaceMeetingRequest &&
          aiConfig == other.aiConfig &&
          liveStreamOnStart == other.liveStreamOnStart &&
          persistChat == other.persistChat &&
          recordOnStart == other.recordOnStart &&
          recordingConfig == other.recordingConfig &&
          sessionKeepAliveTimeInSecs == other.sessionKeepAliveTimeInSecs &&
          summarizeOnEnd == other.summarizeOnEnd &&
          title == other.title; } 
@override int get hashCode { return Object.hash(aiConfig, liveStreamOnStart, persistChat, recordOnStart, recordingConfig, sessionKeepAliveTimeInSecs, summarizeOnEnd, title); } 
@override String toString() { return 'ReplaceMeetingRequest(aiConfig: $aiConfig, liveStreamOnStart: $liveStreamOnStart, persistChat: $persistChat, recordOnStart: $recordOnStart, recordingConfig: $recordingConfig, sessionKeepAliveTimeInSecs: $sessionKeepAliveTimeInSecs, summarizeOnEnd: $summarizeOnEnd, title: $title)'; } 
 }
