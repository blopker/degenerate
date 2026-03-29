// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_direction.dart';import '../models/access_identifier.dart';import '../models/access_limit.dart';import '../models/access_request_method2.dart';import '../models/access_requests_cf_resource_id.dart';import '../models/access_requests_idp_resource_id.dart';import '../models/access_requests_status2.dart';import '../models/access_resource_group_name.dart';import '../models/access_resource_type2.dart';import '../models/access_resource_user_email.dart';import '../models/access_since.dart';import '../models/access_until.dart';import '../models/response_common3.dart';/// AccessScimUpdateLogsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AccessScimUpdateLogsApi with ApiExecutor {const AccessScimUpdateLogsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Access SCIM update logs
///
/// Lists Access SCIM update logs that maintain a record of updates made to User and Group resources synced to Cloudflare via the System for Cross-domain Identity Management (SCIM).
///
/// `GET /accounts/{account_id}/access/logs/scim/updates`
Future<ApiResult<ResponseCommon3, Never>> accessScimUpdateLogsListAccessScimUpdateLogs({required AccessIdentifier accountId, AccessLimit? limit, AccessDirection? direction, AccessSince? since, AccessUntil? until, required List<String> idpId, List<AccessRequestsStatus2>? status, List<AccessResourceType2>? resourceType, List<AccessRequestMethod2>? requestMethod, AccessResourceUserEmail? resourceUserEmail, AccessResourceGroupName? resourceGroupName, AccessRequestsCfResourceId? cfResourceId, AccessRequestsIdpResourceId? idpResourceId, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) queryParameters['limit'] = limit.toString();
if (direction != null) queryParameters['direction'] = direction.toJson();
if (since != null) queryParameters['since'] = since.toString();
if (until != null) queryParameters['until'] = until.toString();
for (final item in idpId) {
  queryParametersList.add(ApiQueryParameter(name: 'idp_id', value: item, allowReserved: false));
}
if (status != null) {
for (final item in status) {
  queryParametersList.add(ApiQueryParameter(name: 'status', value: item.toJson(), allowReserved: false));
}
}
if (resourceType != null) {
for (final item in resourceType) {
  queryParametersList.add(ApiQueryParameter(name: 'resource_type', value: item.toJson(), allowReserved: false));
}
}
if (requestMethod != null) {
for (final item in requestMethod) {
  queryParametersList.add(ApiQueryParameter(name: 'request_method', value: item.toJson(), allowReserved: false));
}
}
if (resourceUserEmail != null) queryParameters['resource_user_email'] = resourceUserEmail.toString();
if (resourceGroupName != null) queryParameters['resource_group_name'] = resourceGroupName.toString();
if (cfResourceId != null) queryParameters['cf_resource_id'] = cfResourceId.toString();
if (idpResourceId != null) queryParameters['idp_resource_id'] = idpResourceId.toString();
if (page != null) queryParameters['page'] = page.toString();
if (perPage != null) queryParameters['per_page'] = perPage.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/logs/scim/updates',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon3.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
