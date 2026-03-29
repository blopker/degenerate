// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/infra_account_tag.dart';import '../models/infra_sorting_direction.dart';import '../models/infra_target_id.dart';import '../models/infra_targets_delete_batch_post_request.dart';import '../models/infra_targets_list_order.dart';import '../models/infra_targets_post_request.dart';import '../models/infra_targets_put_batch_request.dart';import '../models/infra_targets_put_request.dart';import '../models/response_common37.dart';/// InfrastructureAccessTargetsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class InfrastructureAccessTargetsApi with ApiExecutor {const InfrastructureAccessTargetsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List all targets
///
/// Lists and sorts an account’s targets. Filters are optional and are ANDed
/// together.
///
/// `GET /accounts/{account_id}/infrastructure/targets`
Future<ApiResult<ResponseCommon37, Never>> infraTargetsList({required InfraAccountTag accountId, String? hostname, String? hostnameContains, String? virtualNetworkId, String? ipV4, String? ipV6, DateTime? createdBefore, DateTime? createdAfter, DateTime? modifiedBefore, DateTime? modifiedAfter, List<String>? ips, List<String>? targetIds, String? ipLike, String? ipv4Start, String? ipv4End, String? ipv6Start, String? ipv6End, int? page, int? perPage, InfraTargetsListOrder? order, InfraSortingDirection? direction, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (hostname != null) queryParameters['hostname'] = hostname;
if (hostnameContains != null) queryParameters['hostname_contains'] = hostnameContains;
if (virtualNetworkId != null) queryParameters['virtual_network_id'] = virtualNetworkId;
if (ipV4 != null) queryParameters['ip_v4'] = ipV4;
if (ipV6 != null) queryParameters['ip_v6'] = ipV6;
if (createdBefore != null) queryParameters['created_before'] = createdBefore.toString();
if (createdAfter != null) queryParameters['created_after'] = createdAfter.toString();
if (modifiedBefore != null) queryParameters['modified_before'] = modifiedBefore.toString();
if (modifiedAfter != null) queryParameters['modified_after'] = modifiedAfter.toString();
if (ips != null) {
for (final item in ips) {
  queryParametersList.add(ApiQueryParameter(name: 'ips', value: item, allowReserved: false));
}
}
if (targetIds != null) {
for (final item in targetIds) {
  queryParametersList.add(ApiQueryParameter(name: 'target_ids', value: item, allowReserved: false));
}
}
if (ipLike != null) queryParameters['ip_like'] = ipLike;
if (ipv4Start != null) queryParameters['ipv4_start'] = ipv4Start;
if (ipv4End != null) queryParameters['ipv4_end'] = ipv4End;
if (ipv6Start != null) queryParameters['ipv6_start'] = ipv6Start;
if (ipv6End != null) queryParameters['ipv6_end'] = ipv6End;
if (page != null) queryParameters['page'] = page.toString();
if (perPage != null) queryParameters['per_page'] = perPage.toString();
if (order != null) queryParameters['order'] = order.toJson();
if (direction != null) queryParameters['direction'] = direction.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/infrastructure/targets',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon37.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create new target
///
/// `POST /accounts/{account_id}/infrastructure/targets`
Future<ApiResult<ResponseCommon37, Never>> infraTargetsPost({required InfraAccountTag accountId, required InfraTargetsPostRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/infrastructure/targets',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon37.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get target
///
/// `GET /accounts/{account_id}/infrastructure/targets/{target_id}`
Future<ApiResult<ResponseCommon37, Never>> infraTargetsGet({required InfraAccountTag accountId, required InfraTargetId targetId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/infrastructure/targets/${Uri.encodeComponent(targetId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon37.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update target
///
/// `PUT /accounts/{account_id}/infrastructure/targets/{target_id}`
Future<ApiResult<ResponseCommon37, Never>> infraTargetsPut({required InfraAccountTag accountId, required InfraTargetId targetId, required InfraTargetsPutRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/infrastructure/targets/${Uri.encodeComponent(targetId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon37.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete target
///
/// `DELETE /accounts/{account_id}/infrastructure/targets/{target_id}`
Future<ApiResult<void, Never>> infraTargetsDelete({required InfraAccountTag accountId, required InfraTargetId targetId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/infrastructure/targets/${Uri.encodeComponent(targetId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Create new targets
///
/// Adds one or more targets.
///
/// `PUT /accounts/{account_id}/infrastructure/targets/batch`
Future<ApiResult<ResponseCommon37, Never>> infraTargetsPutBatch({required InfraAccountTag accountId, required List<InfraTargetsPutBatchRequest> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/infrastructure/targets/batch',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon37.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete targets
///
/// Removes one or more targets.
///
/// `POST /accounts/{account_id}/infrastructure/targets/batch_delete`
Future<ApiResult<void, Never>> infraTargetsDeleteBatchPost({required InfraAccountTag accountId, required InfraTargetsDeleteBatchPostRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/infrastructure/targets/batch_delete',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
 }
