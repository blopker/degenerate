// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/custom_pages_custom_page.dart';import '../models/custom_pages_error_page_type.dart';import '../models/custom_pages_for_a_zone_update_a_custom_page_request.dart';import '../models/custom_pages_identifier.dart';import '../models/response_common17.dart';/// CustomPagesForAZoneApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class CustomPagesForAZoneApi with ApiExecutor {const CustomPagesForAZoneApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List custom pages
///
/// Fetches all the custom pages at the zone level.
///
/// `GET /zones/{zone_identifier}/custom_pages`
Future<ApiResult<ResponseCommon17, Never>> customPagesForAZoneListCustomPages({required CustomPagesIdentifier zoneIdentifier, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneIdentifier.toString())}/custom_pages',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon17.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a custom page
///
/// Fetches the details of a custom page.
///
/// `GET /zones/{zone_identifier}/custom_pages/{identifier}`
Future<ApiResult<CustomPagesCustomPage, Never>> customPagesForAZoneGetACustomPage({required CustomPagesErrorPageType identifier, required CustomPagesIdentifier zoneIdentifier, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneIdentifier.toString())}/custom_pages/${Uri.encodeComponent(identifier.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CustomPagesCustomPage.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a custom page
///
/// Updates the configuration of an existing custom page.
///
/// `PUT /zones/{zone_identifier}/custom_pages/{identifier}`
Future<ApiResult<ResponseCommon17, Never>> customPagesForAZoneUpdateACustomPage({required CustomPagesErrorPageType identifier, required CustomPagesIdentifier zoneIdentifier, required CustomPagesForAZoneUpdateACustomPageRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneIdentifier.toString())}/custom_pages/${Uri.encodeComponent(identifier.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon17.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
