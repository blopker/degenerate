// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/get_participant_data_from_peer_id_filters.dart';import '../models/get_participant_data_from_peer_id_response.dart';import '../models/get_participant_details_filters.dart';import '../models/get_participant_details_response.dart';import '../models/get_session_chat_response.dart';import '../models/get_session_details_response.dart';import '../models/get_session_participants_response.dart';import '../models/get_session_participants_sort_by.dart';import '../models/get_session_participants_sort_order.dart';import '../models/get_session_participants_view.dart';import '../models/get_session_summary_response.dart';import '../models/get_session_transcript_response.dart';import '../models/get_sessions_response.dart';import '../models/get_sessions_sort_by.dart';import '../models/get_sessions_sort_order.dart';import '../models/get_sessions_status.dart';import '../models/realtimekit_account_identifier.dart';import '../models/realtimekit_app_id.dart';/// SessionsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class SessionsApi with ApiExecutor {const SessionsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Fetch all sessions of an App
///
/// Returns details of all sessions of an App.
///
/// `GET /accounts/{account_id}/realtime/kit/{app_id}/sessions`
Future<ApiResult<GetSessionsResponse, Never>> getSessions({required RealtimekitAccountIdentifier accountId, required RealtimekitAppId appId, double? pageNo, double? perPage, GetSessionsSortBy? sortBy, GetSessionsSortOrder? sortOrder, DateTime? startTime, DateTime? endTime, String? participants, GetSessionsStatus? status, String? search, String? associatedId, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (pageNo != null) {
  queryParameters['page_no'] = pageNo.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (sortBy != null) {
  queryParameters['sort_by'] = sortBy.toJson();
}
if (sortOrder != null) {
  queryParameters['sort_order'] = sortOrder.toJson();
}
if (startTime != null) {
  queryParameters['start_time'] = startTime.toString();
}
if (endTime != null) {
  queryParameters['end_time'] = endTime.toString();
}
if (participants != null) {
  queryParameters['participants'] = participants;
}
if (status != null) {
  queryParameters['status'] = status.toJson();
}
if (search != null) {
  queryParameters['search'] = search;
}
if (associatedId != null) {
  queryParameters['associated_id'] = associatedId;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/realtime/kit/${Uri.encodeComponent(appId.toString())}/sessions',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GetSessionsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Fetch details of a session
///
/// Returns data of the given session ID including recording details.
///
/// `GET /accounts/{account_id}/realtime/kit/{app_id}/sessions/{session_id}`
Future<ApiResult<GetSessionDetailsResponse, Never>> getSessionDetails({required RealtimekitAccountIdentifier accountId, required RealtimekitAppId appId, required String sessionId, bool? includeBreakoutRooms, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (includeBreakoutRooms != null) {
  queryParameters['include_breakout_rooms'] = includeBreakoutRooms.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/realtime/kit/${Uri.encodeComponent(appId.toString())}/sessions/${Uri.encodeComponent(sessionId)}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GetSessionDetailsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Fetch all chat messages of a session
///
/// Returns a URL to download all chat messages of the session ID in CSV format.
/// 
///
/// `GET /accounts/{account_id}/realtime/kit/{app_id}/sessions/{session_id}/chat`
Future<ApiResult<GetSessionChatResponse, Never>> getSessionChat({required RealtimekitAccountIdentifier accountId, required RealtimekitAppId appId, required String sessionId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/realtime/kit/${Uri.encodeComponent(appId.toString())}/sessions/${Uri.encodeComponent(sessionId)}/chat',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GetSessionChatResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Fetch participants list of a session
///
/// Returns a list of participants for the given session ID.
///
/// `GET /accounts/{account_id}/realtime/kit/{app_id}/sessions/{session_id}/participants`
Future<ApiResult<GetSessionParticipantsResponse, Never>> getSessionParticipants({required RealtimekitAccountIdentifier accountId, required RealtimekitAppId appId, required String sessionId, String? search, double? pageNo, double? perPage, GetSessionParticipantsSortOrder? sortOrder, GetSessionParticipantsSortBy? sortBy, bool? includePeerEvents, GetSessionParticipantsView? view, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (search != null) {
  queryParameters['search'] = search;
}
if (pageNo != null) {
  queryParameters['page_no'] = pageNo.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (sortOrder != null) {
  queryParameters['sort_order'] = sortOrder.toJson();
}
if (sortBy != null) {
  queryParameters['sort_by'] = sortBy.toJson();
}
if (includePeerEvents != null) {
  queryParameters['include_peer_events'] = includePeerEvents.toString();
}
if (view != null) {
  queryParameters['view'] = view.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/realtime/kit/${Uri.encodeComponent(appId.toString())}/sessions/${Uri.encodeComponent(sessionId)}/participants',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GetSessionParticipantsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Fetch details of a participant
///
/// Returns details of the given participant ID along with call statistics for the given session ID.
///
/// `GET /accounts/{account_id}/realtime/kit/{app_id}/sessions/{session_id}/participants/{participant_id}`
Future<ApiResult<GetParticipantDetailsResponse, Never>> getParticipantDetails({required RealtimekitAccountIdentifier accountId, required RealtimekitAppId appId, required String participantId, required String sessionId, GetParticipantDetailsFilters? filters, bool? includePeerEvents, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (filters != null) {
  queryParameters['filters'] = filters.toJson();
}
if (includePeerEvents != null) {
  queryParameters['include_peer_events'] = includePeerEvents.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/realtime/kit/${Uri.encodeComponent(appId.toString())}/sessions/${Uri.encodeComponent(sessionId)}/participants/${Uri.encodeComponent(participantId)}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GetParticipantDetailsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Fetch summary of transcripts for a session
///
/// Returns a Summary URL to download the Summary of Transcripts for the session ID as plain text.
///
/// `GET /accounts/{account_id}/realtime/kit/{app_id}/sessions/{session_id}/summary`
Future<ApiResult<GetSessionSummaryResponse, Never>> getSessionSummary({required RealtimekitAccountIdentifier accountId, required RealtimekitAppId appId, required String sessionId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/realtime/kit/${Uri.encodeComponent(appId.toString())}/sessions/${Uri.encodeComponent(sessionId)}/summary',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GetSessionSummaryResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Generate summary of Transcripts for the session
///
/// Trigger Summary generation of Transcripts for the session ID.
///
/// `POST /accounts/{account_id}/realtime/kit/{app_id}/sessions/{session_id}/summary`
Future<ApiResult<void, Never>> postSessionsSessionIdSummary({required RealtimekitAccountIdentifier accountId, required RealtimekitAppId appId, required String sessionId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/realtime/kit/${Uri.encodeComponent(appId.toString())}/sessions/${Uri.encodeComponent(sessionId)}/summary',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Fetch the complete transcript for a session
///
/// Returns a URL to download the transcript for the session ID in CSV format.
///
/// `GET /accounts/{account_id}/realtime/kit/{app_id}/sessions/{session_id}/transcript`
Future<ApiResult<GetSessionTranscriptResponse, Never>> getSessionTranscript({required RealtimekitAccountIdentifier accountId, required RealtimekitAppId appId, required String sessionId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/realtime/kit/${Uri.encodeComponent(appId.toString())}/sessions/${Uri.encodeComponent(sessionId)}/transcript',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GetSessionTranscriptResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Fetch details of peer
///
/// Returns details of the given peer ID along with call statistics for the given session ID.
///
/// `GET /accounts/{account_id}/realtime/kit/{app_id}/sessions/peer-report/{peer_id}`
Future<ApiResult<GetParticipantDataFromPeerIdResponse, Never>> getParticipantDataFromPeerId({required RealtimekitAccountIdentifier accountId, required RealtimekitAppId appId, required String peerId, GetParticipantDataFromPeerIdFilters? filters, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (filters != null) {
  queryParameters['filters'] = filters.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/realtime/kit/${Uri.encodeComponent(appId.toString())}/sessions/peer-report/${Uri.encodeComponent(peerId)}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GetParticipantDataFromPeerIdResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
