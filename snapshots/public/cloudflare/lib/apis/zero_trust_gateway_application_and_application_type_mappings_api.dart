// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/zero_trust_gateway_app_types.dart';import '../models/zero_trust_gateway_application.dart';import '../models/zero_trust_gateway_application_type.dart';import '../models/zero_trust_gateway_components_schemas_identifier.dart';/// ZeroTrustGatewayApplicationAndApplicationTypeMappingsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZeroTrustGatewayApplicationAndApplicationTypeMappingsApi with ApiExecutor {const ZeroTrustGatewayApplicationAndApplicationTypeMappingsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List application and application type mappings
///
/// List all application and application type mappings.
///
/// `GET /accounts/{account_id}/gateway/app_types`
Future<ApiResult<List<ZeroTrustGatewayAppTypes>?, Never>> zeroTrustGatewayApplicationAndApplicationTypeMappingsListApplicationAndApplicationTypeMappings({required ZeroTrustGatewayComponentsSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/app_types',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => ZeroTrustGatewayApplication.fromJson(v as Map<String, dynamic>), fromB: (v) => ZeroTrustGatewayApplicationType.fromJson(v as Map<String, dynamic>),)).toList();
  },
);
 } 
 }
