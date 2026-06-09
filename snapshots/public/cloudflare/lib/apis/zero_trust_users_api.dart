// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_active_session_response_result.dart';import '../models/access_active_sessions_response_result.dart';import '../models/access_authenticator_id.dart';import '../models/access_failed_login_response_result.dart';import '../models/access_identifier.dart';import '../models/access_identity.dart';import '../models/access_nonce.dart';import '../models/access_schemas_users.dart';import '../models/access_uuid.dart';import '../models/response_common_failure4.dart';import '../models/zero_trust_users_create_user_request.dart';import '../models/zero_trust_users_update_user_request.dart';/// ZeroTrustUsersApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZeroTrustUsersApi with ApiExecutor {const ZeroTrustUsersApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get users
///
/// Gets a list of users for an account.
///
/// `GET /accounts/{account_id}/access/users`
Future<ApiResult<List<AccessSchemasUsers>?, ResponseCommonFailure4>> zeroTrustUsersGetUsers({required AccessIdentifier accountId, String? name, String? email, String? search, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (name != null) {
  queryParameters['name'] = name;
}
if (email != null) {
  queryParameters['email'] = email;
}
if (search != null) {
  queryParameters['search'] = search;
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/users',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AccessSchemasUsers.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return ResponseCommonFailure4.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a user
///
/// Creates a new user.
///
/// `POST /accounts/{account_id}/access/users`
Future<ApiResult<AccessSchemasUsers?, ResponseCommonFailure4>> zeroTrustUsersCreateUser({required AccessIdentifier accountId, required ZeroTrustUsersCreateUserRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/users',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessSchemasUsers.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ResponseCommonFailure4.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a user
///
/// Gets a specific user for an account.
///
/// `GET /accounts/{account_id}/access/users/{user_id}`
Future<ApiResult<AccessSchemasUsers?, ResponseCommonFailure4>> zeroTrustUsersGetUser({required AccessUuid userId, required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/users/${Uri.encodeComponent(userId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessSchemasUsers.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ResponseCommonFailure4.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a user
///
/// Updates a specific user's name for an account. Requires the user's current email as confirmation (email cannot be changed).
///
/// `PUT /accounts/{account_id}/access/users/{user_id}`
Future<ApiResult<AccessSchemasUsers?, ResponseCommonFailure4>> zeroTrustUsersUpdateUser({required AccessUuid userId, required AccessIdentifier accountId, required ZeroTrustUsersUpdateUserRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/users/${Uri.encodeComponent(userId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessSchemasUsers.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ResponseCommonFailure4.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a user
///
/// Deletes a specific user for an account. This will also revoke any active seats and tokens for the user.
///
/// `DELETE /accounts/{account_id}/access/users/{user_id}`
Future<ApiResult<Map<String, dynamic>?, ResponseCommonFailure4>> zeroTrustUsersDeleteUser({required AccessUuid userId, required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/users/${Uri.encodeComponent(userId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>?;
  },
  onError: (response) {
    return ResponseCommonFailure4.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get active sessions
///
/// Get active sessions for a single user.
///
/// `GET /accounts/{account_id}/access/users/{user_id}/active_sessions`
Future<ApiResult<List<AccessActiveSessionsResponseResult>?, ResponseCommonFailure4>> zeroTrustUsersGetActiveSessions({required AccessUuid userId, required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/users/${Uri.encodeComponent(userId.toString())}/active_sessions',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AccessActiveSessionsResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return ResponseCommonFailure4.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get single active session
///
/// Get an active session for a single user.
///
/// `GET /accounts/{account_id}/access/users/{user_id}/active_sessions/{nonce}`
Future<ApiResult<AccessActiveSessionResponseResult?, ResponseCommonFailure4>> zeroTrustUsersGetActiveSession({required AccessUuid userId, required AccessIdentifier accountId, required AccessNonce nonce, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/users/${Uri.encodeComponent(userId.toString())}/active_sessions/${Uri.encodeComponent(nonce.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessActiveSessionResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ResponseCommonFailure4.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get failed logins
///
/// Get all failed login attempts for a single user.
///
/// `GET /accounts/{account_id}/access/users/{user_id}/failed_logins`
Future<ApiResult<List<AccessFailedLoginResponseResult>?, ResponseCommonFailure4>> zeroTrustUsersGetFailedLogins({required AccessUuid userId, required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/users/${Uri.encodeComponent(userId.toString())}/failed_logins',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AccessFailedLoginResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return ResponseCommonFailure4.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get last seen identity
///
/// Get last seen identity for a single user.
///
/// `GET /accounts/{account_id}/access/users/{user_id}/last_seen_identity`
Future<ApiResult<AccessIdentity?, ResponseCommonFailure4>> zeroTrustUsersGetLastSeenIdentity({required AccessUuid userId, required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/users/${Uri.encodeComponent(userId.toString())}/last_seen_identity',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessIdentity.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return ResponseCommonFailure4.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a user's MFA device
///
/// Deletes a specific MFA device for a user. This action is only available if MFA is turned on for the organization.
///
/// `DELETE /accounts/{account_id}/access/users/{user_id}/mfa_authenticators/{authenticator_id}`
Future<ApiResult<Map<String, dynamic>?, ResponseCommonFailure4>> zeroTrustUsersDeleteMfaAuthenticator({required AccessUuid userId, required AccessIdentifier accountId, required AccessAuthenticatorId authenticatorId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/users/${Uri.encodeComponent(userId.toString())}/mfa_authenticators/${Uri.encodeComponent(authenticatorId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as Map<String, dynamic>?;
  },
  onError: (response) {
    return ResponseCommonFailure4.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
