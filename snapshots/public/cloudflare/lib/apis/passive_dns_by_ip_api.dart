// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/intel_identifier.dart';import '../models/intel_passive_dns_by_ip.dart';import '../models/intel_start_end_params.dart';import '../models/passive_dns_by_ip_get_passive_dns_by_ip_response4_xx.dart';/// PassiveDnsByIpApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class PassiveDnsByIpApi with ApiExecutor {const PassiveDnsByIpApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Passive DNS by IP
///
/// Gets a list of all the domains that have resolved to a specific IP address.
///
/// `GET /accounts/{account_id}/intel/dns`
Future<ApiResult<IntelPassiveDnsByIp?, PassiveDnsByIpGetPassiveDnsByIpResponse4Xx>> passiveDnsByIpGetPassiveDnsByIp({required IntelIdentifier accountId, IntelStartEndParams? startEndParams, String? ipv4, double? page, double? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (startEndParams != null) {
if (startEndParams.end case final end$?) { queryParametersList.add(ApiQueryParameter(name: 'end', value: end$)); }
if (startEndParams.start case final start$?) { queryParametersList.add(ApiQueryParameter(name: 'start', value: start$)); }
}
if (ipv4 != null) {
  queryParameters['ipv4'] = ipv4;
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/intel/dns',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? IntelPassiveDnsByIp.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return PassiveDnsByIpGetPassiveDnsByIpResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
