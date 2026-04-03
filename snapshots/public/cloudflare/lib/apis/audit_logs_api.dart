// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/aaa_audit_logs2.dart';import '../models/aaa_audit_logs_response_collection.dart';import '../models/aaa_audit_logs_response_collection_variant1.dart';import '../models/aaa_identifier.dart';import '../models/audit_logs_get_account_audit_logs_direction.dart';import '../models/audit_logs_get_user_audit_logs_direction.dart';import '../models/get_account_audit_logs_action_result.dart';import '../models/get_account_audit_logs_action_result_not.dart';import '../models/get_account_audit_logs_action_type.dart';import '../models/get_account_audit_logs_action_type_not.dart';import '../models/get_account_audit_logs_actor_context.dart';import '../models/get_account_audit_logs_actor_context_not.dart';import '../models/get_account_audit_logs_actor_type.dart';import '../models/get_account_audit_logs_actor_type_not.dart';import '../models/get_account_audit_logs_direction.dart';import '../models/get_account_audit_logs_resource_scope.dart';import '../models/get_account_audit_logs_resource_scope_not.dart';import '../models/response_common.dart';/// AuditLogsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AuditLogsApi with ApiExecutor {const AuditLogsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get account audit logs
///
/// Gets a list of audit logs for an account. Can be filtered by who made the change, on which zone, and the timeframe of the change.
///
/// `GET /accounts/{account_id}/audit_logs`
Future<ApiResult<AaaAuditLogsResponseCollection, Never>> auditLogsGetAccountAuditLogs({required AaaIdentifier accountId, String? id, bool? $export, String? actionType, String? actorIp, String? actorEmail, dynamic since, dynamic before, String? zoneName, AuditLogsGetAccountAuditLogsDirection? direction, double? perPage, double? page, bool? hideUserLogs, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (id != null) {
  queryParameters['id'] = id;
}
if ($export != null) {
  queryParameters['export'] = $export.toString();
}
if (actionType != null) {
  queryParameters['action.type'] = actionType;
}
if (actorIp != null) {
  queryParameters['actor.ip'] = actorIp;
}
if (actorEmail != null) {
  queryParameters['actor.email'] = actorEmail;
}
if (since != null) {
  queryParameters['since'] = since.toString();
}
if (before != null) {
  queryParameters['before'] = before.toString();
}
if (zoneName != null) {
  queryParameters['zone.name'] = zoneName;
}
if (direction != null) {
  queryParameters['direction'] = direction.toJson();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (hideUserLogs != null) {
  queryParameters['hide_user_logs'] = hideUserLogs.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/audit_logs',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return OneOf2.parse(jsonDecode(response.body), fromA: (v) => AaaAuditLogsResponseCollectionVariant1.fromJson(v as Map<String, dynamic>), fromB: (v) => ResponseCommon.fromJson(v as Map<String, dynamic>),);
  },
);
 } 
/// Get account audit logs (Version 2, Beta release)
///
/// Gets a list of audit logs for an account. `<br />`  `<br />` This is the beta release of Audit Logs Version 2. Since this is a beta version, there may be gaps or missing entries in the available audit logs. Be aware of the following limitations.  `<br />` `<ul>` `<li>`Audit logs are available only for the past 30 days. `<br />``</li>` `<li>`Error handling is not yet implemented.  `<br />` `</li>` `</ul>`
///
/// `GET /accounts/{account_id}/logs/audit`
Future<ApiResult<List<AaaAuditLogs2>?, Never>> auditLogsV2GetAccountAuditLogs({required String accountId, List<String>? accountName, List<GetAccountAuditLogsActionResult>? actionResult, List<GetAccountAuditLogsActionType>? actionType, List<GetAccountAuditLogsActorContext>? actorContext, List<String>? actorEmail, List<String>? actorId, List<String>? actorIpAddress, List<String>? actorTokenId, List<String>? actorTokenName, List<GetAccountAuditLogsActorType>? actorType, List<String>? auditLogId, List<String>? id, List<String>? rawCfRayId, List<String>? rawMethod, List<int>? rawStatusCode, List<String>? rawUri, List<String>? resourceId, List<String>? resourceProduct, List<String>? resourceType, List<GetAccountAuditLogsResourceScope>? resourceScope, List<String>? zoneId, List<String>? zoneName, List<String>? accountNameNot, List<GetAccountAuditLogsActionResultNot>? actionResultNot, List<GetAccountAuditLogsActionTypeNot>? actionTypeNot, List<GetAccountAuditLogsActorContextNot>? actorContextNot, List<String>? actorEmailNot, List<String>? actorIdNot, List<String>? actorIpAddressNot, List<String>? actorTokenIdNot, List<String>? actorTokenNameNot, List<GetAccountAuditLogsActorTypeNot>? actorTypeNot, List<String>? auditLogIdNot, List<String>? idNot, List<String>? rawCfRayIdNot, List<String>? rawMethodNot, List<int>? rawStatusCodeNot, List<String>? rawUriNot, List<String>? resourceIdNot, List<String>? resourceProductNot, List<String>? resourceTypeNot, List<GetAccountAuditLogsResourceScopeNot>? resourceScopeNot, List<String>? zoneIdNot, List<String>? zoneNameNot, required String since, required String before, GetAccountAuditLogsDirection? direction, double? limit, String? cursor, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (accountName != null) {
for (final item in accountName) {
  queryParametersList.add(ApiQueryParameter(name: 'account_name', value: item));
}
}
if (actionResult != null) {
for (final item in actionResult) {
  queryParametersList.add(ApiQueryParameter(name: 'action_result', value: item.toJson()));
}
}
if (actionType != null) {
for (final item in actionType) {
  queryParametersList.add(ApiQueryParameter(name: 'action_type', value: item.toJson()));
}
}
if (actorContext != null) {
for (final item in actorContext) {
  queryParametersList.add(ApiQueryParameter(name: 'actor_context', value: item.toJson()));
}
}
if (actorEmail != null) {
for (final item in actorEmail) {
  queryParametersList.add(ApiQueryParameter(name: 'actor_email', value: item));
}
}
if (actorId != null) {
for (final item in actorId) {
  queryParametersList.add(ApiQueryParameter(name: 'actor_id', value: item));
}
}
if (actorIpAddress != null) {
for (final item in actorIpAddress) {
  queryParametersList.add(ApiQueryParameter(name: 'actor_ip_address', value: item));
}
}
if (actorTokenId != null) {
for (final item in actorTokenId) {
  queryParametersList.add(ApiQueryParameter(name: 'actor_token_id', value: item));
}
}
if (actorTokenName != null) {
for (final item in actorTokenName) {
  queryParametersList.add(ApiQueryParameter(name: 'actor_token_name', value: item));
}
}
if (actorType != null) {
for (final item in actorType) {
  queryParametersList.add(ApiQueryParameter(name: 'actor_type', value: item.toJson()));
}
}
if (auditLogId != null) {
for (final item in auditLogId) {
  queryParametersList.add(ApiQueryParameter(name: 'audit_log_id', value: item));
}
}
if (id != null) {
for (final item in id) {
  queryParametersList.add(ApiQueryParameter(name: 'id', value: item));
}
}
if (rawCfRayId != null) {
for (final item in rawCfRayId) {
  queryParametersList.add(ApiQueryParameter(name: 'raw_cf_ray_id', value: item));
}
}
if (rawMethod != null) {
for (final item in rawMethod) {
  queryParametersList.add(ApiQueryParameter(name: 'raw_method', value: item));
}
}
if (rawStatusCode != null) {
for (final item in rawStatusCode) {
  queryParametersList.add(ApiQueryParameter(name: 'raw_status_code', value: item.toString()));
}
}
if (rawUri != null) {
for (final item in rawUri) {
  queryParametersList.add(ApiQueryParameter(name: 'raw_uri', value: item));
}
}
if (resourceId != null) {
for (final item in resourceId) {
  queryParametersList.add(ApiQueryParameter(name: 'resource_id', value: item));
}
}
if (resourceProduct != null) {
for (final item in resourceProduct) {
  queryParametersList.add(ApiQueryParameter(name: 'resource_product', value: item));
}
}
if (resourceType != null) {
for (final item in resourceType) {
  queryParametersList.add(ApiQueryParameter(name: 'resource_type', value: item));
}
}
if (resourceScope != null) {
for (final item in resourceScope) {
  queryParametersList.add(ApiQueryParameter(name: 'resource_scope', value: item.toJson()));
}
}
if (zoneId != null) {
for (final item in zoneId) {
  queryParametersList.add(ApiQueryParameter(name: 'zone_id', value: item));
}
}
if (zoneName != null) {
for (final item in zoneName) {
  queryParametersList.add(ApiQueryParameter(name: 'zone_name', value: item));
}
}
if (accountNameNot != null) {
for (final item in accountNameNot) {
  queryParametersList.add(ApiQueryParameter(name: 'account_name.not', value: item));
}
}
if (actionResultNot != null) {
for (final item in actionResultNot) {
  queryParametersList.add(ApiQueryParameter(name: 'action_result.not', value: item.toJson()));
}
}
if (actionTypeNot != null) {
for (final item in actionTypeNot) {
  queryParametersList.add(ApiQueryParameter(name: 'action_type.not', value: item.toJson()));
}
}
if (actorContextNot != null) {
for (final item in actorContextNot) {
  queryParametersList.add(ApiQueryParameter(name: 'actor_context.not', value: item.toJson()));
}
}
if (actorEmailNot != null) {
for (final item in actorEmailNot) {
  queryParametersList.add(ApiQueryParameter(name: 'actor_email.not', value: item));
}
}
if (actorIdNot != null) {
for (final item in actorIdNot) {
  queryParametersList.add(ApiQueryParameter(name: 'actor_id.not', value: item));
}
}
if (actorIpAddressNot != null) {
for (final item in actorIpAddressNot) {
  queryParametersList.add(ApiQueryParameter(name: 'actor_ip_address.not', value: item));
}
}
if (actorTokenIdNot != null) {
for (final item in actorTokenIdNot) {
  queryParametersList.add(ApiQueryParameter(name: 'actor_token_id.not', value: item));
}
}
if (actorTokenNameNot != null) {
for (final item in actorTokenNameNot) {
  queryParametersList.add(ApiQueryParameter(name: 'actor_token_name.not', value: item));
}
}
if (actorTypeNot != null) {
for (final item in actorTypeNot) {
  queryParametersList.add(ApiQueryParameter(name: 'actor_type.not', value: item.toJson()));
}
}
if (auditLogIdNot != null) {
for (final item in auditLogIdNot) {
  queryParametersList.add(ApiQueryParameter(name: 'audit_log_id.not', value: item));
}
}
if (idNot != null) {
for (final item in idNot) {
  queryParametersList.add(ApiQueryParameter(name: 'id.not', value: item));
}
}
if (rawCfRayIdNot != null) {
for (final item in rawCfRayIdNot) {
  queryParametersList.add(ApiQueryParameter(name: 'raw_cf_ray_id.not', value: item));
}
}
if (rawMethodNot != null) {
for (final item in rawMethodNot) {
  queryParametersList.add(ApiQueryParameter(name: 'raw_method.not', value: item));
}
}
if (rawStatusCodeNot != null) {
for (final item in rawStatusCodeNot) {
  queryParametersList.add(ApiQueryParameter(name: 'raw_status_code.not', value: item.toString()));
}
}
if (rawUriNot != null) {
for (final item in rawUriNot) {
  queryParametersList.add(ApiQueryParameter(name: 'raw_uri.not', value: item));
}
}
if (resourceIdNot != null) {
for (final item in resourceIdNot) {
  queryParametersList.add(ApiQueryParameter(name: 'resource_id.not', value: item));
}
}
if (resourceProductNot != null) {
for (final item in resourceProductNot) {
  queryParametersList.add(ApiQueryParameter(name: 'resource_product.not', value: item));
}
}
if (resourceTypeNot != null) {
for (final item in resourceTypeNot) {
  queryParametersList.add(ApiQueryParameter(name: 'resource_type.not', value: item));
}
}
if (resourceScopeNot != null) {
for (final item in resourceScopeNot) {
  queryParametersList.add(ApiQueryParameter(name: 'resource_scope.not', value: item.toJson()));
}
}
if (zoneIdNot != null) {
for (final item in zoneIdNot) {
  queryParametersList.add(ApiQueryParameter(name: 'zone_id.not', value: item));
}
}
if (zoneNameNot != null) {
for (final item in zoneNameNot) {
  queryParametersList.add(ApiQueryParameter(name: 'zone_name.not', value: item));
}
}
queryParameters['since'] = since;
queryParameters['before'] = before;
if (direction != null) {
  queryParameters['direction'] = direction.toJson();
}
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (cursor != null) {
  queryParameters['cursor'] = cursor;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/logs/audit',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AaaAuditLogs2.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Get user audit logs
///
/// Gets a list of audit logs for a user account. Can be filtered by who made the change, on which zone, and the timeframe of the change.
///
/// `GET /user/audit_logs`
Future<ApiResult<AaaAuditLogsResponseCollection, Never>> auditLogsGetUserAuditLogs({String? id, bool? $export, String? actionType, String? actorIp, String? actorEmail, dynamic since, dynamic before, String? zoneName, AuditLogsGetUserAuditLogsDirection? direction, double? perPage, double? page, bool? hideUserLogs, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (id != null) {
  queryParameters['id'] = id;
}
if ($export != null) {
  queryParameters['export'] = $export.toString();
}
if (actionType != null) {
  queryParameters['action.type'] = actionType;
}
if (actorIp != null) {
  queryParameters['actor.ip'] = actorIp;
}
if (actorEmail != null) {
  queryParameters['actor.email'] = actorEmail;
}
if (since != null) {
  queryParameters['since'] = since.toString();
}
if (before != null) {
  queryParameters['before'] = before.toString();
}
if (zoneName != null) {
  queryParameters['zone.name'] = zoneName;
}
if (direction != null) {
  queryParameters['direction'] = direction.toJson();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (hideUserLogs != null) {
  queryParameters['hide_user_logs'] = hideUserLogs.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/user/audit_logs',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return OneOf2.parse(jsonDecode(response.body), fromA: (v) => AaaAuditLogsResponseCollectionVariant1.fromJson(v as Map<String, dynamic>), fromB: (v) => ResponseCommon.fromJson(v as Map<String, dynamic>),);
  },
);
 } 
 }
