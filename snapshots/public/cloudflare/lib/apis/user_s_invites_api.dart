// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/iam_invite_components_schemas_identifier.dart';import '../models/iam_schemas_collection_invite_response.dart';import '../models/iam_single_invite_response.dart';import '../models/user_s_invites_respond_to_invitation_request.dart';/// UserSInvitesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class UserSInvitesApi with ApiExecutor {const UserSInvitesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Invitations
///
/// Lists all invitations associated with my user.
///
/// `GET /user/invites`
Future<ApiResult<IamSchemasCollectionInviteResponse, Never>> userSInvitesListInvitations({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/user/invites',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return IamSchemasCollectionInviteResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Invitation Details
///
/// Gets the details of an invitation.
///
/// `GET /user/invites/{invite_id}`
Future<ApiResult<IamSingleInviteResponse, Never>> userSInvitesInvitationDetails({required IamInviteComponentsSchemasIdentifier inviteId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/user/invites/${Uri.encodeComponent(inviteId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return IamSingleInviteResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Respond to Invitation
///
/// Responds to an invitation.
///
/// `PATCH /user/invites/{invite_id}`
Future<ApiResult<IamSingleInviteResponse, Never>> userSInvitesRespondToInvitation({required IamInviteComponentsSchemasIdentifier inviteId, required UserSInvitesRespondToInvitationRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/user/invites/${Uri.encodeComponent(inviteId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return IamSingleInviteResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
