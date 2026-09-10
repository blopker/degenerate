// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActionsSetActionsCacheRetentionLimitForRepositoryError {const ActionsSetActionsCacheRetentionLimitForRepositoryError();

/// Decodes the payload for its declared status and content type.
static ActionsSetActionsCacheRetentionLimitForRepositoryError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json', )) {
final json = jsonDecode(response.body);
return  ActionsSetActionsCacheRetentionLimitForRepositoryError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); } else if (responseMediaTypeMatches(contentType, 'application/scim+json', )) {
final json = jsonDecode(response.body);
return  ActionsSetActionsCacheRetentionLimitForRepositoryError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>)); } else {
final json = jsonDecode(response.body);
return  ActionsSetActionsCacheRetentionLimitForRepositoryError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); }case 403:
final json = jsonDecode(response.body);
return  ActionsSetActionsCacheRetentionLimitForRepositoryError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  ActionsSetActionsCacheRetentionLimitForRepositoryError404(BasicError.fromJson(json as Map<String, dynamic>));default:
return  ActionsSetActionsCacheRetentionLimitForRepositoryErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class ActionsSetActionsCacheRetentionLimitForRepositoryError400ApplicationJson extends ActionsSetActionsCacheRetentionLimitForRepositoryError {const ActionsSetActionsCacheRetentionLimitForRepositoryError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class ActionsSetActionsCacheRetentionLimitForRepositoryError400ApplicationScimJson extends ActionsSetActionsCacheRetentionLimitForRepositoryError {const ActionsSetActionsCacheRetentionLimitForRepositoryError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 403 (application/json).
final class ActionsSetActionsCacheRetentionLimitForRepositoryError403 extends ActionsSetActionsCacheRetentionLimitForRepositoryError {const ActionsSetActionsCacheRetentionLimitForRepositoryError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class ActionsSetActionsCacheRetentionLimitForRepositoryError404 extends ActionsSetActionsCacheRetentionLimitForRepositoryError {const ActionsSetActionsCacheRetentionLimitForRepositoryError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActionsSetActionsCacheRetentionLimitForRepositoryErrorUnknown extends ActionsSetActionsCacheRetentionLimitForRepositoryError {const ActionsSetActionsCacheRetentionLimitForRepositoryErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
