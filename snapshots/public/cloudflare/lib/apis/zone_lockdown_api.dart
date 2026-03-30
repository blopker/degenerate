// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/firewall_identifier.dart';import '../models/firewall_ip_range_search.dart';import '../models/firewall_ip_search.dart';import '../models/firewall_lockdowns_components_schemas_id.dart';import '../models/firewall_modified_on.dart';import '../models/firewall_schemas_description_search.dart';import '../models/firewall_schemas_priority.dart';import '../models/firewall_uri_search.dart';import '../models/firewall_zonelockdown.dart';import '../models/zone_lockdown_create_a_zone_lockdown_rule_request.dart';import '../models/zone_lockdown_delete_a_zone_lockdown_rule_response_result.dart';import '../models/zone_lockdown_update_a_zone_lockdown_rule_request.dart';/// ZoneLockdownApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZoneLockdownApi with ApiExecutor {const ZoneLockdownApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Zone Lockdown rules
///
/// Fetches Zone Lockdown rules. You can filter the results using several optional parameters.
///
/// `GET /zones/{zone_id}/firewall/lockdowns`
Future<ApiResult<List<FirewallZonelockdown>, Never>> zoneLockdownListZoneLockdownRules({required FirewallIdentifier zoneId, double? page, FirewallSchemasDescriptionSearch? description, FirewallModifiedOn? modifiedOn, FirewallIpSearch? ip, FirewallSchemasPriority? priority, FirewallUriSearch? uriSearch, FirewallIpRangeSearch? ipRangeSearch, double? perPage, DateTime? createdOn, String? descriptionSearch, String? ipSearch, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (description != null) {
  queryParameters['description'] = description.toString();
}
if (modifiedOn != null) {
  queryParameters['modified_on'] = modifiedOn.toString();
}
if (ip != null) {
  queryParameters['ip'] = ip.toString();
}
if (priority != null) {
  queryParameters['priority'] = priority.toString();
}
if (uriSearch != null) {
  queryParameters['uri_search'] = uriSearch.toString();
}
if (ipRangeSearch != null) {
  queryParameters['ip_range_search'] = ipRangeSearch.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (createdOn != null) {
  queryParameters['created_on'] = createdOn.toString();
}
if (descriptionSearch != null) {
  queryParameters['description_search'] = descriptionSearch;
}
if (ipSearch != null) {
  queryParameters['ip_search'] = ipSearch;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/firewall/lockdowns',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>).map((e) => FirewallZonelockdown.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create a Zone Lockdown rule
///
/// Creates a new Zone Lockdown rule.
///
/// `POST /zones/{zone_id}/firewall/lockdowns`
Future<ApiResult<FirewallZonelockdown, Never>> zoneLockdownCreateAZoneLockdownRule({required FirewallIdentifier zoneId, required ZoneLockdownCreateAZoneLockdownRuleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/firewall/lockdowns',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return FirewallZonelockdown.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Get a Zone Lockdown rule
///
/// Fetches the details of a Zone Lockdown rule.
///
/// `GET /zones/{zone_id}/firewall/lockdowns/{lock_downs_id}`
Future<ApiResult<FirewallZonelockdown, Never>> zoneLockdownGetAZoneLockdownRule({required FirewallLockdownsComponentsSchemasId lockDownsId, required FirewallIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/firewall/lockdowns/${Uri.encodeComponent(lockDownsId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return FirewallZonelockdown.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Update a Zone Lockdown rule
///
/// Updates an existing Zone Lockdown rule.
///
/// `PUT /zones/{zone_id}/firewall/lockdowns/{lock_downs_id}`
Future<ApiResult<FirewallZonelockdown, Never>> zoneLockdownUpdateAZoneLockdownRule({required FirewallLockdownsComponentsSchemasId lockDownsId, required FirewallIdentifier zoneId, required ZoneLockdownUpdateAZoneLockdownRuleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/firewall/lockdowns/${Uri.encodeComponent(lockDownsId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return FirewallZonelockdown.fromJson(json['result'] as Map<String, dynamic>);
  },
);
 } 
/// Delete a Zone Lockdown rule
///
/// Deletes an existing Zone Lockdown rule.
///
/// `DELETE /zones/{zone_id}/firewall/lockdowns/{lock_downs_id}`
Future<ApiResult<ZoneLockdownDeleteAZoneLockdownRuleResponseResult?, Never>> zoneLockdownDeleteAZoneLockdownRule({required FirewallLockdownsComponentsSchemasId lockDownsId, required FirewallIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/firewall/lockdowns/${Uri.encodeComponent(lockDownsId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ZoneLockdownDeleteAZoneLockdownRuleResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
