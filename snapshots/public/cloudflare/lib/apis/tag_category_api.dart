// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/delete_tag_category_delete_response.dart';import '../models/delete_tag_category_delete_response400.dart';import '../models/delete_tag_category_delete_response404.dart';import '../models/get_tag_category_list_response.dart';import '../models/get_tag_category_list_response400.dart';import '../models/patch_tag_category_update_request.dart';import '../models/patch_tag_category_update_response.dart';import '../models/patch_tag_category_update_response400.dart';import '../models/patch_tag_category_update_response404.dart';import '../models/patch_tag_category_update_response409.dart';import '../models/post_tag_category_create_request.dart';import '../models/post_tag_category_create_response.dart';import '../models/post_tag_category_create_response400.dart';import '../models/post_tag_category_create_response409.dart';/// TagCategoryApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class TagCategoryApi with ApiExecutor {const TagCategoryApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Lists all tag categories (SoT)
///
/// Returns all Source-of-Truth tag categories for an account.
///
/// `GET /accounts/{account_id}/cloudforce-one/events/tags/categories`
Future<ApiResult<GetTagCategoryListResponse, GetTagCategoryListResponse400>> getTagCategoryList({required String accountId, String? search, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (search != null) {
  queryParameters['search'] = search;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/tags/categories',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return GetTagCategoryListResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return GetTagCategoryListResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Updates a tag category (SoT)
///
/// Updates a Source-of-Truth tag category by UUID.
///
/// `PATCH /accounts/{account_id}/cloudforce-one/events/tags/categories/{category_uuid}`
Future<ApiResult<PatchTagCategoryUpdateResponse, OneOf3<PatchTagCategoryUpdateResponse400, PatchTagCategoryUpdateResponse404, PatchTagCategoryUpdateResponse409>>> patchTagCategoryUpdate({required String accountId, required String categoryUuid, PatchTagCategoryUpdateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/tags/categories/${Uri.encodeComponent(categoryUuid)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return PatchTagCategoryUpdateResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf3<PatchTagCategoryUpdateResponse400, PatchTagCategoryUpdateResponse404, PatchTagCategoryUpdateResponse409>.a(PatchTagCategoryUpdateResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf3<PatchTagCategoryUpdateResponse400, PatchTagCategoryUpdateResponse404, PatchTagCategoryUpdateResponse409>.b(PatchTagCategoryUpdateResponse404.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return OneOf3<PatchTagCategoryUpdateResponse400, PatchTagCategoryUpdateResponse404, PatchTagCategoryUpdateResponse409>.c(PatchTagCategoryUpdateResponse409.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Deletes a tag category (SoT)
///
/// Deletes a Source-of-Truth tag category by UUID.
///
/// `DELETE /accounts/{account_id}/cloudforce-one/events/tags/categories/{category_uuid}`
Future<ApiResult<DeleteTagCategoryDeleteResponse, OneOf2<DeleteTagCategoryDeleteResponse400, DeleteTagCategoryDeleteResponse404>>> deleteTagCategoryDelete({required String accountId, required String categoryUuid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/tags/categories/${Uri.encodeComponent(categoryUuid)}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return DeleteTagCategoryDeleteResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<DeleteTagCategoryDeleteResponse400, DeleteTagCategoryDeleteResponse404>.a(DeleteTagCategoryDeleteResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf2<DeleteTagCategoryDeleteResponse400, DeleteTagCategoryDeleteResponse404>.b(DeleteTagCategoryDeleteResponse404.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Creates a new tag category (SoT)
///
/// Creates a new Source-of-Truth tag category for an account.
///
/// `POST /accounts/{account_id}/cloudforce-one/events/tags/categories/create`
Future<ApiResult<PostTagCategoryCreateResponse, OneOf2<PostTagCategoryCreateResponse400, PostTagCategoryCreateResponse409>>> postTagCategoryCreate({required String accountId, PostTagCategoryCreateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/tags/categories/create',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return PostTagCategoryCreateResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<PostTagCategoryCreateResponse400, PostTagCategoryCreateResponse409>.a(PostTagCategoryCreateResponse400.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return OneOf2<PostTagCategoryCreateResponse400, PostTagCategoryCreateResponse409>.b(PostTagCategoryCreateResponse409.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
 }
