// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/delete_dataset_delete_response.dart';import '../models/delete_dataset_delete_response400.dart';import '../models/delete_dataset_delete_response404.dart';import '../models/get_dataset_list_response.dart';import '../models/get_dataset_list_response400.dart';import '../models/get_dataset_read_response.dart';import '../models/get_dataset_read_response400.dart';import '../models/patch_dataset_update_request.dart';import '../models/patch_dataset_update_response.dart';import '../models/patch_dataset_update_response400.dart';import '../models/post_dataset_create_request.dart';import '../models/post_dataset_create_response.dart';import '../models/post_dataset_create_response400.dart';import '../models/post_dataset_update_request.dart';import '../models/post_dataset_update_response.dart';import '../models/post_dataset_update_response400.dart';/// DatasetApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DatasetApi with ApiExecutor {const DatasetApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Lists all datasets in an account
///
/// `GET /accounts/{account_id}/cloudforce-one/events/dataset`
Future<ApiResult<List<GetDatasetListResponse>, GetDatasetListResponse400>> getDatasetList({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return (json as List<dynamic>).map((e) => GetDatasetListResponse.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return GetDatasetListResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Reads a dataset
///
/// `GET /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}`
Future<ApiResult<GetDatasetReadResponse, GetDatasetReadResponse400>> getDatasetRead({required String accountId, required String datasetId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/${Uri.encodeComponent(datasetId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return GetDatasetReadResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return GetDatasetReadResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Updates an existing dataset
///
/// `POST /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}`
Future<ApiResult<PostDatasetUpdateResponse, PostDatasetUpdateResponse400>> postDatasetUpdate({required String accountId, required String datasetId, PostDatasetUpdateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/${Uri.encodeComponent(datasetId)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return PostDatasetUpdateResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return PostDatasetUpdateResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Updates an existing dataset
///
/// `PATCH /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}`
Future<ApiResult<PatchDatasetUpdateResponse, PatchDatasetUpdateResponse400>> patchDatasetUpdate({required String accountId, required String datasetId, PatchDatasetUpdateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/${Uri.encodeComponent(datasetId)}',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return PatchDatasetUpdateResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return PatchDatasetUpdateResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
/// Delete a dataset
///
/// Deletes a dataset given a datasetId.
///
/// `DELETE /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}`
Future<ApiResult<DeleteDatasetDeleteResponse, OneOf2<DeleteDatasetDeleteResponse400, DeleteDatasetDeleteResponse404>>> deleteDatasetDelete({required String accountId, required String datasetId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/${Uri.encodeComponent(datasetId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return DeleteDatasetDeleteResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf2<DeleteDatasetDeleteResponse400, DeleteDatasetDeleteResponse404>.a(DeleteDatasetDeleteResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf2<DeleteDatasetDeleteResponse400, DeleteDatasetDeleteResponse404>.b(DeleteDatasetDeleteResponse404.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Creates a dataset
///
/// `POST /accounts/{account_id}/cloudforce-one/events/dataset/create`
Future<ApiResult<PostDatasetCreateResponse, PostDatasetCreateResponse400>> postDatasetCreate({required String accountId, PostDatasetCreateRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/cloudforce-one/events/dataset/create',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return PostDatasetCreateResponse.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return PostDatasetCreateResponse400.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
 } 
 }
