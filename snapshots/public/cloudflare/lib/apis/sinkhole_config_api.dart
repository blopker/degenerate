// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/intel_sinkholes_get_sinkholes_response.dart';import '../models/intel_sinkholes_identifier.dart';/// SinkholeConfigApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class SinkholeConfigApi with ApiExecutor {const SinkholeConfigApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List sinkholes owned by this account
///
/// `GET /accounts/{account_id}/intel/sinkholes`
Future<ApiResult<IntelSinkholesGetSinkholesResponse, Never>> sinkholeConfigGetSinkholes({required IntelSinkholesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/intel/sinkholes',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return IntelSinkholesGetSinkholesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
