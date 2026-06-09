// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/response_common69_result.dart';import '../models/response_common_failure72.dart';import '../models/tunnel_account_id.dart';import '../models/zero_trust_accounts_patch_connectivity_settings_request.dart';/// ZeroTrustConnectivitySettingsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZeroTrustConnectivitySettingsApi with ApiExecutor {const ZeroTrustConnectivitySettingsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Zero Trust Connectivity Settings
///
/// Gets the Zero Trust Connectivity Settings for the given account.
///
/// `GET /accounts/{account_id}/zerotrust/connectivity_settings`
Future<ApiResult<ResponseCommon69Result, ResponseCommonFailure72>> zeroTrustAccountsGetConnectivitySettings({required TunnelAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/zerotrust/connectivity_settings',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
  onError: (response) {
    return ResponseCommonFailure72.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Updates the Zero Trust Connectivity Settings
///
/// Updates the Zero Trust Connectivity Settings for the given account.
///
/// `PATCH /accounts/{account_id}/zerotrust/connectivity_settings`
Future<ApiResult<ResponseCommon69Result, ResponseCommonFailure72>> zeroTrustAccountsPatchConnectivitySettings({required TunnelAccountId accountId, required ZeroTrustAccountsPatchConnectivitySettingsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/zerotrust/connectivity_settings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
  onError: (response) {
    return ResponseCommonFailure72.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
