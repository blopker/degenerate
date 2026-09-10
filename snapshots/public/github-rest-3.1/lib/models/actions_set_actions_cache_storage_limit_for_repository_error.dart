// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActionsSetActionsCacheStorageLimitForRepositoryError {const ActionsSetActionsCacheStorageLimitForRepositoryError();

/// Decodes the payload for its declared status and content type.
static ActionsSetActionsCacheStorageLimitForRepositoryError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json', )) {
final json = jsonDecode(response.body);
return  ActionsSetActionsCacheStorageLimitForRepositoryError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); } else if (responseMediaTypeMatches(contentType, 'application/scim+json', )) {
final json = jsonDecode(response.body);
return  ActionsSetActionsCacheStorageLimitForRepositoryError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>)); } else {
final json = jsonDecode(response.body);
return  ActionsSetActionsCacheStorageLimitForRepositoryError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); }case 403:
final json = jsonDecode(response.body);
return  ActionsSetActionsCacheStorageLimitForRepositoryError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  ActionsSetActionsCacheStorageLimitForRepositoryError404(BasicError.fromJson(json as Map<String, dynamic>));default:
return  ActionsSetActionsCacheStorageLimitForRepositoryErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class ActionsSetActionsCacheStorageLimitForRepositoryError400ApplicationJson extends ActionsSetActionsCacheStorageLimitForRepositoryError {const ActionsSetActionsCacheStorageLimitForRepositoryError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class ActionsSetActionsCacheStorageLimitForRepositoryError400ApplicationScimJson extends ActionsSetActionsCacheStorageLimitForRepositoryError {const ActionsSetActionsCacheStorageLimitForRepositoryError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 403 (application/json).
final class ActionsSetActionsCacheStorageLimitForRepositoryError403 extends ActionsSetActionsCacheStorageLimitForRepositoryError {const ActionsSetActionsCacheStorageLimitForRepositoryError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class ActionsSetActionsCacheStorageLimitForRepositoryError404 extends ActionsSetActionsCacheStorageLimitForRepositoryError {const ActionsSetActionsCacheStorageLimitForRepositoryError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActionsSetActionsCacheStorageLimitForRepositoryErrorUnknown extends ActionsSetActionsCacheStorageLimitForRepositoryError {const ActionsSetActionsCacheStorageLimitForRepositoryErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
