// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/event_request.dart';import '../models/join_response.dart';import '../models/remove_participant_payload.dart';import '../models/remove_reason.dart';import '../models/room_error_response.dart';import '../models/room_state.dart';/// RoomsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class RoomsApi with ApiExecutor {const RoomsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Submit a state transition event
///
/// All state mutations go through this endpoint. The server validates the transition, persists it, and broadcasts the new state to LiveKit.
///
/// `POST /api/mobile/protected/rooms/{session_slug}/event`
Future<ApiResult<RoomState, RoomErrorResponse>> totemRoomsApiPostEvent({required String sessionSlug, required EventRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/api/mobile/protected/rooms/${Uri.encodeComponent(sessionSlug)}/event',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RoomState.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RoomErrorResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get current room state
///
/// Returns the current state snapshot. Used by clients on reconnect or as a fallback poll when LiveKit data messages may have been missed.
///
/// `GET /api/mobile/protected/rooms/{session_slug}/state`
Future<ApiResult<RoomState, RoomErrorResponse>> totemRoomsApiGetState({required String sessionSlug, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/api/mobile/protected/rooms/${Uri.encodeComponent(sessionSlug)}/state',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RoomState.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RoomErrorResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Join a session room
///
/// Returns a LiveKit access token. Creates the Room if needed.
///
/// `POST /api/mobile/protected/rooms/{session_slug}/join`
Future<ApiResult<JoinResponse, RoomErrorResponse>> totemRoomsApiJoinRoom({required String sessionSlug, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/api/mobile/protected/rooms/${Uri.encodeComponent(sessionSlug)}/join',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return JoinResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RoomErrorResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Mute a participant
///
/// Keeper mutes a specific participant's audio.
///
/// `POST /api/mobile/protected/rooms/{session_slug}/mute/{participant_identity}`
Future<ApiResult<void, RoomErrorResponse>> totemRoomsApiMute({required String sessionSlug, required String participantIdentity, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/api/mobile/protected/rooms/${Uri.encodeComponent(sessionSlug)}/mute/${Uri.encodeComponent(participantIdentity)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return RoomErrorResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Mute all participants
///
/// Keeper mutes everyone except themselves.
///
/// `POST /api/mobile/protected/rooms/{session_slug}/mute-all`
Future<ApiResult<void, RoomErrorResponse>> totemRoomsApiMuteAll({required String sessionSlug, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/api/mobile/protected/rooms/${Uri.encodeComponent(sessionSlug)}/mute-all',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return RoomErrorResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Remove a participant
///
/// Emits a remove event to a specific participant
///
/// `POST /api/mobile/protected/rooms/{session_slug}/remove/{participant_identity}`
Future<ApiResult<RemoveParticipantPayload, RoomErrorResponse>> totemRoomsApiRemove({required String sessionSlug, required String participantIdentity, RemoveReason? reason, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (reason != null) queryParameters['reason'] = reason.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/api/mobile/protected/rooms/${Uri.encodeComponent(sessionSlug)}/remove/${Uri.encodeComponent(participantIdentity)}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RemoveParticipantPayload.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return RoomErrorResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
