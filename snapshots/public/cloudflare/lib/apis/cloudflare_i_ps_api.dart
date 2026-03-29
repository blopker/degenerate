// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/response_common52.dart';/// CloudflareIPsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class CloudflareIPsApi with ApiExecutor {const CloudflareIPsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Cloudflare/JD Cloud IP Details
///
/// Get IPs used on the Cloudflare/JD Cloud network, see https://www.cloudflare.com/ips for Cloudflare IPs or https://developers.cloudflare.com/china-network/reference/infrastructure/ for JD Cloud IPs.
///
/// `GET /ips`
Future<ApiResult<ResponseCommon52, Never>> cloudflareIpsCloudflareIpDetails({String? networks, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (networks != null) {
  queryParameters['networks'] = networks;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/ips',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon52.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
