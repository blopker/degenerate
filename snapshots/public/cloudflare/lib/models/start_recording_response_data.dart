// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_start_reason.dart';import 'realtimekit_stop_reason.dart';import 'realtimekit_storage_config.dart';/// Current status of the recording.
@immutable final class StartRecordingResponseDataStatus {const StartRecordingResponseDataStatus._(this.value);

factory StartRecordingResponseDataStatus.fromJson(String json) { return switch (json) {
  'INVOKED' => invoked,
  'RECORDING' => recording,
  'UPLOADING' => uploading,
  'UPLOADED' => uploaded,
  'ERRORED' => errored,
  'PAUSED' => paused,
  _ => StartRecordingResponseDataStatus._(json),
}; }

static const StartRecordingResponseDataStatus invoked = StartRecordingResponseDataStatus._('INVOKED');

static const StartRecordingResponseDataStatus recording = StartRecordingResponseDataStatus._('RECORDING');

static const StartRecordingResponseDataStatus uploading = StartRecordingResponseDataStatus._('UPLOADING');

static const StartRecordingResponseDataStatus uploaded = StartRecordingResponseDataStatus._('UPLOADED');

static const StartRecordingResponseDataStatus errored = StartRecordingResponseDataStatus._('ERRORED');

static const StartRecordingResponseDataStatus paused = StartRecordingResponseDataStatus._('PAUSED');

static const List<StartRecordingResponseDataStatus> values = [invoked, recording, uploading, uploaded, errored, paused];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is StartRecordingResponseDataStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'StartRecordingResponseDataStatus($value)'; } 
 }
