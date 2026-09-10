// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/account_load_balancer_monitor_groups_create_monitor_group_response412.dart';import '../models/account_load_balancer_monitor_groups_create_monitor_group_response4_xx.dart';import '../models/account_load_balancer_monitor_groups_delete_monitor_group_response412.dart';import '../models/account_load_balancer_monitor_groups_delete_monitor_group_response4_xx.dart';import '../models/account_load_balancer_monitor_groups_list_monitor_group_references_response4_xx.dart';import '../models/account_load_balancer_monitor_groups_list_monitor_groups_response4_xx.dart';import '../models/account_load_balancer_monitor_groups_monitor_group_details_response4_xx.dart';import '../models/account_load_balancer_monitor_groups_patch_monitor_group_response412.dart';import '../models/account_load_balancer_monitor_groups_patch_monitor_group_response4_xx.dart';import '../models/account_load_balancer_monitor_groups_update_monitor_group_response412.dart';import '../models/account_load_balancer_monitor_groups_update_monitor_group_response4_xx.dart';import '../models/load_balancing_components_schemas_identifier.dart';import '../models/load_balancing_identifier.dart';import '../models/load_balancing_monitor_group.dart';import '../models/load_balancing_monitor_group_references_response_result.dart';import '../models/load_balancing_monitor_group_request.dart';import '../models/load_balancing_schemas_identifier.dart';/// AccountLoadBalancerMonitorGroupsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AccountLoadBalancerMonitorGroupsApi with ApiExecutor {const AccountLoadBalancerMonitorGroupsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Monitor Groups
///
/// List configured monitor groups.
///
/// `GET /accounts/{account_id}/load_balancers/monitor_groups`
Future<ApiResult<List<LoadBalancingMonitorGroup>, AccountLoadBalancerMonitorGroupsListMonitorGroupsResponse4Xx>> accountLoadBalancerMonitorGroupsListMonitorGroups({required LoadBalancingComponentsSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/load_balancers/monitor_groups',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => LoadBalancingMonitorGroup.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return AccountLoadBalancerMonitorGroupsListMonitorGroupsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Create Monitor Group
///
/// Create a new monitor group.
///
/// `POST /accounts/{account_id}/load_balancers/monitor_groups`
Future<ApiResult<LoadBalancingMonitorGroup, OneOf2<AccountLoadBalancerMonitorGroupsCreateMonitorGroupResponse4Xx, AccountLoadBalancerMonitorGroupsCreateMonitorGroupResponse412>>> accountLoadBalancerMonitorGroupsCreateMonitorGroup({required LoadBalancingComponentsSchemasIdentifier accountId, required LoadBalancingMonitorGroupRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/load_balancers/monitor_groups',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return LoadBalancingMonitorGroup.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 412 || >= 413 && < 500:
final json = jsonDecode(response.body);
return OneOf2<AccountLoadBalancerMonitorGroupsCreateMonitorGroupResponse4Xx, AccountLoadBalancerMonitorGroupsCreateMonitorGroupResponse412>.a(AccountLoadBalancerMonitorGroupsCreateMonitorGroupResponse4Xx.fromJson(json as Map<String, dynamic>));
case 412:
final json = jsonDecode(response.body);
return OneOf2<AccountLoadBalancerMonitorGroupsCreateMonitorGroupResponse4Xx, AccountLoadBalancerMonitorGroupsCreateMonitorGroupResponse412>.b(AccountLoadBalancerMonitorGroupsCreateMonitorGroupResponse412.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Monitor Group Details
///
/// Fetch a single configured monitor group.
///
/// `GET /accounts/{account_id}/load_balancers/monitor_groups/{monitor_group_id}`
Future<ApiResult<LoadBalancingMonitorGroup, AccountLoadBalancerMonitorGroupsMonitorGroupDetailsResponse4Xx>> accountLoadBalancerMonitorGroupsMonitorGroupDetails({required LoadBalancingSchemasIdentifier monitorGroupId, required LoadBalancingComponentsSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/load_balancers/monitor_groups/${Uri.encodeComponent(monitorGroupId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return LoadBalancingMonitorGroup.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return AccountLoadBalancerMonitorGroupsMonitorGroupDetailsResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Update Monitor Group
///
/// Modify a configured monitor group.
///
/// `PUT /accounts/{account_id}/load_balancers/monitor_groups/{monitor_group_id}`
Future<ApiResult<LoadBalancingMonitorGroup, OneOf2<AccountLoadBalancerMonitorGroupsUpdateMonitorGroupResponse4Xx, AccountLoadBalancerMonitorGroupsUpdateMonitorGroupResponse412>>> accountLoadBalancerMonitorGroupsUpdateMonitorGroup({required LoadBalancingSchemasIdentifier monitorGroupId, required LoadBalancingComponentsSchemasIdentifier accountId, required LoadBalancingMonitorGroupRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/load_balancers/monitor_groups/${Uri.encodeComponent(monitorGroupId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return LoadBalancingMonitorGroup.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 412 || >= 413 && < 500:
final json = jsonDecode(response.body);
return OneOf2<AccountLoadBalancerMonitorGroupsUpdateMonitorGroupResponse4Xx, AccountLoadBalancerMonitorGroupsUpdateMonitorGroupResponse412>.a(AccountLoadBalancerMonitorGroupsUpdateMonitorGroupResponse4Xx.fromJson(json as Map<String, dynamic>));
case 412:
final json = jsonDecode(response.body);
return OneOf2<AccountLoadBalancerMonitorGroupsUpdateMonitorGroupResponse4Xx, AccountLoadBalancerMonitorGroupsUpdateMonitorGroupResponse412>.b(AccountLoadBalancerMonitorGroupsUpdateMonitorGroupResponse412.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Patch Monitor Group
///
/// Apply changes to an existing monitor group, overwriting the supplied properties.
///
/// `PATCH /accounts/{account_id}/load_balancers/monitor_groups/{monitor_group_id}`
Future<ApiResult<LoadBalancingMonitorGroup, OneOf2<AccountLoadBalancerMonitorGroupsPatchMonitorGroupResponse4Xx, AccountLoadBalancerMonitorGroupsPatchMonitorGroupResponse412>>> accountLoadBalancerMonitorGroupsPatchMonitorGroup({required LoadBalancingSchemasIdentifier monitorGroupId, required LoadBalancingComponentsSchemasIdentifier accountId, required LoadBalancingMonitorGroupRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/load_balancers/monitor_groups/${Uri.encodeComponent(monitorGroupId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return LoadBalancingMonitorGroup.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 412 || >= 413 && < 500:
final json = jsonDecode(response.body);
return OneOf2<AccountLoadBalancerMonitorGroupsPatchMonitorGroupResponse4Xx, AccountLoadBalancerMonitorGroupsPatchMonitorGroupResponse412>.a(AccountLoadBalancerMonitorGroupsPatchMonitorGroupResponse4Xx.fromJson(json as Map<String, dynamic>));
case 412:
final json = jsonDecode(response.body);
return OneOf2<AccountLoadBalancerMonitorGroupsPatchMonitorGroupResponse4Xx, AccountLoadBalancerMonitorGroupsPatchMonitorGroupResponse412>.b(AccountLoadBalancerMonitorGroupsPatchMonitorGroupResponse412.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Delete Monitor Group
///
/// Delete a configured monitor group.
///
/// `DELETE /accounts/{account_id}/load_balancers/monitor_groups/{monitor_group_id}`
Future<ApiResult<LoadBalancingMonitorGroup, OneOf2<AccountLoadBalancerMonitorGroupsDeleteMonitorGroupResponse4Xx, AccountLoadBalancerMonitorGroupsDeleteMonitorGroupResponse412>>> accountLoadBalancerMonitorGroupsDeleteMonitorGroup({required LoadBalancingSchemasIdentifier monitorGroupId, required LoadBalancingComponentsSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/load_balancers/monitor_groups/${Uri.encodeComponent(monitorGroupId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return LoadBalancingMonitorGroup.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 412 || >= 413 && < 500:
final json = jsonDecode(response.body);
return OneOf2<AccountLoadBalancerMonitorGroupsDeleteMonitorGroupResponse4Xx, AccountLoadBalancerMonitorGroupsDeleteMonitorGroupResponse412>.a(AccountLoadBalancerMonitorGroupsDeleteMonitorGroupResponse4Xx.fromJson(json as Map<String, dynamic>));
case 412:
final json = jsonDecode(response.body);
return OneOf2<AccountLoadBalancerMonitorGroupsDeleteMonitorGroupResponse4Xx, AccountLoadBalancerMonitorGroupsDeleteMonitorGroupResponse412>.b(AccountLoadBalancerMonitorGroupsDeleteMonitorGroupResponse412.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// List Monitor Group References
///
/// Get the list of resources that reference the provided monitor group.
///
/// `GET /accounts/{account_id}/load_balancers/monitor_groups/{monitor_group_id}/references`
Future<ApiResult<List<LoadBalancingMonitorGroupReferencesResponseResult>, AccountLoadBalancerMonitorGroupsListMonitorGroupReferencesResponse4Xx>> accountLoadBalancerMonitorGroupsListMonitorGroupReferences({required LoadBalancingIdentifier monitorGroupId, required LoadBalancingComponentsSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/load_balancers/monitor_groups/${Uri.encodeComponent(monitorGroupId.toString())}/references',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => LoadBalancingMonitorGroupReferencesResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return AccountLoadBalancerMonitorGroupsListMonitorGroupReferencesResponse4Xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
