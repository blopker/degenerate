// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/workers_identifier.dart';import '../models/workers_namespace.dart';import '../models/workers_object.dart';import '../models/workers_schemas_id.dart';/// DurableObjectsNamespaceApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DurableObjectsNamespaceApi with ApiExecutor {const DurableObjectsNamespaceApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Namespaces
///
/// Returns the Durable Object namespaces owned by an account.
///
/// `GET /accounts/{account_id}/workers/durable_objects/namespaces`
Future<ApiResult<List<WorkersNamespace>?, Never>> durableObjectsNamespaceListNamespaces({required WorkersIdentifier accountId, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/durable_objects/namespaces',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => WorkersNamespace.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// List Objects
///
/// Returns the Durable Objects in a given namespace.
///
/// `GET /accounts/{account_id}/workers/durable_objects/namespaces/{id}/objects`
Future<ApiResult<List<WorkersObject>?, Never>> durableObjectsNamespaceListObjects({required WorkersIdentifier accountId, required WorkersSchemasId id, double? limit, String? cursor, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (cursor != null) {
  queryParameters['cursor'] = cursor;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/workers/durable_objects/namespaces/${Uri.encodeComponent(id.toString())}/objects',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => WorkersObject.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
 }
