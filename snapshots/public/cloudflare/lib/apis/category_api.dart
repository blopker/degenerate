// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/alexandria_category.dart';import '../models/delete_category_delete_response.dart';import '../models/delete_category_delete_response400.dart';import '../models/get_categories_response4xx.dart';import '../models/get_category_by_id_response4xx.dart';import '../models/get_category_list_complete_response.dart';import '../models/get_category_list_complete_response400.dart';import '../models/get_category_list_response.dart';import '../models/get_category_list_response400.dart';import '../models/get_category_read_response.dart';import '../models/get_category_read_response400.dart';import '../models/patch_category_update_request.dart';import '../models/patch_category_update_response.dart';import '../models/patch_category_update_response400.dart';import '../models/post_category_create_request.dart';import '../models/post_category_create_response.dart';import '../models/post_category_create_response400.dart';import '../models/post_category_update_request.dart';import '../models/post_category_update_response.dart';import '../models/post_category_update_response400.dart';/// CategoryApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class CategoryApi with ApiExecutor {const CategoryApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Lists categories across multiple datasets
///
/// `GET /accounts/{account_id}/cloudforce-one/events/categories`
Future<ApiResult<List<GetCategoryListResponse>, GetCategoryListResponse400>> getCategoryList({required String accountId, List<String>? datasetIds, RequestOptions? options, }) async {final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return (json as List<dynamic>).map((e) => GetCategoryListResponse.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return GetCategoryListResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Reads a category
///
/// `GET /accounts/{account_id}/cloudforce-one/events/categories/{category_id}`
Future<ApiResult<GetCategoryReadResponse, GetCategoryReadResponse400>> getCategoryRead({required String accountId, required String categoryId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/categories/${Uri.encodeComponent(categoryId)}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return GetCategoryReadResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return GetCategoryReadResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Updates a category
///
/// `POST /accounts/{account_id}/cloudforce-one/events/categories/{category_id}`
Future<ApiResult<PostCategoryUpdateResponse, PostCategoryUpdateResponse400>> postCategoryUpdate({required String accountId, required String categoryId, PostCategoryUpdateRequest? body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/categories/${Uri.encodeComponent(categoryId)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return PostCategoryUpdateResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return PostCategoryUpdateResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Updates a category
///
/// `PATCH /accounts/{account_id}/cloudforce-one/events/categories/{category_id}`
Future<ApiResult<PatchCategoryUpdateResponse, PatchCategoryUpdateResponse400>> patchCategoryUpdate({required String accountId, required String categoryId, PatchCategoryUpdateRequest? body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/categories/${Uri.encodeComponent(categoryId)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return PatchCategoryUpdateResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return PatchCategoryUpdateResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Deletes a category
///
/// `DELETE /accounts/{account_id}/cloudforce-one/events/categories/{category_id}`
Future<ApiResult<DeleteCategoryDeleteResponse, DeleteCategoryDeleteResponse400>> deleteCategoryDelete({required String accountId, required String categoryId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/categories/${Uri.encodeComponent(categoryId)}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return DeleteCategoryDeleteResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return DeleteCategoryDeleteResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Lists categories
///
/// `GET /accounts/{account_id}/cloudforce-one/events/categories/catalog`
Future<ApiResult<List<GetCategoryListCompleteResponse>, GetCategoryListCompleteResponse400>> getCategoryListComplete({required String accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/categories/catalog',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return (json as List<dynamic>).map((e) => GetCategoryListCompleteResponse.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return GetCategoryListCompleteResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Creates a new category
///
/// `POST /accounts/{account_id}/cloudforce-one/events/categories/create`
Future<ApiResult<PostCategoryCreateResponse, PostCategoryCreateResponse400>> postCategoryCreate({required String accountId, PostCategoryCreateRequest? body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/categories/create',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return PostCategoryCreateResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return PostCategoryCreateResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Get all application categories
///
/// Get all application categories.
///
/// `GET /accounts/{accountId}/resource-library/categories`
Future<ApiResult<List<AlexandriaCategory>?, GetCategoriesResponse4xx>> getCategories({required String accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/resource-library/categories',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>?)?.map((e) => AlexandriaCategory.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return GetCategoriesResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Show application category by ID
///
/// Get application category by ID.
///
/// `GET /accounts/{accountId}/resource-library/categories/{id}`
Future<ApiResult<AlexandriaCategory?, GetCategoryByIdResponse4xx>> getCategoryById({required String accountId, required String id, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/resource-library/categories/${Uri.encodeComponent(id)}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return json['result'] != null ? AlexandriaCategory.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return GetCategoryByIdResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
}
