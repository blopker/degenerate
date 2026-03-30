// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/mcn_account_id.dart';import '../models/mcn_bad_response.dart';import '../models/mcn_catalog_sync_destination_type.dart';import '../models/mcn_catalog_sync_id.dart';import '../models/mcn_catalog_syncs_prebuilt_policies_response.dart';import '../models/mcn_create_catalog_sync_request.dart';import '../models/mcn_create_catalog_sync_response.dart';import '../models/mcn_delete_catalog_sync_response.dart';import '../models/mcn_read_account_catalog_sync_response.dart';import '../models/mcn_read_account_catalog_syncs_response.dart';import '../models/mcn_refresh_catalog_sync_response.dart';import '../models/mcn_update_catalog_sync_request.dart';import '../models/mcn_update_catalog_sync_response.dart';/// CatalogSyncApi operations.
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
Future<ApiResult<McnReadAccountCatalogSyncsResponse, McnBadResponse>> catalogSyncsList({required McnAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/catalog-syncs',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return McnReadAccountCatalogSyncsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
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
Future<ApiResult<McnCreateCatalogSyncResponse, McnBadResponse>> catalogSyncsCreate({required McnAccountId accountId, String? forwarded, required McnCreateCatalogSyncRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return McnCreateCatalogSyncResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
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
Future<ApiResult<McnReadAccountCatalogSyncResponse, McnBadResponse>> catalogSyncsRead({required McnAccountId accountId, required McnCatalogSyncId syncId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/catalog-syncs/${Uri.encodeComponent(syncId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return McnReadAccountCatalogSyncResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
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
Future<ApiResult<McnUpdateCatalogSyncResponse, McnBadResponse>> catalogSyncsUpdate({required McnAccountId accountId, required McnCatalogSyncId syncId, required McnUpdateCatalogSyncRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return McnUpdateCatalogSyncResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
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
Future<ApiResult<McnUpdateCatalogSyncResponse, McnBadResponse>> catalogSyncsPatch({required McnAccountId accountId, required McnCatalogSyncId syncId, required McnUpdateCatalogSyncRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return McnUpdateCatalogSyncResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
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
Future<ApiResult<McnDeleteCatalogSyncResponse, McnBadResponse>> catalogSyncsDelete({required McnAccountId accountId, required McnCatalogSyncId syncId, bool? deleteDestination, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
    return McnDeleteCatalogSyncResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
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
Future<ApiResult<McnRefreshCatalogSyncResponse, McnBadResponse>> catalogSyncsRefresh({required McnAccountId accountId, required McnCatalogSyncId syncId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/catalog-syncs/${Uri.encodeComponent(syncId.toString())}/refresh',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return McnRefreshCatalogSyncResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
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
Future<ApiResult<McnCatalogSyncsPrebuiltPoliciesResponse, McnBadResponse>> catalogSyncsPrebuiltPoliciesList({required McnAccountId accountId, McnCatalogSyncDestinationType? destinationType, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
    return McnCatalogSyncsPrebuiltPoliciesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
