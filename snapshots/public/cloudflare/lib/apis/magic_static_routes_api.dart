// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/magic_create_route_request.dart';import '../models/magic_identifier.dart';import '../models/magic_route_add_single_request.dart';import '../models/magic_route_delete_many_request.dart';import '../models/magic_route_update_many_request.dart';import '../models/response_common48_result.dart';/// MagicStaticRoutesApi operations.
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
Future<ApiResult<ResponseCommon48Result, Never>> magicStaticRoutesListRoutes({required MagicIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Create a Route
///
/// Creates a new Magic static route. Use `?validate_only=true` as an optional query parameter to run validation only without persisting changes.
///
/// `POST /accounts/{account_id}/magic/routes`
Future<ApiResult<ResponseCommon48Result, Never>> magicStaticRoutesCreateRoutes({required MagicIdentifier accountId, required MagicCreateRouteRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Update Many Routes
///
/// Update multiple Magic static routes. Use `?validate_only=true` as an optional query parameter to run validation only without persisting changes. Only fields for a route that need to be changed need be provided.
///
/// `PUT /accounts/{account_id}/magic/routes`
Future<ApiResult<ResponseCommon48Result, Never>> magicStaticRoutesUpdateManyRoutes({required MagicIdentifier accountId, required MagicRouteUpdateManyRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Delete Many Routes
///
/// Delete multiple Magic static routes.
///
/// `DELETE /accounts/{account_id}/magic/routes`
Future<ApiResult<ResponseCommon48Result, Never>> magicStaticRoutesDeleteManyRoutes({required MagicIdentifier accountId, required MagicRouteDeleteManyRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Route Details
///
/// Get a specific Magic static route.
///
/// `GET /accounts/{account_id}/magic/routes/{route_id}`
Future<ApiResult<ResponseCommon48Result, Never>> magicStaticRoutesRouteDetails({required MagicIdentifier routeId, required MagicIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Update Route
///
/// Update a specific Magic static route. Use `?validate_only=true` as an optional query parameter to run validation only without persisting changes.
///
/// `PUT /accounts/{account_id}/magic/routes/{route_id}`
Future<ApiResult<ResponseCommon48Result, Never>> magicStaticRoutesUpdateRoute({required MagicIdentifier routeId, required MagicIdentifier accountId, required MagicRouteAddSingleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// Delete Route
///
/// Disable and remove a specific Magic static route.
///
/// `DELETE /accounts/{account_id}/magic/routes/{route_id}`
Future<ApiResult<ResponseCommon48Result, Never>> magicStaticRoutesDeleteRoute({required MagicIdentifier routeId, required MagicIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
 }
