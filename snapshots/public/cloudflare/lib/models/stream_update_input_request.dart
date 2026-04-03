// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'stream_live_input_default_creator.dart';import 'stream_live_input_enabled.dart';import 'stream_live_input_recording_deletion.dart';import 'stream_live_input_recording_settings.dart';@immutable final class StreamUpdateInputRequest {const StreamUpdateInputRequest({this.defaultCreator, this.deleteRecordingAfterDays, this.enabled, this.meta, this.recording, });

factory StreamUpdateInputRequest.fromJson(Map<String, dynamic> json) { return StreamUpdateInputRequest(
  defaultCreator: json['defaultCreator'] != null ? StreamLiveInputDefaultCreator.fromJson(json['defaultCreator'] as String) : null,
  deleteRecordingAfterDays: json['deleteRecordingAfterDays'] != null ? StreamLiveInputRecordingDeletion.fromJson(json['deleteRecordingAfterDays'] as num) : null,
  enabled: json['enabled'] != null ? StreamLiveInputEnabled.fromJson(json['enabled'] as bool) : null,
  meta: json['meta'] as Map<String, dynamic>?,
  recording: json['recording'] != null ? StreamLiveInputRecordingSettings.fromJson(json['recording'] as Map<String, dynamic>) : null,
); }

/// Sets the creator ID asssociated with this live input.
final StreamLiveInputDefaultCreator? defaultCreator;

/// Indicates the number of days after which the live inputs recordings will be deleted. When a stream completes and the recording is ready, the value is used to calculate a scheduled deletion date for that recording. Omit the field to indicate no change, or include with a `null` value to remove an existing scheduled deletion.
final StreamLiveInputRecordingDeletion? deleteRecordingAfterDays;

/// Indicates whether the live input is enabled and can accept streams.
final StreamLiveInputEnabled? enabled;

/// A user modifiable key-value store used to reference other systems of record for managing live inputs.
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
StreamUpdateInputRequest copyWith({StreamLiveInputDefaultCreator Function()? defaultCreator, StreamLiveInputRecordingDeletion Function()? deleteRecordingAfterDays, StreamLiveInputEnabled Function()? enabled, Map<String, dynamic> Function()? meta, StreamLiveInputRecordingSettings Function()? recording, }) { return StreamUpdateInputRequest(
  defaultCreator: defaultCreator != null ? defaultCreator() : this.defaultCreator,
  deleteRecordingAfterDays: deleteRecordingAfterDays != null ? deleteRecordingAfterDays() : this.deleteRecordingAfterDays,
  enabled: enabled != null ? enabled() : this.enabled,
  meta: meta != null ? meta() : this.meta,
  recording: recording != null ? recording() : this.recording,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamUpdateInputRequest &&
          defaultCreator == other.defaultCreator &&
          deleteRecordingAfterDays == other.deleteRecordingAfterDays &&
          enabled == other.enabled &&
          meta == other.meta &&
          recording == other.recording; } 
@override int get hashCode { return Object.hash(defaultCreator, deleteRecordingAfterDays, enabled, meta, recording); } 
@override String toString() { return 'StreamUpdateInputRequest(defaultCreator: $defaultCreator, deleteRecordingAfterDays: $deleteRecordingAfterDays, enabled: $enabled, meta: $meta, recording: $recording)'; } 
 }
