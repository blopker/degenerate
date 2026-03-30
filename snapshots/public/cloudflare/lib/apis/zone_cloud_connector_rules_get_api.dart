// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/cloud_connector_identifier.dart';import '../models/cloud_connector_rule.dart';/// ZoneCloudConnectorRulesGetApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZoneCloudConnectorRulesGetApi with ApiExecutor {const ZoneCloudConnectorRulesGetApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Rules
///
/// `GET /zones/{zone_id}/cloud_connector/rules`
Future<ApiResult<List<CloudConnectorRule>?, Never>> zoneCloudConnectorRules({required CloudConnectorIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/cloud_connector/rules',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => CloudConnectorRule.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
 }
