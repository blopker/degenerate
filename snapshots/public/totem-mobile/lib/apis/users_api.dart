// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/feedback_schema.dart';import '../models/keeper_profile_schema.dart';import '../models/public_user_schema.dart';import '../models/update_current_user_image_request.dart';import '../models/user_schema.dart';import '../models/user_update_schema.dart';/// UsersApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class UsersApi with ApiExecutor {const UsersApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Current User
///
/// `GET /api/mobile/protected/users/current`
Future<ApiResult<UserSchema, Never>> totemUsersMobileApiGetCurrentUser({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/api/mobile/protected/users/current',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return UserSchema.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get User Profile
///
/// `GET /api/mobile/protected/users/profile/{user_slug}`
Future<ApiResult<PublicUserSchema, Never>> totemUsersMobileApiGetUserProfile({required String userSlug, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/api/mobile/protected/users/profile/${Uri.encodeComponent(userSlug)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return PublicUserSchema.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Current User
///
/// `POST /api/mobile/protected/users/update`
Future<ApiResult<UserSchema, Never>> totemUsersMobileApiUpdateCurrentUser({required UserUpdateSchema body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/api/mobile/protected/users/update',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return UserSchema.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Current User Image
///
/// `POST /api/mobile/protected/users/update_image`
Future<ApiResult<bool, Never>> totemUsersMobileApiUpdateCurrentUserImage({required UpdateCurrentUserImageRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/api/mobile/protected/users/update_image',
  headers: headers,
  body: [
    ApiMultipartField.file('profile_image', body.profileImage),
  ],
  contentType: 'multipart/form-data',
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return jsonDecode(response.body) as bool;
  },
);
 } 
/// Delete Current User
///
/// `DELETE /api/mobile/protected/users/delete`
Future<ApiResult<bool, Never>> totemUsersMobileApiDeleteCurrentUser({RequestOptions? options}) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/api/mobile/protected/users/delete',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return jsonDecode(response.body) as bool;
  },
);
 } 
/// Keeper
///
/// `GET /api/mobile/protected/users/keeper/{slug}`
Future<ApiResult<KeeperProfileSchema, Never>> totemUsersMobileApiKeeper({required String slug, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/api/mobile/protected/users/keeper/${Uri.encodeComponent(slug)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return KeeperProfileSchema.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Submit Feedback
///
/// `POST /api/mobile/protected/users/feedback`
Future<ApiResult<bool, Never>> totemUsersMobileApiSubmitFeedback({required FeedbackSchema body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/api/mobile/protected/users/feedback',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return jsonDecode(response.body) as bool;
  },
);
 } 
 }
