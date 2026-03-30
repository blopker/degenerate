// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_identifier.dart';import '../models/access_name_response.dart';import '../models/access_tag_without_app_count.dart';import '../models/access_tags_components_schemas_name.dart';import '../models/access_tags_components_schemas_response_collection.dart';import '../models/access_tags_components_schemas_single_response.dart';import '../models/access_tags_create_tag_request.dart';/// AccessTagsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AccessTagsApi with ApiExecutor {const AccessTagsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List tags
///
/// `GET /accounts/{account_id}/access/tags`
Future<ApiResult<AccessTagsComponentsSchemasResponseCollection, Never>> accessTagsListTags({required AccessIdentifier accountId, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/tags',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessTagsComponentsSchemasResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a tag
///
/// `POST /accounts/{account_id}/access/tags`
Future<ApiResult<AccessTagsComponentsSchemasSingleResponse, Never>> accessTagsCreateTag({required AccessIdentifier accountId, AccessTagsCreateTagRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/tags',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessTagsComponentsSchemasSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a tag
///
/// `GET /accounts/{account_id}/access/tags/{tag_name}`
Future<ApiResult<AccessTagsComponentsSchemasSingleResponse, Never>> accessTagsGetATag({required AccessIdentifier accountId, required AccessTagsComponentsSchemasName tagName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/tags/${Uri.encodeComponent(tagName.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessTagsComponentsSchemasSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a tag
///
/// `PUT /accounts/{account_id}/access/tags/{tag_name}`
Future<ApiResult<AccessTagsComponentsSchemasSingleResponse, Never>> accessTagsUpdateATag({required AccessIdentifier accountId, required AccessTagsComponentsSchemasName tagName, AccessTagWithoutAppCount? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/tags/${Uri.encodeComponent(tagName.toString())}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessTagsComponentsSchemasSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a tag
///
/// `DELETE /accounts/{account_id}/access/tags/{tag_name}`
Future<ApiResult<AccessNameResponse, Never>> accessTagsDeleteATag({required AccessIdentifier accountId, required AccessTagsComponentsSchemasName tagName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/tags/${Uri.encodeComponent(tagName.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessNameResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
