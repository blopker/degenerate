// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtimekit_meeting.dart';import 'realtimekit_storage_config.dart';/// Current status of the recording.
@immutable final class GetAllRecordingsResponseDataStatus {const GetAllRecordingsResponseDataStatus._(this.value);

factory GetAllRecordingsResponseDataStatus.fromJson(String json) { return switch (json) {
  'INVOKED' => invoked,
  'RECORDING' => recording,
  'UPLOADING' => uploading,
  'UPLOADED' => uploaded,
  'ERRORED' => errored,
  'PAUSED' => paused,
  _ => GetAllRecordingsResponseDataStatus._(json),
}; }

static const GetAllRecordingsResponseDataStatus invoked = GetAllRecordingsResponseDataStatus._('INVOKED');

static const GetAllRecordingsResponseDataStatus recording = GetAllRecordingsResponseDataStatus._('RECORDING');

static const GetAllRecordingsResponseDataStatus uploading = GetAllRecordingsResponseDataStatus._('UPLOADING');

static const GetAllRecordingsResponseDataStatus uploaded = GetAllRecordingsResponseDataStatus._('UPLOADED');

static const GetAllRecordingsResponseDataStatus errored = GetAllRecordingsResponseDataStatus._('ERRORED');

static const GetAllRecordingsResponseDataStatus paused = GetAllRecordingsResponseDataStatus._('PAUSED');

static const List<GetAllRecordingsResponseDataStatus> values = [invoked, recording, uploading, uploaded, errored, paused];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetAllRecordingsResponseDataStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetAllRecordingsResponseDataStatus($value)'; } 
 }
@immutable final class GetAllRecordingsResponseData {const GetAllRecordingsResponseData({required this.audioDownloadUrl, required this.downloadUrl, required this.downloadUrlExpiry, required this.fileSize, required this.id, required this.invokedTime, required this.outputFileName, required this.sessionId, required this.startedTime, required this.status, required this.stoppedTime, this.recordingDuration, this.storageConfig, this.meeting, });

factory GetAllRecordingsResponseData.fromJson(Map<String, dynamic> json) { return GetAllRecordingsResponseData(
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
  status: GetAllRecordingsResponseDataStatus.fromJson(json['status'] as String),
  stoppedTime: json['stopped_time'] != null ? DateTime.parse(json['stopped_time'] as String) : null,
  storageConfig: json['storage_config'] != null ? RealtimekitStorageConfig.fromJson(json['storage_config'] as Map<String, dynamic>) : null,
  meeting: json['meeting'] != null ? RealtimekitMeeting.fromJson(json['meeting'] as Map<String, dynamic>) : null,
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
final GetAllRecordingsResponseDataStatus status;

/// Timestamp when this recording was stopped. Optional; is present only when the recording has actually been stopped.
final DateTime? stoppedTime;

final RealtimekitStorageConfig? storageConfig;

final RealtimekitMeeting? meeting;

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
  if (storageConfig != null) 'storage_config': storageConfig?.toJson(),
  if (meeting != null) 'meeting': meeting?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('audio_download_url') && json['audio_download_url'] is String &&
      json.containsKey('download_url') && json['download_url'] is String &&
      json.containsKey('download_url_expiry') && json['download_url_expiry'] is String &&
      json.containsKey('file_size') && json['file_size'] is num &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('invoked_time') && json['invoked_time'] is String &&
      json.containsKey('output_file_name') && json['output_file_name'] is String &&
      json.containsKey('session_id') && json['session_id'] is String &&
      json.containsKey('started_time') && json['started_time'] is String &&
      json.containsKey('status') &&
      json.containsKey('stopped_time') && json['stopped_time'] is String; } 
GetAllRecordingsResponseData copyWith({Uri? Function()? audioDownloadUrl, Uri? Function()? downloadUrl, DateTime? Function()? downloadUrlExpiry, double? Function()? fileSize, String? id, DateTime? invokedTime, String? outputFileName, int? Function()? recordingDuration, String? Function()? sessionId, DateTime? Function()? startedTime, GetAllRecordingsResponseDataStatus? status, DateTime? Function()? stoppedTime, RealtimekitStorageConfig? Function()? storageConfig, RealtimekitMeeting? Function()? meeting, }) { return GetAllRecordingsResponseData(
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
  storageConfig: storageConfig != null ? storageConfig() : this.storageConfig,
  meeting: meeting != null ? meeting() : this.meeting,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetAllRecordingsResponseData &&
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
          storageConfig == other.storageConfig &&
          meeting == other.meeting; } 
@override int get hashCode { return Object.hash(audioDownloadUrl, downloadUrl, downloadUrlExpiry, fileSize, id, invokedTime, outputFileName, recordingDuration, sessionId, startedTime, status, stoppedTime, storageConfig, meeting); } 
@override String toString() { return 'GetAllRecordingsResponseData(audioDownloadUrl: $audioDownloadUrl, downloadUrl: $downloadUrl, downloadUrlExpiry: $downloadUrlExpiry, fileSize: $fileSize, id: $id, invokedTime: $invokedTime, outputFileName: $outputFileName, recordingDuration: $recordingDuration, sessionId: $sessionId, startedTime: $startedTime, status: $status, stoppedTime: $stoppedTime, storageConfig: $storageConfig, meeting: $meeting)'; } 
 }
