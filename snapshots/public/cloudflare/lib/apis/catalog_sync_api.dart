// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/mcn_account_id.dart';import '../models/mcn_bad_response.dart';import '../models/mcn_catalog_sync.dart';import '../models/mcn_catalog_sync_destination_type.dart';import '../models/mcn_catalog_sync_id.dart';import '../models/mcn_catalog_syncs_prebuilt_policy.dart';import '../models/mcn_create_catalog_sync_request.dart';import '../models/mcn_deleted_catalog_sync.dart';import '../models/mcn_refresh_catalog_sync_response.dart';import '../models/mcn_update_catalog_sync_request.dart';/// CatalogSyncApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class CatalogSyncApi with ApiExecutor {const CatalogSyncApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Catalog Syncs
///
/// List Catalog Syncs (Closed Beta).
///
/// `GET /accounts/{account_id}/magic/cloud/catalog-syncs`
Future<ApiResult<List<McnCatalogSync>?, McnBadResponse>> catalogSyncsList({required McnAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/catalog-syncs',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => McnCatalogSync.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create Catalog Sync
///
/// Create a new Catalog Sync (Closed Beta).
///
/// `POST /accounts/{account_id}/magic/cloud/catalog-syncs`
Future<ApiResult<McnCatalogSync?, McnBadResponse>> catalogSyncsCreate({required McnAccountId accountId, required McnCreateCatalogSyncRequest body, String? forwarded, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (forwarded != null) {
  headers['forwarded'] = forwarded;
}

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/catalog-syncs',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? McnCatalogSync.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Read Catalog Sync
///
/// Read a Catalog Sync (Closed Beta).
///
/// `GET /accounts/{account_id}/magic/cloud/catalog-syncs/{sync_id}`
Future<ApiResult<McnCatalogSync?, McnBadResponse>> catalogSyncsRead({required McnAccountId accountId, required McnCatalogSyncId syncId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/catalog-syncs/${Uri.encodeComponent(syncId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? McnCatalogSync.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Catalog Sync
///
/// Update a Catalog Sync (Closed Beta).
///
/// `PUT /accounts/{account_id}/magic/cloud/catalog-syncs/{sync_id}`
Future<ApiResult<McnCatalogSync?, McnBadResponse>> catalogSyncsUpdate({required McnAccountId accountId, required McnCatalogSyncId syncId, required McnUpdateCatalogSyncRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/catalog-syncs/${Uri.encodeComponent(syncId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? McnCatalogSync.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Patch Catalog Sync
///
/// Update a Catalog Sync (Closed Beta).
///
/// `PATCH /accounts/{account_id}/magic/cloud/catalog-syncs/{sync_id}`
Future<ApiResult<McnCatalogSync?, McnBadResponse>> catalogSyncsPatch({required McnAccountId accountId, required McnCatalogSyncId syncId, required McnUpdateCatalogSyncRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/catalog-syncs/${Uri.encodeComponent(syncId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? McnCatalogSync.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Catalog Sync
///
/// Delete a Catalog Sync (Closed Beta).
///
/// `DELETE /accounts/{account_id}/magic/cloud/catalog-syncs/{sync_id}`
Future<ApiResult<McnDeletedCatalogSync?, McnBadResponse>> catalogSyncsDelete({required McnAccountId accountId, required McnCatalogSyncId syncId, bool? deleteDestination, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (deleteDestination != null) {
  queryParameters['delete_destination'] = deleteDestination.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/catalog-syncs/${Uri.encodeComponent(syncId.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? McnDeletedCatalogSync.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Run Catalog Sync
///
/// Refresh a Catalog Sync's destination by running the sync policy against latest resource catalog (Closed Beta).
///
/// `POST /accounts/{account_id}/magic/cloud/catalog-syncs/{sync_id}/refresh`
Future<ApiResult<McnPolicyResult?, McnBadResponse>> catalogSyncsRefresh({required McnAccountId accountId, required McnCatalogSyncId syncId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/catalog-syncs/${Uri.encodeComponent(syncId.toString())}/refresh',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? McnPolicyResult.fromJson(json['result'] as String) : null;
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List Prebuilt Policies
///
/// List prebuilt catalog sync policies (Closed Beta).
///
/// `GET /accounts/{account_id}/magic/cloud/catalog-syncs/prebuilt-policies`
Future<ApiResult<List<McnCatalogSyncsPrebuiltPolicy>?, McnBadResponse>> catalogSyncsPrebuiltPoliciesList({required McnAccountId accountId, McnCatalogSyncDestinationType? destinationType, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (destinationType != null) {
  queryParameters['destination_type'] = destinationType.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/catalog-syncs/prebuilt-policies',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => McnCatalogSyncsPrebuiltPolicy.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
