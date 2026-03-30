// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/stream_key_response_collection_result.dart';import '../models/stream_keys.dart';import '../models/stream_schemas_identifier.dart';/// StreamSigningKeysApi operations.
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
Future<ApiResult<List<StreamKeyResponseCollectionResult>?, Never>> streamSigningKeysListSigningKeys({required StreamSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/keys',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => StreamKeyResponseCollectionResult.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create signing keys
///
/// Creates an RSA private key in PEM and JWK formats. Key files are only displayed once after creation. Keys are created, used, and deleted independently of videos, and every key can sign any video.
///
/// `POST /accounts/{account_id}/stream/keys`
Future<ApiResult<StreamKeys?, Never>> streamSigningKeysCreateSigningKeys({required StreamSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/keys',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? StreamKeys.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete signing keys
///
/// Deletes signing keys and revokes all signed URLs generated with the key.
///
/// `DELETE /accounts/{account_id}/stream/keys/{identifier}`
Future<ApiResult<String?, Never>> streamSigningKeysDeleteSigningKeys({required StreamSchemasIdentifier identifier, required StreamSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/keys/${Uri.encodeComponent(identifier.toString())}',
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
 }
