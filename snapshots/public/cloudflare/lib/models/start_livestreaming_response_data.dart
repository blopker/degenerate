// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class StartLivestreamingResponseDataStatus {const StartLivestreamingResponseDataStatus._(this.value);

factory StartLivestreamingResponseDataStatus.fromJson(String json) { return switch (json) {
  'LIVE' => live,
  'IDLE' => idle,
  'ERRORED' => errored,
  'INVOKED' => invoked,
  _ => StartLivestreamingResponseDataStatus._(json),
}; }

static const StartLivestreamingResponseDataStatus live = StartLivestreamingResponseDataStatus._('LIVE');

static const StartLivestreamingResponseDataStatus idle = StartLivestreamingResponseDataStatus._('IDLE');

static const StartLivestreamingResponseDataStatus errored = StartLivestreamingResponseDataStatus._('ERRORED');

static const StartLivestreamingResponseDataStatus invoked = StartLivestreamingResponseDataStatus._('INVOKED');

static const List<StartLivestreamingResponseDataStatus> values = [live, idle, errored, invoked];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is StartLivestreamingResponseDataStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'StartLivestreamingResponseDataStatus($value)'; } 
 }
@immutable final class StartLivestreamingResponseData {const StartLivestreamingResponseData({this.id, this.ingestServer, this.playbackUrl, this.status, this.streamKey, });

factory StartLivestreamingResponseData.fromJson(Map<String, dynamic> json) { return StartLivestreamingResponseData(
  id: json['id'] as String?,
  ingestServer: json['ingest_server'] as String?,
  playbackUrl: json['playback_url'] as String?,
  status: json['status'] != null ? StartLivestreamingResponseDataStatus.fromJson(json['status'] as String) : null,
  streamKey: json['stream_key'] as String?,
); }

/// The livestream ID.
final String? id;

/// The server URL to which the RTMP encoder sends the video and audio data.
final String? ingestServer;

/// The web address that viewers can use to watch the livestream.
final String? playbackUrl;

final StartLivestreamingResponseDataStatus? status;

/// Unique key for accessing each livestream.
final String? streamKey;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'ingest_server': ?ingestServer,
  'playback_url': ?playbackUrl,
  if (status != null) 'status': status?.toJson(),
  'stream_key': ?streamKey,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'ingest_server', 'playback_url', 'status', 'stream_key'}.contains(key)); } 
StartLivestreamingResponseData copyWith({String Function()? id, String Function()? ingestServer, String Function()? playbackUrl, StartLivestreamingResponseDataStatus Function()? status, String Function()? streamKey, }) { return StartLivestreamingResponseData(
  id: id != null ? id() : this.id,
  ingestServer: ingestServer != null ? ingestServer() : this.ingestServer,
  playbackUrl: playbackUrl != null ? playbackUrl() : this.playbackUrl,
  status: status != null ? status() : this.status,
  streamKey: streamKey != null ? streamKey() : this.streamKey,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StartLivestreamingResponseData &&
          id == other.id &&
          ingestServer == other.ingestServer &&
          playbackUrl == other.playbackUrl &&
          status == other.status &&
          streamKey == other.streamKey; } 
@override int get hashCode { return Object.hash(id, ingestServer, playbackUrl, status, streamKey); } 
@override String toString() { return 'StartLivestreamingResponseData(id: $id, ingestServer: $ingestServer, playbackUrl: $playbackUrl, status: $status, streamKey: $streamKey)'; } 
 }
