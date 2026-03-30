// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/cloud_connector_identifier.dart';import '../models/cloud_connector_rule.dart';/// ZoneCloudConnectorRulesPutApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZoneCloudConnectorRulesPutApi with ApiExecutor {const ZoneCloudConnectorRulesPutApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Put Rules
///
/// `PUT /zones/{zone_id}/cloud_connector/rules`
Future<ApiResult<List<CloudConnectorRule>?, Never>> zoneCloudConenctorRulesPut({required CloudConnectorIdentifier zoneId, List<CloudConnectorRule>? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/cloud_connector/rules',
  headers: headers,
  body: jsonEncode(body),
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
