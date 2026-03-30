// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/intel_sinkholes_identifier.dart';import '../models/intel_sinkholes_sinkhole_item.dart';/// SinkholeConfigApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class SinkholeConfigApi with ApiExecutor {const SinkholeConfigApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List sinkholes owned by this account
///
/// `GET /accounts/{account_id}/intel/sinkholes`
Future<ApiResult<List<IntelSinkholesSinkholeItem>?, Never>> sinkholeConfigGetSinkholes({required IntelSinkholesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/intel/sinkholes',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => IntelSinkholesSinkholeItem.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
 }
