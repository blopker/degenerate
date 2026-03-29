// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/firewall_identifier.dart';import '../models/firewall_rule_identifier.dart';import '../models/firewall_schemas_mode.dart';import '../models/ip_access_rules_for_a_zone_create_an_ip_access_rule_request.dart';import '../models/ip_access_rules_for_a_zone_delete_an_ip_access_rule_request.dart';import '../models/ip_access_rules_for_a_zone_list_ip_access_rules_configuration_target.dart';import '../models/ip_access_rules_for_a_zone_list_ip_access_rules_direction.dart';import '../models/ip_access_rules_for_a_zone_list_ip_access_rules_match.dart';import '../models/ip_access_rules_for_a_zone_list_ip_access_rules_order.dart';import '../models/ip_access_rules_for_a_zone_update_an_ip_access_rule_request.dart';import '../models/response_common31.dart';/// IpAccessRulesForAZoneApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class IpAccessRulesForAZoneApi with ApiExecutor {const IpAccessRulesForAZoneApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List IP Access rules
///
/// Fetches IP Access rules of a zone. You can filter the results using several optional parameters.
///
/// `GET /zones/{zone_id}/firewall/access_rules/rules`
Future<ApiResult<ResponseCommon31, Never>> ipAccessRulesForAZoneListIpAccessRules({required FirewallIdentifier zoneId, FirewallSchemasMode? mode, IpAccessRulesForAZoneListIpAccessRulesConfigurationTarget? configurationTarget, String? configurationValue, String? notes, IpAccessRulesForAZoneListIpAccessRulesMatch? match, double? page, double? perPage, IpAccessRulesForAZoneListIpAccessRulesOrder? order, IpAccessRulesForAZoneListIpAccessRulesDirection? direction, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (mode != null) queryParameters['mode'] = mode.toJson();
if (configurationTarget != null) queryParameters['configuration.target'] = configurationTarget.toJson();
if (configurationValue != null) queryParameters['configuration.value'] = configurationValue;
if (notes != null) queryParameters['notes'] = notes;
if (match != null) queryParameters['match'] = match.toJson();
if (page != null) queryParameters['page'] = page.toString();
if (perPage != null) queryParameters['per_page'] = perPage.toString();
if (order != null) queryParameters['order'] = order.toJson();
if (direction != null) queryParameters['direction'] = direction.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/firewall/access_rules/rules',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon31.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create an IP Access rule
///
/// Creates a new IP Access rule for a zone.
/// 
/// Note: To create an IP Access rule that applies to multiple zones, refer to [IP Access rules for a user](#ip-access-rules-for-a-user) or [IP Access rules for an account](#ip-access-rules-for-an-account) as appropriate.
///
/// `POST /zones/{zone_id}/firewall/access_rules/rules`
Future<ApiResult<ResponseCommon31, Never>> ipAccessRulesForAZoneCreateAnIpAccessRule({required FirewallIdentifier zoneId, required IpAccessRulesForAZoneCreateAnIpAccessRuleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/firewall/access_rules/rules',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon31.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update an IP Access rule
///
/// Updates an IP Access rule defined at the zone level. You can only update the rule action (`mode` parameter) and notes.
///
/// `PATCH /zones/{zone_id}/firewall/access_rules/rules/{rule_id}`
Future<ApiResult<ResponseCommon31, Never>> ipAccessRulesForAZoneUpdateAnIpAccessRule({required FirewallIdentifier zoneId, required FirewallRuleIdentifier ruleId, required IpAccessRulesForAZoneUpdateAnIpAccessRuleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/firewall/access_rules/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon31.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete an IP Access rule
///
/// Deletes an IP Access rule defined at the zone level.
/// 
/// Optionally, you can use the `cascade` property to specify that you wish to delete similar rules in other zones managed by the same zone owner.
///
/// `DELETE /zones/{zone_id}/firewall/access_rules/rules/{rule_id}`
Future<ApiResult<ResponseCommon31, Never>> ipAccessRulesForAZoneDeleteAnIpAccessRule({required FirewallIdentifier zoneId, required FirewallRuleIdentifier ruleId, required IpAccessRulesForAZoneDeleteAnIpAccessRuleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/firewall/access_rules/rules/${Uri.encodeComponent(ruleId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon31.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
