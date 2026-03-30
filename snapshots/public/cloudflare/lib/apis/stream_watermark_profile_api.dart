// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/stream_account_identifier.dart';import '../models/stream_watermark_basic_upload.dart';import '../models/stream_watermark_identifier.dart';import '../models/stream_watermark_profile_delete_watermark_profiles_response.dart';import '../models/stream_watermark_response_collection.dart';import '../models/stream_watermark_response_single.dart';/// StreamWatermarkProfileApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class StreamWatermarkProfileApi with ApiExecutor {const StreamWatermarkProfileApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List watermark profiles
///
/// Lists all watermark profiles for an account.
///
/// `GET /accounts/{account_id}/stream/watermarks`
Future<ApiResult<StreamWatermarkResponseCollection, Never>> streamWatermarkProfileListWatermarkProfiles({required StreamAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/watermarks',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return StreamWatermarkResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create watermark profiles via basic upload
///
/// Creates watermark profiles using a single `HTTP POST multipart/form-data` request.
///
/// `POST /accounts/{account_id}/stream/watermarks`
Future<ApiResult<StreamWatermarkResponseSingle, Never>> streamWatermarkProfileCreateWatermarkProfilesViaBasicUpload({required StreamAccountIdentifier accountId, required StreamWatermarkBasicUpload body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/watermarks',
  headers: headers,
  body: [
    ApiMultipartField.text('file', body.file),
    if (body.name case final name$?)
      ApiMultipartField.text('name', name$.toJson().toString()),
    if (body.opacity case final opacity$?)
      ApiMultipartField.text('opacity', opacity$.toJson().toString()),
    if (body.padding case final padding$?)
      ApiMultipartField.text('padding', padding$.toJson().toString()),
    if (body.position case final position$?)
      ApiMultipartField.text('position', position$.toJson().toString()),
    if (body.scale case final scale$?)
      ApiMultipartField.text('scale', scale$.toJson().toString()),
  ],
  contentType: 'multipart/form-data',
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return StreamWatermarkResponseSingle.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Watermark profile details
///
/// Retrieves details for a single watermark profile.
///
/// `GET /accounts/{account_id}/stream/watermarks/{identifier}`
Future<ApiResult<StreamWatermarkResponseSingle, Never>> streamWatermarkProfileDetails({required StreamWatermarkIdentifier identifier, required StreamAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/watermarks/${Uri.encodeComponent(identifier.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return StreamWatermarkResponseSingle.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete watermark profiles
///
/// Deletes a watermark profile.
///
/// `DELETE /accounts/{account_id}/stream/watermarks/{identifier}`
Future<ApiResult<StreamWatermarkProfileDeleteWatermarkProfilesResponse, Never>> streamWatermarkProfileDeleteWatermarkProfiles({required StreamWatermarkIdentifier identifier, required StreamAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/watermarks/${Uri.encodeComponent(identifier.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return StreamWatermarkProfileDeleteWatermarkProfilesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
