// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/stream_account_identifier.dart';import '../models/stream_clip_response_single.dart';import '../models/stream_video_clip_standard.dart';/// StreamVideoClippingApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class StreamVideoClippingApi with ApiExecutor {const StreamVideoClippingApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Clip videos given a start and end time
///
/// Clips a video based on the specified start and end times provided in seconds.
///
/// `POST /accounts/{account_id}/stream/clip`
Future<ApiResult<StreamClipResponseSingle, Never>> streamVideoClippingClipVideosGivenAStartAndEndTime({required StreamAccountIdentifier accountId, required StreamVideoClipStandard body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/stream/clip',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return StreamClipResponseSingle.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