@immutable final class StartRecordingResponseData {const StartRecordingResponseData({required this.audioDownloadUrl, required this.downloadUrl, required this.downloadUrlExpiry, required this.fileSize, required this.id, required this.invokedTime, required this.outputFileName, required this.sessionId, required this.startedTime, required this.status, required this.stoppedTime, this.recordingDuration, this.startReason, this.stopReason, this.storageConfig, });

factory StartRecordingResponseData.fromJson(Map<String, dynamic> json) { return StartRecordingResponseData(
  audioDownloadUrl: json['audio_download_url'] != null ? Uri.parse(json['audio_download_url'] as String) : null,
  downloadUrl: json['download_url'] != null ? Uri.parse(json['download_url'] as String) : null,
  downloadUrlExpiry: json['download_url_expiry'] != null ? DateTime.parse(json['download_url_expiry'] as String) : null,
  fileSize: json['file_size'] != null ? (json['file_size'] as num).toDouble() : null,
  id: json['id'] as String,
  invokedTime: DateTime.parse(json['invoked_time'] as String),
  outputFileName: json['output_file_name'] as String,
  recordingDuration: json['recording_duration'] != null ? (json['recording_duration'] as num).toInt() : null,
  sessionId: json['session_id'] as String?,
  startedTime: json['started_time'] != null ? DateTime.parse(json['started_time'] as String) : null,
  status: StartRecordingResponseDataStatus.fromJson(json['status'] as String),
  stoppedTime: json['stopped_time'] != null ? DateTime.parse(json['stopped_time'] as String) : null,
  startReason: json['start_reason'] != null ? RealtimekitStartReason.fromJson(json['start_reason'] as Map<String, dynamic>) : null,
  stopReason: json['stop_reason'] != null ? RealtimekitStopReason.fromJson(json['stop_reason'] as Map<String, dynamic>) : null,
  storageConfig: json['storage_config'] != null ? RealtimekitStorageConfig.fromJson(json['storage_config'] as Map<String, dynamic>) : null,
); }

/// If the audio_config is passed, the URL for downloading the audio recording is returned.
final Uri? audioDownloadUrl;

/// URL where the recording can be downloaded.
final Uri? downloadUrl;

/// Timestamp when the download URL expires.
final DateTime? downloadUrlExpiry;

/// File size of the recording, in bytes.
final double? fileSize;

/// ID of the recording
final String id;

/// Timestamp when this recording was invoked.
final DateTime invokedTime;

/// File name of the recording.
final String outputFileName;

/// Total recording time in seconds.
final int? recordingDuration;

/// ID of the meeting session this recording is for.
final String? sessionId;

/// Timestamp when this recording actually started after being invoked. Usually a few seconds after `invoked_time`.
final DateTime? startedTime;

/// Current status of the recording.
final StartRecordingResponseDataStatus status;

/// Timestamp when this recording was stopped. Optional; is present only when the recording has actually been stopped.
final DateTime? stoppedTime;

final RealtimekitStartReason? startReason;

final RealtimekitStopReason? stopReason;

final RealtimekitStorageConfig? storageConfig;

Map<String, dynamic> toJson() { return {
  'audio_download_url': audioDownloadUrl?.toString(),
  'download_url': downloadUrl?.toString(),
  'download_url_expiry': downloadUrlExpiry?.toIso8601String(),
  'file_size': fileSize,
  'id': id,
  'invoked_time': invokedTime.toIso8601String(),
  'output_file_name': outputFileName,
  'recording_duration': ?recordingDuration,
  'session_id': sessionId,
  'started_time': startedTime?.toIso8601String(),
  'status': status.toJson(),
  'stopped_time': stoppedTime?.toIso8601String(),
  if (startReason != null) 'start_reason': startReason?.toJson(),
  if (stopReason != null) 'stop_reason': stopReason?.toJson(),
  if (storageConfig != null) 'storage_config': storageConfig?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('audio_download_url') && (json['audio_download_url'] == null || json['audio_download_url'] is String) &&
      json.containsKey('download_url') && (json['download_url'] == null || json['download_url'] is String) &&
      json.containsKey('download_url_expiry') && (json['download_url_expiry'] == null || json['download_url_expiry'] is String) &&
      json.containsKey('file_size') && (json['file_size'] == null || json['file_size'] is num) &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('invoked_time') && json['invoked_time'] is String &&
      json.containsKey('output_file_name') && json['output_file_name'] is String &&
      json.containsKey('session_id') && (json['session_id'] == null || json['session_id'] is String) &&
      json.containsKey('started_time') && (json['started_time'] == null || json['started_time'] is String) &&
      json.containsKey('status') &&
      json.containsKey('stopped_time') && (json['stopped_time'] == null || json['stopped_time'] is String); } 
StartRecordingResponseData copyWith({Uri? Function()? audioDownloadUrl, Uri? Function()? downloadUrl, DateTime? Function()? downloadUrlExpiry, double? Function()? fileSize, String? id, DateTime? invokedTime, String? outputFileName, int? Function()? recordingDuration, String? Function()? sessionId, DateTime? Function()? startedTime, StartRecordingResponseDataStatus? status, DateTime? Function()? stoppedTime, RealtimekitStartReason? Function()? startReason, RealtimekitStopReason? Function()? stopReason, RealtimekitStorageConfig? Function()? storageConfig, }) { return StartRecordingResponseData(
  audioDownloadUrl: audioDownloadUrl != null ? audioDownloadUrl() : this.audioDownloadUrl,
  downloadUrl: downloadUrl != null ? downloadUrl() : this.downloadUrl,
  downloadUrlExpiry: downloadUrlExpiry != null ? downloadUrlExpiry() : this.downloadUrlExpiry,
  fileSize: fileSize != null ? fileSize() : this.fileSize,
  id: id ?? this.id,
  invokedTime: invokedTime ?? this.invokedTime,
  outputFileName: outputFileName ?? this.outputFileName,
  recordingDuration: recordingDuration != null ? recordingDuration() : this.recordingDuration,
  sessionId: sessionId != null ? sessionId() : this.sessionId,
  startedTime: startedTime != null ? startedTime() : this.startedTime,
  status: status ?? this.status,
  stoppedTime: stoppedTime != null ? stoppedTime() : this.stoppedTime,
  startReason: startReason != null ? startReason() : this.startReason,
  stopReason: stopReason != null ? stopReason() : this.stopReason,
  storageConfig: storageConfig != null ? storageConfig() : this.storageConfig,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StartRecordingResponseData &&
          audioDownloadUrl == other.audioDownloadUrl &&
          downloadUrl == other.downloadUrl &&
          downloadUrlExpiry == other.downloadUrlExpiry &&
          fileSize == other.fileSize &&
          id == other.id &&
          invokedTime == other.invokedTime &&
          outputFileName == other.outputFileName &&
          recordingDuration == other.recordingDuration &&
          sessionId == other.sessionId &&
          startedTime == other.startedTime &&
          status == other.status &&
          stoppedTime == other.stoppedTime &&
          startReason == other.startReason &&
          stopReason == other.stopReason &&
          storageConfig == other.storageConfig; } 
@override int get hashCode { return Object.hash(audioDownloadUrl, downloadUrl, downloadUrlExpiry, fileSize, id, invokedTime, outputFileName, recordingDuration, sessionId, startedTime, status, stoppedTime, startReason, stopReason, storageConfig); } 
@override String toString() { return 'StartRecordingResponseData(audioDownloadUrl: $audioDownloadUrl, downloadUrl: $downloadUrl, downloadUrlExpiry: $downloadUrlExpiry, fileSize: $fileSize, id: $id, invokedTime: $invokedTime, outputFileName: $outputFileName, recordingDuration: $recordingDuration, sessionId: $sessionId, startedTime: $startedTime, status: $status, stoppedTime: $stoppedTime, startReason: $startReason, stopReason: $stopReason, storageConfig: $storageConfig)'; } 
 }
