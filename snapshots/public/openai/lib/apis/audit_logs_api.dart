// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/audit_log_event_type.dart';import '../models/list_audit_logs_effective_at.dart';import '../models/list_audit_logs_response.dart';/// AuditLogsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AuditLogsApi with ApiExecutor {const AuditLogsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List user actions and configuration changes within this organization.
///
/// `GET /organization/audit_logs`
Future<ApiResult<ListAuditLogsResponse, Never>> listAuditLogs({ListAuditLogsEffectiveAt? effectiveAt, List<String>? projectIds, List<AuditLogEventType>? eventTypes, List<String>? actorIds, List<String>? actorEmails, List<String>? resourceIds, int? limit, String? after, String? before, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (effectiveAt != null) {
if (effectiveAt.gt case final gt$?) { queryParametersList.add(ApiQueryParameter(name: 'gt', value: gt$.toString(), allowReserved: false)); }
if (effectiveAt.gte case final gte$?) { queryParametersList.add(ApiQueryParameter(name: 'gte', value: gte$.toString(), allowReserved: false)); }
if (effectiveAt.lt case final lt$?) { queryParametersList.add(ApiQueryParameter(name: 'lt', value: lt$.toString(), allowReserved: false)); }
if (effectiveAt.lte case final lte$?) { queryParametersList.add(ApiQueryParameter(name: 'lte', value: lte$.toString(), allowReserved: false)); }
}
if (projectIds != null) {
for (final item in projectIds) {
  queryParametersList.add(ApiQueryParameter(name: 'project_ids[]', value: item, allowReserved: false));
}
}
if (eventTypes != null) {
for (final item in eventTypes) {
  queryParametersList.add(ApiQueryParameter(name: 'event_types[]', value: item.toJson(), allowReserved: false));
}
}
if (actorIds != null) {
for (final item in actorIds) {
  queryParametersList.add(ApiQueryParameter(name: 'actor_ids[]', value: item, allowReserved: false));
}
}
if (actorEmails != null) {
for (final item in actorEmails) {
  queryParametersList.add(ApiQueryParameter(name: 'actor_emails[]', value: item, allowReserved: false));
}
}
if (resourceIds != null) {
for (final item in resourceIds) {
  queryParametersList.add(ApiQueryParameter(name: 'resource_ids[]', value: item, allowReserved: false));
}
}
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (after != null) {
  queryParameters['after'] = after;
}
if (before != null) {
  queryParameters['before'] = before;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/organization/audit_logs',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListAuditLogsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
