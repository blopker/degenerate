// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/response_common66.dart';import '../models/stream_download_type.dart';import '../models/stream_identifier.dart';import '../models/stream_schemas_identifier.dart';/// StreamMp4DownloadsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class StreamMp4DownloadsApi with ApiExecutor {const StreamMp4DownloadsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List downloads
///
/// Lists the downloads created for a video.
///
/// `GET /accounts/{account_id}/stream/{identifier}/downloads`
Future<ApiResult<ResponseCommon66, Never>> streamMP4DownloadsListDownloads({required StreamIdentifier identifier, required StreamSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/${Uri.encodeComponent(identifier.toString())}/downloads',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon66.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create downloads
///
/// Creates a download for a video when a video is ready to view. Use `/downloads/{download_type}` instead for type-specific downloads. Available types are `default` and `audio`.
///
/// `POST /accounts/{account_id}/stream/{identifier}/downloads`
Future<ApiResult<ResponseCommon66, Never>> streamMP4DownloadsCreateDownloads({required StreamIdentifier identifier, required StreamSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/${Uri.encodeComponent(identifier.toString())}/downloads',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon66.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete downloads
///
/// Delete the downloads for a video. Use `/downloads/{download_type}` instead for type-specific downloads. Available types are `default` and `audio`.
///
/// `DELETE /accounts/{account_id}/stream/{identifier}/downloads`
Future<ApiResult<ResponseCommon66, Never>> streamMP4DownloadsDeleteDownloads({required StreamIdentifier identifier, required StreamSchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/${Uri.encodeComponent(identifier.toString())}/downloads',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon66.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create download
///
/// Creates a download for a video of specified type. For backwards-compatibility, POST requests to /downloads will enable the default download.
///
/// `POST /accounts/{account_id}/stream/{identifier}/downloads/{download_type}`
Future<ApiResult<ResponseCommon66, Never>> streamDownloadsCreateTypeSpecificDownloads({required StreamIdentifier identifier, required StreamSchemasIdentifier accountId, required StreamDownloadType downloadType, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/${Uri.encodeComponent(identifier.toString())}/downloads/${Uri.encodeComponent(downloadType.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon66.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete download
///
/// Delete specific type of download. For backwards-compatibility, DELETE requests to /downloads will delete the default download.
///
/// `DELETE /accounts/{account_id}/stream/{identifier}/downloads/{download_type}`
Future<ApiResult<ResponseCommon66, Never>> streamDownloadsDeleteTypeSpecificDownloads({required StreamIdentifier identifier, required StreamSchemasIdentifier accountId, required StreamDownloadType downloadType, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/${Uri.encodeComponent(identifier.toString())}/downloads/${Uri.encodeComponent(downloadType.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon66.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
