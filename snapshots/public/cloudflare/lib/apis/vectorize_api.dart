// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/request.dart';import '../models/response_common72.dart';import '../models/vectorize_create_index_request.dart';import '../models/vectorize_create_metadata_index_request.dart';import '../models/vectorize_create_metadata_index_response2.dart';import '../models/vectorize_create_vectorize_index_response.dart';import '../models/vectorize_delete_metadata_index_request.dart';import '../models/vectorize_delete_metadata_index_response2.dart';import '../models/vectorize_delete_vectorize_index_response.dart';import '../models/vectorize_delete_vectors_by_id_response.dart';import '../models/vectorize_get_vectorize_index_response.dart';import '../models/vectorize_get_vectors_by_id_response.dart';import '../models/vectorize_identifier.dart';import '../models/vectorize_index_delete_vectors_by_id_request.dart';import '../models/vectorize_index_get_vectors_by_id_request.dart';import '../models/vectorize_index_info_response2.dart';import '../models/vectorize_index_name.dart';import '../models/vectorize_insert_vector_response.dart';import '../models/vectorize_insert_vector_unparsable_behavior.dart';import '../models/vectorize_list_metadata_indexes_response.dart';import '../models/vectorize_list_vectors_response.dart';import '../models/vectorize_query_vector_response.dart';import '../models/vectorize_upsert_vector_response.dart';import '../models/vectorize_upsert_vector_unparsable_behavior.dart';/// VectorizeApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class VectorizeApi with ApiExecutor {const VectorizeApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Vectorize Indexes
///
/// Returns a list of Vectorize Indexes
///
/// `GET /accounts/{account_id}/vectorize/v2/indexes`
Future<ApiResult<ResponseCommon72, Never>> vectorizeListVectorizeIndexes({required VectorizeIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/vectorize/v2/indexes',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon72.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create Vectorize Index
///
/// Creates and returns a new Vectorize Index.
///
/// `POST /accounts/{account_id}/vectorize/v2/indexes`
Future<ApiResult<VectorizeCreateVectorizeIndexResponse, Never>> vectorizeCreateVectorizeIndex({required VectorizeIdentifier accountId, required VectorizeCreateIndexRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/vectorize/v2/indexes',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return VectorizeCreateVectorizeIndexResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Vectorize Index
///
/// Returns the specified Vectorize Index.
///
/// `GET /accounts/{account_id}/vectorize/v2/indexes/{index_name}`
Future<ApiResult<VectorizeGetVectorizeIndexResponse, Never>> vectorizeGetVectorizeIndex({required VectorizeIdentifier accountId, required VectorizeIndexName indexName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/vectorize/v2/indexes/${Uri.encodeComponent(indexName.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return VectorizeGetVectorizeIndexResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Vectorize Index
///
/// Deletes the specified Vectorize Index.
///
/// `DELETE /accounts/{account_id}/vectorize/v2/indexes/{index_name}`
Future<ApiResult<VectorizeDeleteVectorizeIndexResponse, Never>> vectorizeDeleteVectorizeIndex({required VectorizeIdentifier accountId, required VectorizeIndexName indexName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/vectorize/v2/indexes/${Uri.encodeComponent(indexName.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return VectorizeDeleteVectorizeIndexResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Vectors By Identifier
///
/// Delete a set of vectors from an index by their vector identifiers.
///
/// `POST /accounts/{account_id}/vectorize/v2/indexes/{index_name}/delete_by_ids`
Future<ApiResult<VectorizeDeleteVectorsByIdResponse, Never>> vectorizeDeleteVectorsById({required VectorizeIdentifier accountId, required VectorizeIndexName indexName, required VectorizeIndexDeleteVectorsByIdRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/vectorize/v2/indexes/${Uri.encodeComponent(indexName.toString())}/delete_by_ids',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return VectorizeDeleteVectorsByIdResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Vectors By Identifier
///
/// Get a set of vectors from an index by their vector identifiers.
///
/// `POST /accounts/{account_id}/vectorize/v2/indexes/{index_name}/get_by_ids`
Future<ApiResult<VectorizeGetVectorsByIdResponse, Never>> vectorizeGetVectorsById({required VectorizeIdentifier accountId, required VectorizeIndexName indexName, required VectorizeIndexGetVectorsByIdRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/vectorize/v2/indexes/${Uri.encodeComponent(indexName.toString())}/get_by_ids',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return VectorizeGetVectorsByIdResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Vectorize Index Info
///
/// Get information about a vectorize index.
///
/// `GET /accounts/{account_id}/vectorize/v2/indexes/{index_name}/info`
Future<ApiResult<VectorizeIndexInfoResponse2, Never>> vectorizeIndexInfo({required VectorizeIdentifier accountId, required VectorizeIndexName indexName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/vectorize/v2/indexes/${Uri.encodeComponent(indexName.toString())}/info',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return VectorizeIndexInfoResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Insert Vectors
///
/// Inserts vectors into the specified index and returns a mutation id corresponding to the vectors enqueued for insertion.
///
/// `POST /accounts/{account_id}/vectorize/v2/indexes/{index_name}/insert`
Future<ApiResult<VectorizeInsertVectorResponse, Never>> vectorizeInsertVector({required VectorizeIdentifier accountId, required VectorizeIndexName indexName, VectorizeInsertVectorUnparsableBehavior? unparsableBehavior, required Uint8List body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (unparsableBehavior != null) {
  queryParameters['unparsable-behavior'] = unparsableBehavior.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/x-ndjson';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/vectorize/v2/indexes/${Uri.encodeComponent(indexName.toString())}/insert',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: body,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return VectorizeInsertVectorResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List Vectors
///
/// Returns a paginated list of vector identifiers from the specified index.
///
/// `GET /accounts/{account_id}/vectorize/v2/indexes/{index_name}/list`
Future<ApiResult<VectorizeListVectorsResponse, Never>> vectorizeListVectors({required VectorizeIdentifier accountId, required VectorizeIndexName indexName, int? count, String? cursor, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (count != null) {
  queryParameters['count'] = count.toString();
}
if (cursor != null) {
  queryParameters['cursor'] = cursor;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/vectorize/v2/indexes/${Uri.encodeComponent(indexName.toString())}/list',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return VectorizeListVectorsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create Metadata Index
///
/// Enable metadata filtering based on metadata property. Limited to 10 properties.
///
/// `POST /accounts/{account_id}/vectorize/v2/indexes/{index_name}/metadata_index/create`
Future<ApiResult<VectorizeCreateMetadataIndexResponse2, Never>> vectorizeCreateMetadataIndex({required VectorizeIdentifier accountId, required VectorizeIndexName indexName, required VectorizeCreateMetadataIndexRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/vectorize/v2/indexes/${Uri.encodeComponent(indexName.toString())}/metadata_index/create',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return VectorizeCreateMetadataIndexResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Metadata Index
///
/// Allow Vectorize to delete the specified metadata index.
///
/// `POST /accounts/{account_id}/vectorize/v2/indexes/{index_name}/metadata_index/delete`
Future<ApiResult<VectorizeDeleteMetadataIndexResponse2, Never>> vectorizeDeleteMetadataIndex({required VectorizeIdentifier accountId, required VectorizeIndexName indexName, required VectorizeDeleteMetadataIndexRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/vectorize/v2/indexes/${Uri.encodeComponent(indexName.toString())}/metadata_index/delete',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return VectorizeDeleteMetadataIndexResponse2.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List Metadata Indexes
///
/// List Metadata Indexes for the specified Vectorize Index.
///
/// `GET /accounts/{account_id}/vectorize/v2/indexes/{index_name}/metadata_index/list`
Future<ApiResult<VectorizeListMetadataIndexesResponse, Never>> vectorizeListMetadataIndexes({required VectorizeIdentifier accountId, required VectorizeIndexName indexName, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/vectorize/v2/indexes/${Uri.encodeComponent(indexName.toString())}/metadata_index/list',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return VectorizeListMetadataIndexesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Query Vectors
///
/// Finds vectors closest to a given vector in an index.
///
/// `POST /accounts/{account_id}/vectorize/v2/indexes/{index_name}/query`
Future<ApiResult<VectorizeQueryVectorResponse, Never>> vectorizeQueryVector({required VectorizeIdentifier accountId, required VectorizeIndexName indexName, required Request body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/vectorize/v2/indexes/${Uri.encodeComponent(indexName.toString())}/query',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return VectorizeQueryVectorResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Upsert Vectors
///
/// Upserts vectors into the specified index, creating them if they do not exist and returns a mutation id corresponding to the vectors enqueued for upsertion.
///
/// `POST /accounts/{account_id}/vectorize/v2/indexes/{index_name}/upsert`
Future<ApiResult<VectorizeUpsertVectorResponse, Never>> vectorizeUpsertVector({required VectorizeIdentifier accountId, required VectorizeIndexName indexName, VectorizeUpsertVectorUnparsableBehavior? unparsableBehavior, required Uint8List body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (unparsableBehavior != null) {
  queryParameters['unparsable-behavior'] = unparsableBehavior.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/x-ndjson';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/vectorize/v2/indexes/${Uri.encodeComponent(indexName.toString())}/upsert',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: body,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return VectorizeUpsertVectorResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
