// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/stream_account_identifier.dart';import '../models/stream_watermark_basic_upload.dart';import '../models/stream_watermark_identifier.dart';import '../models/stream_watermarks.dart';/// StreamWatermarkProfileApi operations.
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
Future<ApiResult<List<StreamWatermarks>?, Never>> streamWatermarkProfileListWatermarkProfiles({required StreamAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/watermarks',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => StreamWatermarks.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create watermark profiles via basic upload
///
/// Creates watermark profiles using a single `HTTP POST multipart/form-data` request.
///
/// `POST /accounts/{account_id}/stream/watermarks`
Future<ApiResult<StreamWatermarks?, Never>> streamWatermarkProfileCreateWatermarkProfilesViaBasicUpload({required StreamAccountIdentifier accountId, required StreamWatermarkBasicUpload body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? StreamWatermarks.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Watermark profile details
///
/// Retrieves details for a single watermark profile.
///
/// `GET /accounts/{account_id}/stream/watermarks/{identifier}`
Future<ApiResult<StreamWatermarks?, Never>> streamWatermarkProfileDetails({required StreamWatermarkIdentifier identifier, required StreamAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/watermarks/${Uri.encodeComponent(identifier.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? StreamWatermarks.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete watermark profiles
///
/// Deletes a watermark profile.
///
/// `DELETE /accounts/{account_id}/stream/watermarks/{identifier}`
Future<ApiResult<String?, Never>> streamWatermarkProfileDeleteWatermarkProfiles({required StreamWatermarkIdentifier identifier, required StreamAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/watermarks/${Uri.encodeComponent(identifier.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as String?;
  },
);
 } 
 }
