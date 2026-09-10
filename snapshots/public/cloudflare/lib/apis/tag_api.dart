// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/delete_tag_delete_response.dart';import '../models/delete_tag_delete_response400.dart';import '../models/delete_tag_delete_response404.dart';import '../models/get_tag_indicators_list_response.dart';import '../models/get_tag_indicators_list_response400.dart';import '../models/get_tag_indicators_list_response404.dart';import '../models/get_tag_indicators_list_response500.dart';import '../models/get_tag_list_response.dart';import '../models/get_tag_list_response400.dart';import '../models/patch_tag_update_request.dart';import '../models/patch_tag_update_response.dart';import '../models/patch_tag_update_response400.dart';import '../models/patch_tag_update_response404.dart';import '../models/post_tag_create_request.dart';import '../models/post_tag_create_response.dart';import '../models/post_tag_create_response400.dart';import '../models/post_tag_create_response404.dart';/// TagApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class TagApi with ApiExecutor {const TagApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List indicators related to a tag
///
/// Returns indicators associated with the provided tag UUID across all indicator datasets, with pagination.
///
/// `GET /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/tags/{tag_uuid}/indicators`
Future<ApiResult<GetTagIndicatorsListResponse, OneOf3<GetTagIndicatorsListResponse400, GetTagIndicatorsListResponse404, GetTagIndicatorsListResponse500>>> getTagIndicatorsList({required String accountId, required String tagUuid, required String datasetId, double? page, double? pageSize, String? indicatorType, List<String>? relatedEvent, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (pageSize != null) {
  queryParameters['pageSize'] = pageSize.toString();
}
if (indicatorType != null) {
  queryParameters['indicatorType'] = indicatorType;
}
if (relatedEvent != null) {
for (final item in relatedEvent) {
  queryParametersList.add(ApiQueryParameter(name: 'relatedEvent', value: item));
}
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/${Uri.encodeComponent(datasetId)}/tags/${Uri.encodeComponent(tagUuid)}/indicators',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return GetTagIndicatorsListResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf3<GetTagIndicatorsListResponse400, GetTagIndicatorsListResponse404, GetTagIndicatorsListResponse500>.a(GetTagIndicatorsListResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf3<GetTagIndicatorsListResponse400, GetTagIndicatorsListResponse404, GetTagIndicatorsListResponse500>.b(GetTagIndicatorsListResponse404.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return OneOf3<GetTagIndicatorsListResponse400, GetTagIndicatorsListResponse404, GetTagIndicatorsListResponse500>.c(GetTagIndicatorsListResponse500.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Lists all tags (SoT)
///
/// Returns all Source-of-Truth tags for an account.
///
/// `GET /accounts/{account_id}/cloudforce-one/events/tags`
Future<ApiResult<GetTagListResponse, GetTagListResponse400>> getTagList({required String accountId, double? page, double? pageSize, String? search, String? categoryUuid, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (pageSize != null) {
  queryParameters['pageSize'] = pageSize.toString();
}
if (search != null) {
  queryParameters['search'] = search;
}
if (categoryUuid != null) {
  queryParameters['categoryUuid'] = categoryUuid;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/tags',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return GetTagListResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return GetTagListResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Updates a tag (SoT)
///
/// Updates a Source-of-Truth tag by UUID.
///
/// `PATCH /accounts/{account_id}/cloudforce-one/events/tags/{tag_uuid}`
Future<ApiResult<PatchTagUpdateResponse, OneOf2<PatchTagUpdateResponse400, PatchTagUpdateResponse404>>> patchTagUpdate({required String accountId, required String tagUuid, PatchTagUpdateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/tags/${Uri.encodeComponent(tagUuid)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return PatchTagUpdateResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<PatchTagUpdateResponse400, PatchTagUpdateResponse404>.a(PatchTagUpdateResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf2<PatchTagUpdateResponse400, PatchTagUpdateResponse404>.b(PatchTagUpdateResponse404.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Deletes a tag (SoT)
///
/// Deletes a Source-of-Truth tag by UUID.
///
/// `DELETE /accounts/{account_id}/cloudforce-one/events/tags/{tag_uuid}`
Future<ApiResult<DeleteTagDeleteResponse, OneOf2<DeleteTagDeleteResponse400, DeleteTagDeleteResponse404>>> deleteTagDelete({required String accountId, required String tagUuid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/tags/${Uri.encodeComponent(tagUuid)}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return DeleteTagDeleteResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<DeleteTagDeleteResponse400, DeleteTagDeleteResponse404>.a(DeleteTagDeleteResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf2<DeleteTagDeleteResponse400, DeleteTagDeleteResponse404>.b(DeleteTagDeleteResponse404.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Creates a new tag
///
/// Creates a new tag to be used accross threat events.
///
/// `POST /accounts/{account_id}/cloudforce-one/events/tags/create`
Future<ApiResult<PostTagCreateResponse, OneOf2<PostTagCreateResponse400, PostTagCreateResponse404>>> postTagCreate({required String accountId, PostTagCreateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/tags/create',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return PostTagCreateResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<PostTagCreateResponse400, PostTagCreateResponse404>.a(PostTagCreateResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf2<PostTagCreateResponse400, PostTagCreateResponse404>.b(PostTagCreateResponse404.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
 }
