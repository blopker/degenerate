// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/zero_trust_gateway_categories_components_schemas_response_collection.dart';import '../models/zero_trust_gateway_components_schemas_identifier.dart';/// ZeroTrustGatewayCategoriesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZeroTrustGatewayCategoriesApi with ApiExecutor {const ZeroTrustGatewayCategoriesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List categories
///
/// List all categories.
///
/// `GET /accounts/{account_id}/gateway/categories`
Future<ApiResult<ZeroTrustGatewayCategoriesComponentsSchemasResponseCollection, Never>> zeroTrustGatewayCategoriesListCategories({required ZeroTrustGatewayComponentsSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/categories',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZeroTrustGatewayCategoriesComponentsSchemasResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
