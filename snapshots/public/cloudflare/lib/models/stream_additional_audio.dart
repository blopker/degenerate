// GENERATED CODE - DO NOT MODIFY BY HAND

import 'stream_audio_default.dart';import 'stream_audio_label.dart';import 'stream_identifier.dart';/// Specifies the processing status of the video.
final class StreamAudioState {const StreamAudioState._(this.value);

factory StreamAudioState.fromJson(String json) { return switch (json) {
  'queued' => queued,
  'ready' => ready,
  'error' => error,
  _ => StreamAudioState._(json),
}; }

static const StreamAudioState queued = StreamAudioState._('queued');

static const StreamAudioState ready = StreamAudioState._('ready');

static const StreamAudioState error = StreamAudioState._('error');

static const List<StreamAudioState> values = [queued, ready, error];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is StreamAudioState && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'StreamAudioState($value)'; } 
 }
final class StreamAdditionalAudio {const StreamAdditionalAudio({this.$default, this.label, this.status, this.uid, });

factory StreamAdditionalAudio.fromJson(Map<String, dynamic> json) { return StreamAdditionalAudio(
  $default: json['default'] != null ? StreamAudioDefault.fromJson(json['default'] as bool) : null,
  label: json['label'] != null ? StreamAudioLabel.fromJson(json['label'] as String) : null,
  status: json['status'] != null ? StreamAudioState.fromJson(json['status'] as String) : null,
  uid: json['uid'] != null ? StreamIdentifier.fromJson(json['uid'] as String) : null,
); }

final StreamAudioDefault? $default;

final StreamAudioLabel? label;

final StreamAudioState? status;

final StreamIdentifier? uid;

Map<String, dynamic> toJson() { return {
  if ($default != null) 'default': $default?.toJson(),
  if (label != null) 'label': label?.toJson(),
  if (status != null) 'status': status?.toJson(),
  if (uid != null) 'uid': uid?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
StreamAdditionalAudio copyWith({StreamAudioDefault Function()? $default, StreamAudioLabel Function()? label, StreamAudioState Function()? status, StreamIdentifier Function()? uid, }) { return StreamAdditionalAudio(
  $default: $default != null ? $default() : this.$default,
  label: label != null ? label() : this.label,
  status: status != null ? status() : this.status,
  uid: uid != null ? uid() : this.uid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamAdditionalAudio &&
          $default == other.$default &&
          label == other.label &&
          status == other.status &&
          uid == other.uid; } 
@override int get hashCode { return Object.hash($default, label, status, uid); } 
@override String toString() { return 'StreamAdditionalAudio(\$default: ${$default}, label: $label, status: $status, uid: $uid)'; } 
 }
