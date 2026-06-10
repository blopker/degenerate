// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/response_common86_result.dart';import '../models/zones0_hold_patch_request.dart';import '../models/zones_schemas_identifier.dart';/// ZoneHoldsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZoneHoldsApi with ApiExecutor {const ZoneHoldsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Zone Hold
///
/// Retrieve whether the zone is subject to a zone hold, and metadata about the hold.
///
/// `GET /zones/{zone_id}/hold`
Future<ApiResult<ResponseCommon86Result, Never>> zones0HoldGet({required ZonesSchemasIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/hold',
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
/// Create Zone Hold
///
/// Enforce a zone hold on the zone, blocking the creation and activation of zones with this zone's hostname.
///
/// `POST /zones/{zone_id}/hold`
Future<ApiResult<ResponseCommon86Result, Never>> zones0HoldPost({required ZonesSchemasIdentifier zoneId, bool? includeSubdomains, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (includeSubdomains != null) {
  queryParameters['include_subdomains'] = includeSubdomains.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/hold',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
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
/// Update Zone Hold
///
/// Update the `hold_after` and/or `include_subdomains` values on an existing zone hold.
/// The hold is enabled if the `hold_after` date-time value is in the past.
///
/// `PATCH /zones/{zone_id}/hold`
Future<ApiResult<ResponseCommon86Result, Never>> zones0HoldPatch({required ZonesSchemasIdentifier zoneId, required Zones0HoldPatchRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/hold',
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
/// Remove Zone Hold
///
/// Stop enforcement of a zone hold on the zone, permanently or temporarily, allowing the
/// creation and activation of zones with this zone's hostname.
///
/// `DELETE /zones/{zone_id}/hold`
Future<ApiResult<ResponseCommon86Result, Never>> zones0HoldDelete({required ZonesSchemasIdentifier zoneId, String? holdAfter, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (holdAfter != null) {
  queryParameters['hold_after'] = holdAfter;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/hold',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
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
