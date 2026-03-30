// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/custom_pages_custom_page.dart';import '../models/custom_pages_error_page_type.dart';import '../models/custom_pages_for_an_account_update_a_custom_page_request.dart';import '../models/custom_pages_identifier.dart';/// CustomPagesForAnAccountApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class CustomPagesForAnAccountApi with ApiExecutor {const CustomPagesForAnAccountApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List custom pages
///
/// Fetches all the custom pages at the account level.
///
/// `GET /accounts/{account_identifier}/custom_pages`
Future<ApiResult<List<CustomPagesCustomPage>?, Never>> customPagesForAnAccountListCustomPages({required CustomPagesIdentifier accountIdentifier, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountIdentifier.toString())}/custom_pages',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => CustomPagesCustomPage.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Get a custom page
///
/// Fetches the details of a custom page.
///
/// `GET /accounts/{account_identifier}/custom_pages/{identifier}`
Future<ApiResult<CustomPagesCustomPage?, Never>> customPagesForAnAccountGetACustomPage({required CustomPagesErrorPageType identifier, required CustomPagesIdentifier accountIdentifier, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountIdentifier.toString())}/custom_pages/${Uri.encodeComponent(identifier.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? CustomPagesCustomPage.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update a custom page
///
/// Updates the configuration of an existing custom page.
///
/// `PUT /accounts/{account_identifier}/custom_pages/{identifier}`
Future<ApiResult<CustomPagesCustomPage?, Never>> customPagesForAnAccountUpdateACustomPage({required CustomPagesErrorPageType identifier, required CustomPagesIdentifier accountIdentifier, required CustomPagesForAnAccountUpdateACustomPageRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountIdentifier.toString())}/custom_pages/${Uri.encodeComponent(identifier.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? CustomPagesCustomPage.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
