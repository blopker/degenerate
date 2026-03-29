// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/invite.dart';import '../models/invite_delete_response.dart';import '../models/invite_list_response.dart';import '../models/invite_request.dart';/// InvitesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class InvitesApi with ApiExecutor {const InvitesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Returns a list of invites in the organization.
///
/// `GET /organization/invites`
Future<ApiResult<InviteListResponse, Never>> listInvites({int? limit, String? after, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (after != null) {
  queryParameters['after'] = after;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/organization/invites',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return InviteListResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create an invite for a user to the organization. The invite must be accepted by the user before they have access to the organization.
///
/// `POST /organization/invites`
Future<ApiResult<Invite, Never>> inviteUser({required InviteRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/organization/invites',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Invite.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Retrieves an invite.
///
/// `GET /organization/invites/{invite_id}`
Future<ApiResult<Invite, Never>> retrieveInvite({required String inviteId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/organization/invites/${Uri.encodeComponent(inviteId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Invite.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete an invite. If the invite has already been accepted, it cannot be deleted.
///
/// `DELETE /organization/invites/{invite_id}`
Future<ApiResult<InviteDeleteResponse, Never>> deleteInvite({required String inviteId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/organization/invites/${Uri.encodeComponent(inviteId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return InviteDeleteResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
