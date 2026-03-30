// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_id_response_result.dart';import '../models/access_identifier.dart';import '../models/access_policies.dart';import '../models/access_uuid.dart';import '../models/zone_level_access_policies_create_an_access_policy_request.dart';import '../models/zone_level_access_policies_update_an_access_policy_request.dart';/// ZoneLevelAccessPoliciesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZoneLevelAccessPoliciesApi with ApiExecutor {const ZoneLevelAccessPoliciesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Access policies
///
/// Lists Access policies configured for an application.
///
/// `GET /zones/{zone_id}/access/apps/{app_id}/policies`
Future<ApiResult<List<AccessPolicies>?, Never>> zoneLevelAccessPoliciesListAccessPolicies({required AccessUuid appId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/policies',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AccessPolicies.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create an Access policy
///
/// Create a new Access policy for an application.
///
/// `POST /zones/{zone_id}/access/apps/{app_id}/policies`
Future<ApiResult<AccessPolicies?, Never>> zoneLevelAccessPoliciesCreateAnAccessPolicy({required AccessUuid appId, required AccessIdentifier zoneId, required ZoneLevelAccessPoliciesCreateAnAccessPolicyRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/policies',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessPolicies.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get an Access policy
///
/// Fetches a single Access policy.
///
/// `GET /zones/{zone_id}/access/apps/{app_id}/policies/{policy_id}`
Future<ApiResult<AccessPolicies?, Never>> zoneLevelAccessPoliciesGetAnAccessPolicy({required AccessUuid policyId, required AccessUuid appId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/policies/${Uri.encodeComponent(policyId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessPolicies.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update an Access policy
///
/// Update a configured Access policy.
///
/// `PUT /zones/{zone_id}/access/apps/{app_id}/policies/{policy_id}`
Future<ApiResult<AccessPolicies?, Never>> zoneLevelAccessPoliciesUpdateAnAccessPolicy({required AccessUuid policyId, required AccessUuid appId, required AccessIdentifier zoneId, required ZoneLevelAccessPoliciesUpdateAnAccessPolicyRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/policies/${Uri.encodeComponent(policyId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessPolicies.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete an Access policy
///
/// Delete an Access policy.
///
/// `DELETE /zones/{zone_id}/access/apps/{app_id}/policies/{policy_id}`
Future<ApiResult<AccessIdResponseResult?, Never>> zoneLevelAccessPoliciesDeleteAnAccessPolicy({required AccessUuid policyId, required AccessUuid appId, required AccessIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/access/apps/${Uri.encodeComponent(appId.toString())}/policies/${Uri.encodeComponent(policyId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
