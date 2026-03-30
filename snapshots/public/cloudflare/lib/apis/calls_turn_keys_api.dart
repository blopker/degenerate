// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/calls_account_identifier.dart';import '../models/calls_identifier.dart';import '../models/calls_turn_key_editable_fields.dart';import '../models/calls_turn_key_object.dart';import '../models/calls_turn_key_with_key.dart';/// CallsTurnKeysApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class CallsTurnKeysApi with ApiExecutor {const CallsTurnKeysApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List TURN Keys
///
/// Lists all TURN keys in the Cloudflare account
///
/// `GET /accounts/{account_id}/calls/turn_keys`
Future<ApiResult<List<CallsTurnKeyObject>?, Never>> callsTurnKeyList({required CallsAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/calls/turn_keys',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => CallsTurnKeyObject.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create a new TURN key
///
/// Creates a new Cloudflare Calls TURN key.
///
/// `POST /accounts/{account_id}/calls/turn_keys`
Future<ApiResult<CallsTurnKeyWithKey?, Never>> callsTurnKeyCreate({required CallsAccountIdentifier accountId, required CallsTurnKeyEditableFields body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/calls/turn_keys',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? CallsTurnKeyWithKey.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Retrieve TURN key details
///
/// Fetches details for a single TURN key.
///
/// `GET /accounts/{account_id}/calls/turn_keys/{key_id}`
Future<ApiResult<CallsTurnKeyObject?, Never>> callsRetrieveTurnKeyDetails({required CallsIdentifier keyId, required CallsAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/calls/turn_keys/${Uri.encodeComponent(keyId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? CallsTurnKeyObject.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Edit TURN key details
///
/// Edit details for a single TURN key.
///
/// `PUT /accounts/{account_id}/calls/turn_keys/{key_id}`
Future<ApiResult<CallsTurnKeyObject?, Never>> callsUpdateTurnKey({required CallsIdentifier keyId, required CallsAccountIdentifier accountId, required CallsTurnKeyEditableFields body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/calls/turn_keys/${Uri.encodeComponent(keyId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? CallsTurnKeyObject.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete TURN key
///
/// Deletes a TURN key from Cloudflare Calls
///
/// `DELETE /accounts/{account_id}/calls/turn_keys/{key_id}`
Future<ApiResult<CallsTurnKeyObject?, Never>> callsDeleteTurnKey({required CallsIdentifier keyId, required CallsAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/calls/turn_keys/${Uri.encodeComponent(keyId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? CallsTurnKeyObject.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
