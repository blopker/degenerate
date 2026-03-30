// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/cloudflare_ips_cloudflare_ip_details_response_result.dart';import '../models/public_ip_ips.dart';import '../models/public_ip_ips_jdcloud.dart';/// CloudflareIPsApi operations.
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
Future<ApiResult<CloudflareIpsCloudflareIpDetailsResponseResult?, Never>> cloudflareIpsCloudflareIpDetails({String? networks, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? OneOf2.parse(json['result'], fromA: (v) => PublicIpIps.fromJson(v as Map<String, dynamic>), fromB: (v) => PublicIpIpsJdcloud.fromJson(v as Map<String, dynamic>),) : null;
  },
);
 } 
 }
