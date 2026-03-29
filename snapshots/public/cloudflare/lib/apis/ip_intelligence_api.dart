// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/intel_identifier.dart';import '../models/response_common39.dart';/// IpIntelligenceApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class IpIntelligenceApi with ApiExecutor {const IpIntelligenceApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get IP Overview
///
/// Gets the geolocation, ASN, infrastructure type of the ASN, and any security threat categories of an IP address. **Must provide ip query parameters.** For example, `/intel/ip?ipv4=1.1.1.1` or `/intel/ip?ipv6=2001:db8::1`.
///
/// `GET /accounts/{account_id}/intel/ip`
Future<ApiResult<ResponseCommon39, Never>> ipIntelligenceGetIpOverview({required IntelIdentifier accountId, String? ipv4, String? ipv6, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (ipv4 != null) queryParameters['ipv4'] = ipv4;
if (ipv6 != null) queryParameters['ipv6'] = ipv6;

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/intel/ip',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon39.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
