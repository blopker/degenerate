// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/avatar_update.dart';import '../models/message.dart';import '../models/public_user_schema.dart';import '../models/user_upload_profile_image_request.dart';/// DefaultApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DefaultApi with ApiExecutor {const DefaultApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Current User
///
/// `GET /api/v1/auth/currentuser`
Future<ApiResult<PublicUserSchema, Message>> totemApiCurrentUser({RequestOptions? options}) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/api/v1/auth/currentuser',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return PublicUserSchema.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return Message.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// User Avatar Update
///
/// `POST /api/v1/user/avatarupdate`
Future<ApiResult<void, Message>> totemApiUserAvatarUpdate({required AvatarUpdate body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/api/v1/user/avatarupdate',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return Message.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// User Upload Profile Image
///
/// `POST /api/v1/user/avatarimage`
Future<ApiResult<void, Message>> totemApiUserUploadProfileImage({required UserUploadProfileImageRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/api/v1/user/avatarimage',
  headers: headers,
  body: [
    ApiMultipartField.file('file', body.file),
  ],
  contentType: 'multipart/form-data',
  options: options,
);

return await execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return Message.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
/// Dev Version
///
/// `GET /api/v1/dev/version`
Future<ApiResult<String, Never>> totemApiDevVersion({RequestOptions? options}) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/api/v1/dev/version',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return json as String;
  },
);
}
}
