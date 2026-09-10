// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';
import 'dart:convert';

import 'package:degenerate_runtime/degenerate_runtime.dart';

import '../models/error_response_schema.dart';
import '../models/livekit_order_schema.dart';
import '../models/livekit_token_response_schema.dart';
import '../models/session_state.dart';

/// MeetingsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class MeetingsApi with ApiExecutor {
  const MeetingsApi(this.apiConfig);

  @override
  final ApiConfig apiConfig;

  /// Get Livekit Token
  ///
  /// `GET /api/mobile/protected/meetings/event/{event_slug}/token`
  Future<ApiResult<LivekitTokenResponseSchema, ErrorResponseSchema>>
  totemMeetingsMobileApiGetLivekitToken({
    required String eventSlug,
    RequestOptions? options,
  }) async {
    final headers = <String, String>{...apiConfig.defaultHeaders};

    final request = ApiRequest(
      method: 'GET',
      path:
          '/api/mobile/protected/meetings/event/${Uri.encodeComponent(eventSlug)}/token',
      headers: headers,
      options: options,
    );

    return await execute(
      request,
      onSuccess: (response) {
        final json = jsonDecode(response.body);
        return LivekitTokenResponseSchema.fromJson(
          json as Map<String, dynamic>,
        );
      },
      onError: (response) {
        switch (response.statusCode) {
          case 403 || 404 || 500:
            final json = jsonDecode(response.body);
            return ErrorResponseSchema.fromJson(json as Map<String, dynamic>);
          default:
            return null;
        }
      },
    );
  }

  /// Pass Totem Endpoint
  ///
  /// `POST /api/mobile/protected/meetings/event/{event_slug}/pass-totem`
  Future<ApiResult<void, ErrorResponseSchema>>
  totemMeetingsMobileApiPassTotemEndpoint({
    required String eventSlug,
    RequestOptions? options,
  }) async {
    final headers = <String, String>{...apiConfig.defaultHeaders};

    final request = ApiRequest(
      method: 'POST',
      path:
          '/api/mobile/protected/meetings/event/${Uri.encodeComponent(eventSlug)}/pass-totem',
      headers: headers,
      options: options,
    );

    return await execute(
      request,
      onSuccess: (_) {},
      onError: (response) {
        switch (response.statusCode) {
          case 400 || 403 || 404 || 500:
            final json = jsonDecode(response.body);
            return ErrorResponseSchema.fromJson(json as Map<String, dynamic>);
          default:
            return null;
        }
      },
    );
  }

  /// Accept Totem Endpoint
  ///
  /// `POST /api/mobile/protected/meetings/event/{event_slug}/accept-totem`
  Future<ApiResult<void, ErrorResponseSchema>>
  totemMeetingsMobileApiAcceptTotemEndpoint({
    required String eventSlug,
    RequestOptions? options,
  }) async {
    final headers = <String, String>{...apiConfig.defaultHeaders};

    final request = ApiRequest(
      method: 'POST',
      path:
          '/api/mobile/protected/meetings/event/${Uri.encodeComponent(eventSlug)}/accept-totem',
      headers: headers,
      options: options,
    );

    return await execute(
      request,
      onSuccess: (_) {},
      onError: (response) {
        switch (response.statusCode) {
          case 400 || 403 || 404 || 500:
            final json = jsonDecode(response.body);
            return ErrorResponseSchema.fromJson(json as Map<String, dynamic>);
          default:
            return null;
        }
      },
    );
  }

  /// Start Room Endpoint
  ///
  /// `POST /api/mobile/protected/meetings/event/{event_slug}/start`
  Future<ApiResult<void, ErrorResponseSchema>>
  totemMeetingsMobileApiStartRoomEndpoint({
    required String eventSlug,
    RequestOptions? options,
  }) async {
    final headers = <String, String>{...apiConfig.defaultHeaders};

    final request = ApiRequest(
      method: 'POST',
      path:
          '/api/mobile/protected/meetings/event/${Uri.encodeComponent(eventSlug)}/start',
      headers: headers,
      options: options,
    );

    return await execute(
      request,
      onSuccess: (_) {},
      onError: (response) {
        switch (response.statusCode) {
          case 400 || 403 || 404 || 500:
            final json = jsonDecode(response.body);
            return ErrorResponseSchema.fromJson(json as Map<String, dynamic>);
          default:
            return null;
        }
      },
    );
  }

  /// End Room Endpoint
  ///
  /// `POST /api/mobile/protected/meetings/event/{event_slug}/end`
  Future<ApiResult<void, ErrorResponseSchema>>
  totemMeetingsMobileApiEndRoomEndpoint({
    required String eventSlug,
    RequestOptions? options,
  }) async {
    final headers = <String, String>{...apiConfig.defaultHeaders};

    final request = ApiRequest(
      method: 'POST',
      path:
          '/api/mobile/protected/meetings/event/${Uri.encodeComponent(eventSlug)}/end',
      headers: headers,
      options: options,
    );

    return await execute(
      request,
      onSuccess: (_) {},
      onError: (response) {
        switch (response.statusCode) {
          case 400 || 403 || 404 || 500:
            final json = jsonDecode(response.body);
            return ErrorResponseSchema.fromJson(json as Map<String, dynamic>);
          default:
            return null;
        }
      },
    );
  }

  /// Mute Participant Endpoint
  ///
  /// `POST /api/mobile/protected/meetings/event/{event_slug}/mute/{participant_identity}`
  Future<ApiResult<void, ErrorResponseSchema>>
  totemMeetingsMobileApiMuteParticipantEndpoint({
    required String eventSlug,
    required String participantIdentity,
    RequestOptions? options,
  }) async {
    final headers = <String, String>{...apiConfig.defaultHeaders};

    final request = ApiRequest(
      method: 'POST',
      path:
          '/api/mobile/protected/meetings/event/${Uri.encodeComponent(eventSlug)}/mute/${Uri.encodeComponent(participantIdentity)}',
      headers: headers,
      options: options,
    );

    return await execute(
      request,
      onSuccess: (_) {},
      onError: (response) {
        switch (response.statusCode) {
          case 400 || 403 || 404 || 500:
            final json = jsonDecode(response.body);
            return ErrorResponseSchema.fromJson(json as Map<String, dynamic>);
          default:
            return null;
        }
      },
    );
  }

  /// Mute All Participants Endpoint
  ///
  /// `POST /api/mobile/protected/meetings/event/{event_slug}/mute-all`
  Future<ApiResult<void, ErrorResponseSchema>>
  totemMeetingsMobileApiMuteAllParticipantsEndpoint({
    required String eventSlug,
    RequestOptions? options,
  }) async {
    final headers = <String, String>{...apiConfig.defaultHeaders};

    final request = ApiRequest(
      method: 'POST',
      path:
          '/api/mobile/protected/meetings/event/${Uri.encodeComponent(eventSlug)}/mute-all',
      headers: headers,
      options: options,
    );

    return await execute(
      request,
      onSuccess: (_) {},
      onError: (response) {
        switch (response.statusCode) {
          case 400 || 403 || 404 || 500:
            final json = jsonDecode(response.body);
            return ErrorResponseSchema.fromJson(json as Map<String, dynamic>);
          default:
            return null;
        }
      },
    );
  }

  /// Remove Participant Endpoint
  ///
  /// `POST /api/mobile/protected/meetings/event/{event_slug}/remove/{participant_identity}`
  Future<ApiResult<void, ErrorResponseSchema>>
  totemMeetingsMobileApiRemoveParticipantEndpoint({
    required String eventSlug,
    required String participantIdentity,
    RequestOptions? options,
  }) async {
    final headers = <String, String>{...apiConfig.defaultHeaders};

    final request = ApiRequest(
      method: 'POST',
      path:
          '/api/mobile/protected/meetings/event/${Uri.encodeComponent(eventSlug)}/remove/${Uri.encodeComponent(participantIdentity)}',
      headers: headers,
      options: options,
    );

    return await execute(
      request,
      onSuccess: (_) {},
      onError: (response) {
        switch (response.statusCode) {
          case 400 || 403 || 404 || 500:
            final json = jsonDecode(response.body);
            return ErrorResponseSchema.fromJson(json as Map<String, dynamic>);
          default:
            return null;
        }
      },
    );
  }

  /// Reorder Participants Endpoint
  ///
  /// `POST /api/mobile/protected/meetings/event/{event_slug}/reorder`
  Future<ApiResult<LivekitOrderSchema, ErrorResponseSchema>>
  totemMeetingsMobileApiReorderParticipantsEndpoint({
    required String eventSlug,
    required LivekitOrderSchema body,
    RequestOptions? options,
  }) async {
    final headers = <String, String>{...apiConfig.defaultHeaders};
    headers['Content-Type'] = 'application/json';

    final request = ApiRequest(
      method: 'POST',
      path:
          '/api/mobile/protected/meetings/event/${Uri.encodeComponent(eventSlug)}/reorder',
      headers: headers,
      body: jsonEncode(body.toJson()),
      options: options,
    );

    return await execute(
      request,
      onSuccess: (response) {
        final json = jsonDecode(response.body);
        return LivekitOrderSchema.fromJson(json as Map<String, dynamic>);
      },
      onError: (response) {
        switch (response.statusCode) {
          case 400 || 403 || 404 || 500:
            final json = jsonDecode(response.body);
            return ErrorResponseSchema.fromJson(json as Map<String, dynamic>);
          default:
            return null;
        }
      },
    );
  }

  /// Get Room State Endpoint
  ///
  /// Retrieves the current session state for a room.
  ///
  /// This endpoint exposes the SessionState schema and its enums (SessionStatus, TotemStatus)
  /// in the OpenAPI documentation for client-side usage.
  ///
  /// `GET /api/mobile/protected/meetings/event/{event_slug}/room-state`
  Future<ApiResult<SessionState, ErrorResponseSchema>>
  totemMeetingsMobileApiGetRoomStateEndpoint({
    required String eventSlug,
    RequestOptions? options,
  }) async {
    final headers = <String, String>{...apiConfig.defaultHeaders};

    final request = ApiRequest(
      method: 'GET',
      path:
          '/api/mobile/protected/meetings/event/${Uri.encodeComponent(eventSlug)}/room-state',
      headers: headers,
      options: options,
    );

    return await execute(
      request,
      onSuccess: (response) {
        final json = jsonDecode(response.body);
        return SessionState.fromJson(json as Map<String, dynamic>);
      },
      onError: (response) {
        switch (response.statusCode) {
          case 403 || 404 || 500:
            final json = jsonDecode(response.body);
            return ErrorResponseSchema.fromJson(json as Map<String, dynamic>);
          default:
            return null;
        }
      },
    );
  }
}
