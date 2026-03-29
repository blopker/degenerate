// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/realtimekit_account_identifier.dart';import '../models/realtimekit_app_id.dart';import '../models/realtimekit_generic_success_response.dart';import '../models/realtimekit_paging_response.dart';import '../models/realtimekit_preset.dart';import '../models/realtimekit_update_preset.dart';/// PresetsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class PresetsApi with ApiExecutor {const PresetsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Fetch all presets
///
/// Fetches all the presets belonging to an App.
///
/// `GET /accounts/{account_id}/realtime/kit/{app_id}/presets`
Future<ApiResult<RealtimekitPagingResponse, Never>> getPresets({required RealtimekitAccountIdentifier accountId, required RealtimekitAppId appId, double? perPage, double? pageNo, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (perPage != null) queryParameters['per_page'] = perPage.toString();
if (pageNo != null) queryParameters['page_no'] = pageNo.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/realtime/kit/${Uri.encodeComponent(appId.toString())}/presets',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RealtimekitPagingResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a preset
///
/// Creates a preset belonging to the current App
///
/// `POST /accounts/{account_id}/realtime/kit/{app_id}/presets`
Future<ApiResult<RealtimekitGenericSuccessResponse, Never>> postPresets({required RealtimekitAccountIdentifier accountId, required RealtimekitAppId appId, required RealtimekitPreset body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/realtime/kit/${Uri.encodeComponent(appId.toString())}/presets',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RealtimekitGenericSuccessResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Fetch details of a preset
///
/// Fetches details of a preset using the provided preset ID
///
/// `GET /accounts/{account_id}/realtime/kit/{app_id}/presets/{preset_id}`
Future<ApiResult<RealtimekitGenericSuccessResponse, Never>> getPresetsPresetId({required RealtimekitAccountIdentifier accountId, required RealtimekitAppId appId, required String presetId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/realtime/kit/${Uri.encodeComponent(appId.toString())}/presets/${Uri.encodeComponent(presetId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RealtimekitGenericSuccessResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a preset
///
/// Update a preset by the provided preset ID
///
/// `PATCH /accounts/{account_id}/realtime/kit/{app_id}/presets/{preset_id}`
Future<ApiResult<RealtimekitGenericSuccessResponse, Never>> patchPresetsPresetId({required RealtimekitAccountIdentifier accountId, required RealtimekitAppId appId, required String presetId, required RealtimekitUpdatePreset body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/realtime/kit/${Uri.encodeComponent(appId.toString())}/presets/${Uri.encodeComponent(presetId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RealtimekitGenericSuccessResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a preset
///
/// Deletes a preset using the provided preset ID
///
/// `DELETE /accounts/{account_id}/realtime/kit/{app_id}/presets/{preset_id}`
Future<ApiResult<RealtimekitGenericSuccessResponse, Never>> deletePresetsPresetId({required RealtimekitAccountIdentifier accountId, required RealtimekitAppId appId, required String presetId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/realtime/kit/${Uri.encodeComponent(appId.toString())}/presets/${Uri.encodeComponent(presetId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return RealtimekitGenericSuccessResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
