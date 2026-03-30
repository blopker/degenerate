// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_components_schemas_id_response_result.dart';import '../models/access_custom_page.dart';import '../models/access_custom_page_without_html.dart';import '../models/access_identifier.dart';import '../models/access_uuid.dart';/// AccessCustomPagesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AccessCustomPagesApi with ApiExecutor {const AccessCustomPagesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List custom pages
///
/// `GET /accounts/{account_id}/access/custom_pages`
Future<ApiResult<List<AccessCustomPageWithoutHtml>?, Never>> accessCustomPagesListCustomPages({required AccessIdentifier accountId, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/custom_pages',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AccessCustomPageWithoutHtml.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create a custom page
///
/// `POST /accounts/{account_id}/access/custom_pages`
Future<ApiResult<AccessCustomPageWithoutHtml?, Never>> accessCustomPagesCreateACustomPage({required AccessIdentifier accountId, AccessCustomPage? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/custom_pages',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessCustomPageWithoutHtml.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get a custom page
///
/// Fetches a custom page and also returns its HTML.
///
/// `GET /accounts/{account_id}/access/custom_pages/{custom_page_id}`
Future<ApiResult<AccessCustomPage?, Never>> accessCustomPagesGetACustomPage({required AccessUuid customPageId, required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/custom_pages/${Uri.encodeComponent(customPageId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessCustomPage.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update a custom page
///
/// `PUT /accounts/{account_id}/access/custom_pages/{custom_page_id}`
Future<ApiResult<AccessCustomPageWithoutHtml?, Never>> accessCustomPagesUpdateACustomPage({required AccessUuid customPageId, required AccessIdentifier accountId, AccessCustomPage? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/custom_pages/${Uri.encodeComponent(customPageId.toString())}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessCustomPageWithoutHtml.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete a custom page
///
/// `DELETE /accounts/{account_id}/access/custom_pages/{custom_page_id}`
Future<ApiResult<AccessComponentsSchemasIdResponseResult?, Never>> accessCustomPagesDeleteACustomPage({required AccessUuid customPageId, required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/custom_pages/${Uri.encodeComponent(customPageId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessComponentsSchemasIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
