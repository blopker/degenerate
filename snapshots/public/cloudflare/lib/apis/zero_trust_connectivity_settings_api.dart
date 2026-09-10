// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/response_common_failure72.dart';import '../models/tunnel_account_id.dart';import '../models/tunnel_zero_trust_connectivity_settings_response_result.dart';import '../models/zero_trust_accounts_patch_connectivity_settings_request.dart';/// ZeroTrustConnectivitySettingsApi operations.
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
Future<ApiResult<TunnelZeroTrustConnectivitySettingsResponseResult, ResponseCommonFailure72>> zeroTrustAccountsGetConnectivitySettings({required TunnelAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/zerotrust/connectivity_settings',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TunnelZeroTrustConnectivitySettingsResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure72.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Updates the Zero Trust Connectivity Settings
///
/// Updates the Zero Trust Connectivity Settings for the given account.
///
/// `PATCH /accounts/{account_id}/zerotrust/connectivity_settings`
Future<ApiResult<TunnelZeroTrustConnectivitySettingsResponseResult, ResponseCommonFailure72>> zeroTrustAccountsPatchConnectivitySettings({required TunnelAccountId accountId, required ZeroTrustAccountsPatchConnectivitySettingsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/zerotrust/connectivity_settings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return TunnelZeroTrustConnectivitySettingsResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ResponseCommonFailure72.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
