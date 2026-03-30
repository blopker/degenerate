// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/stream_account_identifier.dart';import '../models/stream_additional_audio.dart';import '../models/stream_audio_identifier.dart';import '../models/stream_copy_audio_track.dart';import '../models/stream_edit_audio_track.dart';import '../models/stream_identifier.dart';/// StreamAudioTracksApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class StreamAudioTracksApi with ApiExecutor {const StreamAudioTracksApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List additional audio tracks on a video
///
/// Lists additional audio tracks on a video. Note this API will not return information for audio attached to the video upload.
///
/// `GET /accounts/{account_id}/stream/{identifier}/audio`
Future<ApiResult<List<StreamAdditionalAudio>?, Never>> listAudioTracks({required StreamAccountIdentifier accountId, required StreamIdentifier identifier, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/${Uri.encodeComponent(identifier.toString())}/audio',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => StreamAdditionalAudio.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Edit additional audio tracks on a video
///
/// Edits additional audio tracks on a video. Editing the default status of an audio track to `true` will mark all other audio tracks on the video default status to `false`.
///
/// `PATCH /accounts/{account_id}/stream/{identifier}/audio/{audio_identifier}`
Future<ApiResult<StreamAdditionalAudio?, Never>> editAudioTracks({required StreamAccountIdentifier accountId, required StreamIdentifier identifier, required StreamAudioIdentifier audioIdentifier, required StreamEditAudioTrack body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/${Uri.encodeComponent(identifier.toString())}/audio/${Uri.encodeComponent(audioIdentifier.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? StreamAdditionalAudio.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete additional audio tracks on a video
///
/// Deletes additional audio tracks on a video. Deleting a default audio track is not allowed. You must assign another audio track as default prior to deletion.
///
/// `DELETE /accounts/{account_id}/stream/{identifier}/audio/{audio_identifier}`
Future<ApiResult<String?, Never>> deleteAudioTracks({required StreamAccountIdentifier accountId, required StreamIdentifier identifier, required StreamAudioIdentifier audioIdentifier, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/${Uri.encodeComponent(identifier.toString())}/audio/${Uri.encodeComponent(audioIdentifier.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as String?;
  },
);
 } 
/// Add audio tracks to a video
///
/// Adds an additional audio track to a video using the provided audio track URL.
///
/// `POST /accounts/{account_id}/stream/{identifier}/audio/copy`
Future<ApiResult<StreamAdditionalAudio?, Never>> addAudioTrack({required StreamAccountIdentifier accountId, required StreamIdentifier identifier, required StreamCopyAudioTrack body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/${Uri.encodeComponent(identifier.toString())}/audio/copy',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? StreamAdditionalAudio.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
