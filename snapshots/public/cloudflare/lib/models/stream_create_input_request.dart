// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'stream_live_input_default_creator.dart';import 'stream_live_input_enabled.dart';import 'stream_live_input_recording_deletion.dart';import 'stream_live_input_recording_settings.dart';@immutable final class StreamCreateInputRequest {const StreamCreateInputRequest({this.defaultCreator, this.deleteRecordingAfterDays, this.enabled, this.meta, this.recording, });

factory StreamCreateInputRequest.fromJson(Map<String, dynamic> json) { return StreamCreateInputRequest(
  defaultCreator: json['defaultCreator'] != null ? StreamLiveInputDefaultCreator.fromJson(json['defaultCreator'] as String) : null,
  deleteRecordingAfterDays: json['deleteRecordingAfterDays'] != null ? StreamLiveInputRecordingDeletion.fromJson(json['deleteRecordingAfterDays'] as num) : null,
  enabled: json['enabled'] != null ? StreamLiveInputEnabled.fromJson(json['enabled'] as bool) : null,
  meta: json['meta'] as Map<String, dynamic>?,
  recording: json['recording'] != null ? StreamLiveInputRecordingSettings.fromJson(json['recording'] as Map<String, dynamic>) : null,
); }

final StreamLiveInputDefaultCreator? defaultCreator;

final StreamLiveInputRecordingDeletion? deleteRecordingAfterDays;

final StreamLiveInputEnabled? enabled;

final Map<String,dynamic>? meta;

final StreamLiveInputRecordingSettings? recording;

Map<String, dynamic> toJson() { return {
  if (defaultCreator != null) 'defaultCreator': defaultCreator?.toJson(),
  if (deleteRecordingAfterDays != null) 'deleteRecordingAfterDays': deleteRecordingAfterDays?.toJson(),
  if (enabled != null) 'enabled': enabled?.toJson(),
  'meta': ?meta,
  if (recording != null) 'recording': recording?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'defaultCreator', 'deleteRecordingAfterDays', 'enabled', 'meta', 'recording'}.contains(key)); } 
StreamCreateInputRequest copyWith({StreamLiveInputDefaultCreator Function()? defaultCreator, StreamLiveInputRecordingDeletion Function()? deleteRecordingAfterDays, StreamLiveInputEnabled Function()? enabled, Map<String, dynamic> Function()? meta, StreamLiveInputRecordingSettings Function()? recording, }) { return StreamCreateInputRequest(
  defaultCreator: defaultCreator != null ? defaultCreator() : this.defaultCreator,
  deleteRecordingAfterDays: deleteRecordingAfterDays != null ? deleteRecordingAfterDays() : this.deleteRecordingAfterDays,
  enabled: enabled != null ? enabled() : this.enabled,
  meta: meta != null ? meta() : this.meta,
  recording: recording != null ? recording() : this.recording,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamCreateInputRequest &&
          defaultCreator == other.defaultCreator &&
          deleteRecordingAfterDays == other.deleteRecordingAfterDays &&
          enabled == other.enabled &&
          meta == other.meta &&
          recording == other.recording; } 
@override int get hashCode { return Object.hash(defaultCreator, deleteRecordingAfterDays, enabled, meta, recording); } 
@override String toString() { return 'StreamCreateInputRequest(defaultCreator: $defaultCreator, deleteRecordingAfterDays: $deleteRecordingAfterDays, enabled: $enabled, meta: $meta, recording: $recording)'; } 
 }
