// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/asn_intelligence_get_asn_overview_response4xx.dart';import '../models/asn_intelligence_get_asn_subnets_response.dart';import '../models/asn_intelligence_get_asn_subnets_response4xx.dart';import '../models/intel_asn.dart';import '../models/intel_identifier.dart';/// AsnIntelligenceApi operations.
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
Future<ApiResult<IntelAsn?, AsnIntelligenceGetAsnOverviewResponse4xx>> asnIntelligenceGetAsnOverview({required IntelAsn asn, required IntelIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/intel/asn/${Uri.encodeComponent(asn.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? IntelAsn.fromJson(json['result'] as num) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return AsnIntelligenceGetAsnOverviewResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Get ASN Subnets
///
/// Get ASN Subnets.
///
/// `GET /accounts/{account_id}/intel/asn/{asn}/subnets`
Future<ApiResult<AsnIntelligenceGetAsnSubnetsResponse, AsnIntelligenceGetAsnSubnetsResponse4xx>> asnIntelligenceGetAsnSubnets({required IntelAsn asn, required IntelIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/intel/asn/${Uri.encodeComponent(asn.toString())}/subnets',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return AsnIntelligenceGetAsnSubnetsResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return AsnIntelligenceGetAsnSubnetsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
