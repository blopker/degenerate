// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/autorag_config_files_response404.dart';import '../models/autorag_config_files_response503.dart';import '../models/autorag_config_files_response_result.dart';import '../models/autorag_config_files_status.dart';import '../models/autorag_config_sync_response400.dart';import '../models/autorag_config_sync_response404.dart';import '../models/autorag_config_sync_response429.dart';import '../models/autorag_config_sync_response503.dart';import '../models/autorag_config_sync_response_result.dart';/// AutoRagRagApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AutoRagRagApi with ApiExecutor {const AutoRagRagApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Files
///
/// `GET /accounts/{account_id}/autorag/rags/{id}/files`
Future<ApiResult<List<AutoragConfigFilesResponseResult>, OneOf2<AutoragConfigFilesResponse404, AutoragConfigFilesResponse503>>> autoragConfigFiles({required String id, required String accountId, int? page, int? perPage, String? search, AutoragConfigFilesStatus? status, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (search != null) {
  queryParameters['search'] = search;
}
if (status != null) {
  queryParameters['status'] = status.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/autorag/rags/${Uri.encodeComponent(id)}/files',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => AutoragConfigFilesResponseResult.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return OneOf2<AutoragConfigFilesResponse404, AutoragConfigFilesResponse503>.a(AutoragConfigFilesResponse404.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return OneOf2<AutoragConfigFilesResponse404, AutoragConfigFilesResponse503>.b(AutoragConfigFilesResponse503.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Sync
///
/// `PATCH /accounts/{account_id}/autorag/rags/{id}/sync`
Future<ApiResult<AutoragConfigSyncResponseResult, OneOf4<AutoragConfigSyncResponse400, AutoragConfigSyncResponse404, AutoragConfigSyncResponse429, AutoragConfigSyncResponse503>>> autoragConfigSync({required String id, required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/autorag/rags/${Uri.encodeComponent(id)}/sync',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return AutoragConfigSyncResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return OneOf4<AutoragConfigSyncResponse400, AutoragConfigSyncResponse404, AutoragConfigSyncResponse429, AutoragConfigSyncResponse503>.a(AutoragConfigSyncResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return OneOf4<AutoragConfigSyncResponse400, AutoragConfigSyncResponse404, AutoragConfigSyncResponse429, AutoragConfigSyncResponse503>.b(AutoragConfigSyncResponse404.fromJson(json as Map<String, dynamic>));
case 429:
final json = jsonDecode(response.body);
return OneOf4<AutoragConfigSyncResponse400, AutoragConfigSyncResponse404, AutoragConfigSyncResponse429, AutoragConfigSyncResponse503>.c(AutoragConfigSyncResponse429.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return OneOf4<AutoragConfigSyncResponse400, AutoragConfigSyncResponse404, AutoragConfigSyncResponse429, AutoragConfigSyncResponse503>.d(AutoragConfigSyncResponse503.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
 }
