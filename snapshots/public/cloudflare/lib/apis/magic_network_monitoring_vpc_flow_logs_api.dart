// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/magic_network_monitoring_vpc_flows_generate_authentication_token_response4xx.dart';import '../models/magic_visibility_mnm_account_identifier.dart';import '../models/magic_visibility_mnm_mnm_vpc_flows_single_response.dart';/// MagicNetworkMonitoringVpcFlowLogsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class MagicNetworkMonitoringVpcFlowLogsApi with ApiExecutor {const MagicNetworkMonitoringVpcFlowLogsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Generate authentication token for VPC flow logs export.
///
/// `POST /accounts/{account_id}/mnm/vpc-flows/token`
Future<ApiResult<MagicVisibilityMnmMnmVpcFlowsToken, MagicNetworkMonitoringVpcFlowsGenerateAuthenticationTokenResponse4xx>> magicNetworkMonitoringVpcFlowsGenerateAuthenticationToken({required MagicVisibilityMnmAccountIdentifier accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/mnm/vpc-flows/token',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  MagicVisibilityMnmMnmVpcFlowsToken.fromJson(json['result'] as String);}, onError: (response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  MagicNetworkMonitoringVpcFlowsGenerateAuthenticationTokenResponse4xx.fromJson(json as Map<String, dynamic>);default:
return  null; }}, );}
}
