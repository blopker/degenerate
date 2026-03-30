// GENERATED CODE - DO NOT MODIFY BY HAND

import 'livestreamsession_session_meeting_id_active_livestream_response_data_paging.dart';final class LivestreamsessionSessionMeetingIdActiveLivestreamResponseDataErrMessage {const LivestreamsessionSessionMeetingIdActiveLivestreamResponseDataErrMessage._(this.value);

factory LivestreamsessionSessionMeetingIdActiveLivestreamResponseDataErrMessage.fromJson(String json) { return switch (json) {
  'LIVE' => live,
  'IDLE' => idle,
  'ERRORED' => errored,
  'INVOKED' => invoked,
  _ => LivestreamsessionSessionMeetingIdActiveLivestreamResponseDataErrMessage._(json),
}; }

static const LivestreamsessionSessionMeetingIdActiveLivestreamResponseDataErrMessage live = LivestreamsessionSessionMeetingIdActiveLivestreamResponseDataErrMessage._('LIVE');

static const LivestreamsessionSessionMeetingIdActiveLivestreamResponseDataErrMessage idle = LivestreamsessionSessionMeetingIdActiveLivestreamResponseDataErrMessage._('IDLE');

static const LivestreamsessionSessionMeetingIdActiveLivestreamResponseDataErrMessage errored = LivestreamsessionSessionMeetingIdActiveLivestreamResponseDataErrMessage._('ERRORED');

static const LivestreamsessionSessionMeetingIdActiveLivestreamResponseDataErrMessage invoked = LivestreamsessionSessionMeetingIdActiveLivestreamResponseDataErrMessage._('INVOKED');

static const List<LivestreamsessionSessionMeetingIdActiveLivestreamResponseDataErrMessage> values = [live, idle, errored, invoked];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is LivestreamsessionSessionMeetingIdActiveLivestreamResponseDataErrMessage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'LivestreamsessionSessionMeetingIdActiveLivestreamResponseDataErrMessage($value)'; } 
 }
final class LivestreamsessionSessionMeetingIdActiveLivestreamResponseData {const LivestreamsessionSessionMeetingIdActiveLivestreamResponseData({this.createdAt, this.errMessage, this.id, this.ingestSeconds, this.invokedTime, this.livestreamId, this.paging, this.stoppedTime, this.updatedAt, this.viewerSeconds, });

factory LivestreamsessionSessionMeetingIdActiveLivestreamResponseData.fromJson(Map<String, dynamic> json) { return LivestreamsessionSessionMeetingIdActiveLivestreamResponseData(
  createdAt: json['created_at'] != null ? DateTime.parse(json['created_at'] as String) : null,
  errMessage: json['err_message'] != null ? LivestreamsessionSessionMeetingIdActiveLivestreamResponseDataErrMessage.fromJson(json['err_message'] as String) : null,
  id: json['id'] as String?,
  ingestSeconds: json['ingest_seconds'] != null ? (json['ingest_seconds'] as num).toDouble() : null,
  invokedTime: json['invoked_time'] as String?,
  livestreamId: json['livestream_id'] as String?,
  paging: json['paging'] != null ? LivestreamsessionSessionMeetingIdActiveLivestreamResponseDataPaging.fromJson(json['paging'] as Map<String, dynamic>) : null,
  stoppedTime: json['stopped_time'] != null ? DateTime.parse(json['stopped_time'] as String) : null,
  updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at'] as String) : null,
  viewerSeconds: json['viewer_seconds'] != null ? (json['viewer_seconds'] as num).toDouble() : null,
); }

/// Timestamp the object was created at. The time is returned in ISO format.
final DateTime? createdAt;

final LivestreamsessionSessionMeetingIdActiveLivestreamResponseDataErrMessage? errMessage;

/// The livestream session ID.
final String? id;

/// The time duration for which the input was given or the meeting was streamed.
final double? ingestSeconds;

/// Name of the livestream.
final String? invokedTime;

/// The ID of the livestream.
final String? livestreamId;

final LivestreamsessionSessionMeetingIdActiveLivestreamResponseDataPaging? paging;

/// Specifies if the livestream was disabled.
final DateTime? stoppedTime;

/// Timestamp the object was updated at. The time is returned in ISO format.
final DateTime? updatedAt;

/// The total view time for which the viewers watched the stream.
final double? viewerSeconds;

Map<String, dynamic> toJson() { return {
  if (createdAt != null) 'created_at': createdAt?.toIso8601String(),
  if (errMessage != null) 'err_message': errMessage?.toJson(),
  'id': ?id,
  'ingest_seconds': ?ingestSeconds,
  'invoked_time': ?invokedTime,
  'livestream_id': ?livestreamId,
  if (paging != null) 'paging': paging?.toJson(),
  if (stoppedTime != null) 'stopped_time': stoppedTime?.toIso8601String(),
  if (updatedAt != null) 'updated_at': updatedAt?.toIso8601String(),
  'viewer_seconds': ?viewerSeconds,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created_at', 'err_message', 'id', 'ingest_seconds', 'invoked_time', 'livestream_id', 'paging', 'stopped_time', 'updated_at', 'viewer_seconds'}.contains(key)); } 
LivestreamsessionSessionMeetingIdActiveLivestreamResponseData copyWith({DateTime Function()? createdAt, LivestreamsessionSessionMeetingIdActiveLivestreamResponseDataErrMessage Function()? errMessage, String Function()? id, double Function()? ingestSeconds, String? Function()? invokedTime, String Function()? livestreamId, LivestreamsessionSessionMeetingIdActiveLivestreamResponseDataPaging Function()? paging, DateTime Function()? stoppedTime, DateTime Function()? updatedAt, double Function()? viewerSeconds, }) { return LivestreamsessionSessionMeetingIdActiveLivestreamResponseData(
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  errMessage: errMessage != null ? errMessage() : this.errMessage,
  id: id != null ? id() : this.id,
  ingestSeconds: ingestSeconds != null ? ingestSeconds() : this.ingestSeconds,
  invokedTime: invokedTime != null ? invokedTime() : this.invokedTime,
  livestreamId: livestreamId != null ? livestreamId() : this.livestreamId,
  paging: paging != null ? paging() : this.paging,
  stoppedTime: stoppedTime != null ? stoppedTime() : this.stoppedTime,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
  viewerSeconds: viewerSeconds != null ? viewerSeconds() : this.viewerSeconds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LivestreamsessionSessionMeetingIdActiveLivestreamResponseData &&
          createdAt == other.createdAt &&
          errMessage == other.errMessage &&
          id == other.id &&
          ingestSeconds == other.ingestSeconds &&
          invokedTime == other.invokedTime &&
          livestreamId == other.livestreamId &&
          paging == other.paging &&
          stoppedTime == other.stoppedTime &&
          updatedAt == other.updatedAt &&
          viewerSeconds == other.viewerSeconds; } 
@override int get hashCode { return Object.hash(createdAt, errMessage, id, ingestSeconds, invokedTime, livestreamId, paging, stoppedTime, updatedAt, viewerSeconds); } 
@override String toString() { return 'LivestreamsessionSessionMeetingIdActiveLivestreamResponseData(createdAt: $createdAt, errMessage: $errMessage, id: $id, ingestSeconds: $ingestSeconds, invokedTime: $invokedTime, livestreamId: $livestreamId, paging: $paging, stoppedTime: $stoppedTime, updatedAt: $updatedAt, viewerSeconds: $viewerSeconds)'; } 
 }
