// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActionsSetActionsCacheStorageLimitForOrganizationError {const ActionsSetActionsCacheStorageLimitForOrganizationError();

/// Decodes the payload for its declared status and content type.
static ActionsSetActionsCacheStorageLimitForOrganizationError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return ActionsSetActionsCacheStorageLimitForOrganizationError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return ActionsSetActionsCacheStorageLimitForOrganizationError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return ActionsSetActionsCacheStorageLimitForOrganizationError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 403:
final json = jsonDecode(response.body);
return ActionsSetActionsCacheStorageLimitForOrganizationError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return ActionsSetActionsCacheStorageLimitForOrganizationError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ActionsSetActionsCacheStorageLimitForOrganizationErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class ActionsSetActionsCacheStorageLimitForOrganizationError400ApplicationJson extends ActionsSetActionsCacheStorageLimitForOrganizationError {const ActionsSetActionsCacheStorageLimitForOrganizationError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 400 (application/scim+json).
final class ActionsSetActionsCacheStorageLimitForOrganizationError400ApplicationScimJson extends ActionsSetActionsCacheStorageLimitForOrganizationError {const ActionsSetActionsCacheStorageLimitForOrganizationError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

 }
/// Response for 403 (application/json).
final class ActionsSetActionsCacheStorageLimitForOrganizationError403 extends ActionsSetActionsCacheStorageLimitForOrganizationError {const ActionsSetActionsCacheStorageLimitForOrganizationError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class ActionsSetActionsCacheStorageLimitForOrganizationError404 extends ActionsSetActionsCacheStorageLimitForOrganizationError {const ActionsSetActionsCacheStorageLimitForOrganizationError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ActionsSetActionsCacheStorageLimitForOrganizationErrorUnknown extends ActionsSetActionsCacheStorageLimitForOrganizationError {const ActionsSetActionsCacheStorageLimitForOrganizationErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
