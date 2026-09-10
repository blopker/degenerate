// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/create_video_body.dart';import '../models/create_video_remix_body.dart';import '../models/deleted_video_resource.dart';import '../models/order_enum.dart';import '../models/video_content_variant.dart';import '../models/video_list_resource.dart';import '../models/video_resource.dart';/// VideosApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class VideosApi with ApiExecutor {const VideosApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List recently generated videos for the current project.
///
/// `GET /videos`
Future<ApiResult<VideoListResource, Never>> listVideos({int? limit, OrderEnum? order, String? after, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (order != null) {
  queryParameters['order'] = order.toJson();
}
if (after != null) {
  queryParameters['after'] = after;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/videos',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return VideoListResource.fromJson(json as Map<String, dynamic>);
  },
);
 } 
/// Create a new video generation job from a prompt and optional reference assets.
///
/// `POST /videos`
Future<ApiResult<VideoResource, Never>> createVideo({CreateVideoBody? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/videos',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return VideoResource.fromJson(json as Map<String, dynamic>);
  },
);
 } 
/// Fetch the latest metadata for a generated video.
///
/// `GET /videos/{video_id}`
Future<ApiResult<VideoResource, Never>> getVideo({required String videoId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/videos/${Uri.encodeComponent(videoId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return VideoResource.fromJson(json as Map<String, dynamic>);
  },
);
 } 
/// Permanently delete a completed or failed video and its stored assets.
///
/// `DELETE /videos/{video_id}`
Future<ApiResult<DeletedVideoResource, Never>> deleteVideo({required String videoId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/videos/${Uri.encodeComponent(videoId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return DeletedVideoResource.fromJson(json as Map<String, dynamic>);
  },
);
 } 
/// Download the generated video bytes or a derived preview asset.
/// 
/// Streams the rendered video content for the specified video job.
///
/// `GET /videos/{video_id}/content`
Future<ApiResult<OneOf2<String, Uint8List>, Never>> retrieveVideoContent({required String videoId, VideoContentVariant? variant, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (variant != null) {
  queryParameters['variant'] = variant.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/videos/${Uri.encodeComponent(videoId)}/content',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return OneOf2<String, Uint8List>.a(json as String);
}
if (responseMediaTypeMatches(contentType, 'image/webp')) {
final value = (() { return Uint8List.fromList(response.bodyBytes); })();
return OneOf2<String, Uint8List>.b(value);
}
if (responseMediaTypeMatches(contentType, 'video/mp4')) {
final value = (() { return Uint8List.fromList(response.bodyBytes); })();
return OneOf2<String, Uint8List>.b(value);
}
final json = jsonDecode(response.body);
return OneOf2<String, Uint8List>.a(json as String);

  },
);
 } 
/// Create a remix of a completed video using a refreshed prompt.
///
/// `POST /videos/{video_id}/remix`
Future<ApiResult<VideoResource, Never>> createVideoRemix({required String videoId, CreateVideoRemixBody? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/videos/${Uri.encodeComponent(videoId)}/remix',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return VideoResource.fromJson(json as Map<String, dynamic>);
  },
);
 } 
 }
