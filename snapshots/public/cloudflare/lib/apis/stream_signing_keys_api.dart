// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/stream_deleted_response.dart';import '../models/stream_key_generation_response.dart';import '../models/stream_key_response_collection.dart';import '../models/stream_schemas_identifier.dart';/// StreamSigningKeysApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class StreamSigningKeysApi with ApiExecutor {const StreamSigningKeysApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List signing keys
///
/// Lists the video ID and creation date and time when a signing key was created.
///
/// `GET /accounts/{account_id}/stream/keys`
Future<ApiResult<StreamKeyResponseCollection, Never>> streamSigningKeysListSigningKeys({required StreamSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/keys',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return StreamKeyResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create signing keys
///
/// Creates an RSA private key in PEM and JWK formats. Key files are only displayed once after creation. Keys are created, used, and deleted independently of videos, and every key can sign any video.
///
/// `POST /accounts/{account_id}/stream/keys`
Future<ApiResult<StreamKeyGenerationResponse, Never>> streamSigningKeysCreateSigningKeys({required StreamSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/keys',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return StreamKeyGenerationResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete signing keys
///
/// Deletes signing keys and revokes all signed URLs generated with the key.
///
/// `DELETE /accounts/{account_id}/stream/keys/{identifier}`
Future<ApiResult<StreamDeletedResponse, Never>> streamSigningKeysDeleteSigningKeys({required StreamSchemasIdentifier identifier, required StreamSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/keys/${Uri.encodeComponent(identifier.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return StreamDeletedResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
