// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/alexandria_category.dart';import '../models/delete_category_delete_response.dart';import '../models/delete_category_delete_response400.dart';import '../models/get_category_list_complete_response.dart';import '../models/get_category_list_complete_response400.dart';import '../models/get_category_list_response.dart';import '../models/get_category_list_response400.dart';import '../models/get_category_read_response.dart';import '../models/get_category_read_response400.dart';import '../models/patch_category_update_request.dart';import '../models/patch_category_update_response.dart';import '../models/patch_category_update_response400.dart';import '../models/post_category_create_request.dart';import '../models/post_category_create_response.dart';import '../models/post_category_create_response400.dart';import '../models/post_category_update_request.dart';import '../models/post_category_update_response.dart';import '../models/post_category_update_response400.dart';/// CategoryApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class CategoryApi with ApiExecutor {const CategoryApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Lists categories across multiple datasets
///
/// `GET /accounts/{account_id}/cloudforce-one/events/categories`
Future<ApiResult<List<GetCategoryListResponse>, GetCategoryListResponse400>> getCategoryList({required String accountId, List<String>? datasetIds, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (datasetIds != null) {
for (final item in datasetIds) {
  queryParametersList.add(ApiQueryParameter(name: 'datasetIds', value: item));
}
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/categories',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => GetCategoryListResponse.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return GetCategoryListResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Reads a category
///
/// `GET /accounts/{account_id}/cloudforce-one/events/categories/{category_id}`
Future<ApiResult<GetCategoryReadResponse, GetCategoryReadResponse400>> getCategoryRead({required String accountId, required String categoryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/categories/${Uri.encodeComponent(categoryId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return GetCategoryReadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return GetCategoryReadResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Updates a category
///
/// `POST /accounts/{account_id}/cloudforce-one/events/categories/{category_id}`
Future<ApiResult<PostCategoryUpdateResponse, PostCategoryUpdateResponse400>> postCategoryUpdate({required String accountId, required String categoryId, PostCategoryUpdateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/categories/${Uri.encodeComponent(categoryId)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PostCategoryUpdateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return PostCategoryUpdateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Updates a category
///
/// `PATCH /accounts/{account_id}/cloudforce-one/events/categories/{category_id}`
Future<ApiResult<PatchCategoryUpdateResponse, PatchCategoryUpdateResponse400>> patchCategoryUpdate({required String accountId, required String categoryId, PatchCategoryUpdateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/categories/${Uri.encodeComponent(categoryId)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PatchCategoryUpdateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return PatchCategoryUpdateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Deletes a category
///
/// `DELETE /accounts/{account_id}/cloudforce-one/events/categories/{category_id}`
Future<ApiResult<DeleteCategoryDeleteResponse, DeleteCategoryDeleteResponse400>> deleteCategoryDelete({required String accountId, required String categoryId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/categories/${Uri.encodeComponent(categoryId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DeleteCategoryDeleteResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return DeleteCategoryDeleteResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Lists categories
///
/// `GET /accounts/{account_id}/cloudforce-one/events/categories/catalog`
Future<ApiResult<List<GetCategoryListCompleteResponse>, GetCategoryListCompleteResponse400>> getCategoryListComplete({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/categories/catalog',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => GetCategoryListCompleteResponse.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return GetCategoryListCompleteResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Creates a new category
///
/// `POST /accounts/{account_id}/cloudforce-one/events/categories/create`
Future<ApiResult<PostCategoryCreateResponse, PostCategoryCreateResponse400>> postCategoryCreate({required String accountId, PostCategoryCreateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/categories/create',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PostCategoryCreateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return PostCategoryCreateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get all application categories
///
/// Get all application categories.
///
/// `GET /accounts/{accountId}/resource-library/categories`
Future<ApiResult<List<AlexandriaCategory>?, Never>> getCategories({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/resource-library/categories',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AlexandriaCategory.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Show application category by ID
///
/// Get application category by ID.
///
/// `GET /accounts/{accountId}/resource-library/categories/{id}`
Future<ApiResult<AlexandriaCategory?, Never>> getCategoryById({required String accountId, required String id, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/resource-library/categories/${Uri.encodeComponent(id)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AlexandriaCategory.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
