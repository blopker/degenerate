// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/magic_create_route_request.dart';import '../models/magic_identifier.dart';import '../models/magic_multiple_route_delete_response_result.dart';import '../models/magic_multiple_route_modified_response_result.dart';import '../models/magic_route.dart';import '../models/magic_route_add_single_request.dart';import '../models/magic_route_delete_many_request.dart';import '../models/magic_route_deleted_response_result.dart';import '../models/magic_route_modified_response_result.dart';import '../models/magic_route_single_response_result.dart';import '../models/magic_route_update_many_request.dart';import '../models/magic_routes_collection_response_result.dart';/// MagicStaticRoutesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class MagicStaticRoutesApi with ApiExecutor {const MagicStaticRoutesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Routes
///
/// List all Magic static routes.
///
/// `GET /accounts/{account_id}/magic/routes`
Future<ApiResult<MagicRoutesCollectionResponseResult?, Never>> magicStaticRoutesListRoutes({required MagicIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/routes',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicRoutesCollectionResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Create a Route
///
/// Creates a new Magic static route. Use `?validate_only=true` as an optional query parameter to run validation only without persisting changes.
///
/// `POST /accounts/{account_id}/magic/routes`
Future<ApiResult<MagicRoute?, Never>> magicStaticRoutesCreateRoutes({required MagicIdentifier accountId, required MagicCreateRouteRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/routes',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicRoute.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update Many Routes
///
/// Update multiple Magic static routes. Use `?validate_only=true` as an optional query parameter to run validation only without persisting changes. Only fields for a route that need to be changed need be provided.
///
/// `PUT /accounts/{account_id}/magic/routes`
Future<ApiResult<MagicMultipleRouteModifiedResponseResult?, Never>> magicStaticRoutesUpdateManyRoutes({required MagicIdentifier accountId, required MagicRouteUpdateManyRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/routes',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicMultipleRouteModifiedResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete Many Routes
///
/// Delete multiple Magic static routes.
///
/// `DELETE /accounts/{account_id}/magic/routes`
Future<ApiResult<MagicMultipleRouteDeleteResponseResult?, Never>> magicStaticRoutesDeleteManyRoutes({required MagicIdentifier accountId, required MagicRouteDeleteManyRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/routes',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicMultipleRouteDeleteResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Route Details
///
/// Get a specific Magic static route.
///
/// `GET /accounts/{account_id}/magic/routes/{route_id}`
Future<ApiResult<MagicRouteSingleResponseResult?, Never>> magicStaticRoutesRouteDetails({required MagicIdentifier routeId, required MagicIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/routes/${Uri.encodeComponent(routeId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicRouteSingleResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update Route
///
/// Update a specific Magic static route. Use `?validate_only=true` as an optional query parameter to run validation only without persisting changes.
///
/// `PUT /accounts/{account_id}/magic/routes/{route_id}`
Future<ApiResult<MagicRouteModifiedResponseResult?, Never>> magicStaticRoutesUpdateRoute({required MagicIdentifier routeId, required MagicIdentifier accountId, required MagicRouteAddSingleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/routes/${Uri.encodeComponent(routeId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicRouteModifiedResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete Route
///
/// Disable and remove a specific Magic static route.
///
/// `DELETE /accounts/{account_id}/magic/routes/{route_id}`
Future<ApiResult<MagicRouteDeletedResponseResult?, Never>> magicStaticRoutesDeleteRoute({required MagicIdentifier routeId, required MagicIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/routes/${Uri.encodeComponent(routeId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicRouteDeletedResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
