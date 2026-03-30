// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/base_error_response.dart';import '../models/cc_account_registry_token.dart';import '../models/cc_image_registry_credentials_configuration.dart';/// ImageRegistriesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ImageRegistriesApi with ApiExecutor {const ImageRegistriesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Generate a JWT to interact with the specified image registry.
///
/// Generates temporary credentials for accessing Cloudflare's container image registry. Used for pulling and pushing container images.
///
/// `POST /accounts/{account_id}/containers/registries/{domain}/credentials`
Future<ApiResult<CcAccountRegistryToken, BaseErrorResponse>> generateImageRegistryCredentials({required String accountId, required String domain, required CcImageRegistryCredentialsConfiguration body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/containers/registries/${Uri.encodeComponent(domain)}/credentials',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return CcAccountRegistryToken.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return BaseErrorResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
