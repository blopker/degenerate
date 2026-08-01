// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/upload_avatar_request.dart';import '../models/user.dart';import '../models/user_patch.dart';/// DefaultApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DefaultApi with ApiExecutor {const DefaultApi(this.apiConfig);

@override final ApiConfig apiConfig;

///
/// `GET /users/{userId}`
Future<ApiResult<User, Never>> getUser({required String userId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/users/${Uri.encodeComponent(userId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return User.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
///
/// `PATCH /users/{userId}`
Future<ApiResult<User, Never>> patchUser({required String userId, required UserPatch body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/merge-patch+json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/users/${Uri.encodeComponent(userId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return User.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
///
/// `PUT /users/{userId}/avatar`
Future<ApiResult<void, Never>> uploadAvatar({required String userId, required UploadAvatarRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PUT',
  path: '/users/${Uri.encodeComponent(userId)}/avatar',
  headers: headers,
  body: [
    ApiMultipartField.file('image', body.image),
    if (body.caption.value case final caption$?)
      ApiMultipartField.text('caption', caption$),
  ],
  contentType: 'multipart/form-data',
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
 }
