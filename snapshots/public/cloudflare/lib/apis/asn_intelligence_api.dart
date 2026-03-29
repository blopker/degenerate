// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/asn_intelligence_get_asn_subnets_response.dart';import '../models/intel_asn.dart';import '../models/intel_identifier.dart';import '../models/response_common40.dart';/// AsnIntelligenceApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AsnIntelligenceApi with ApiExecutor {const AsnIntelligenceApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get ASN Overview.
///
/// Gets an overview of the Autonomous System Number (ASN) and a list of subnets for it.
///
/// `GET /accounts/{account_id}/intel/asn/{asn}`
Future<ApiResult<ResponseCommon40, Never>> asnIntelligenceGetAsnOverview({required IntelAsn asn, required IntelIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/intel/asn/${Uri.encodeComponent(asn.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon40.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get ASN Subnets
///
/// Get ASN Subnets.
///
/// `GET /accounts/{account_id}/intel/asn/{asn}/subnets`
Future<ApiResult<AsnIntelligenceGetAsnSubnetsResponse, Never>> asnIntelligenceGetAsnSubnets({required IntelAsn asn, required IntelIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/intel/asn/${Uri.encodeComponent(asn.toString())}/subnets',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AsnIntelligenceGetAsnSubnetsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
