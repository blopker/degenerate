// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_identifier.dart';import '../models/access_key_config.dart';import '../models/access_key_configuration_update_the_access_key_configuration_request.dart';/// AccessKeyConfigurationApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AccessKeyConfigurationApi with ApiExecutor {const AccessKeyConfigurationApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get the Access key configuration
///
/// Gets the Access key rotation settings for an account.
///
/// `GET /accounts/{account_id}/access/keys`
Future<ApiResult<AccessKeyConfig?, Never>> accessKeyConfigurationGetTheAccessKeyConfiguration({required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/keys',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessKeyConfig.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update the Access key configuration
///
/// Updates the Access key rotation settings for an account.
///
/// `PUT /accounts/{account_id}/access/keys`
Future<ApiResult<AccessKeyConfig?, Never>> accessKeyConfigurationUpdateTheAccessKeyConfiguration({required AccessIdentifier accountId, required AccessKeyConfigurationUpdateTheAccessKeyConfigurationRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/keys',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessKeyConfig.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Rotate Access keys
///
/// Perfoms a key rotation for an account.
///
/// `POST /accounts/{account_id}/access/keys/rotate`
Future<ApiResult<AccessKeyConfig?, Never>> accessKeyConfigurationRotateAccessKeys({required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/keys/rotate',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessKeyConfig.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
