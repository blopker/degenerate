// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActionsSetActionsCacheStorageLimitForEnterpriseError {const ActionsSetActionsCacheStorageLimitForEnterpriseError();

/// Decodes the payload for its declared status and content type.
static ActionsSetActionsCacheStorageLimitForEnterpriseError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json', )) {
final json = jsonDecode(response.body);
return  ActionsSetActionsCacheStorageLimitForEnterpriseError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); } else if (responseMediaTypeMatches(contentType, 'application/scim+json', )) {
final json = jsonDecode(response.body);
return  ActionsSetActionsCacheStorageLimitForEnterpriseError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>)); } else {
final json = jsonDecode(response.body);
return  ActionsSetActionsCacheStorageLimitForEnterpriseError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); }case 403:
final json = jsonDecode(response.body);
return  ActionsSetActionsCacheStorageLimitForEnterpriseError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  ActionsSetActionsCacheStorageLimitForEnterpriseError404(BasicError.fromJson(json as Map<String, dynamic>));default:
return  ActionsSetActionsCacheStorageLimitForEnterpriseErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class ActionsSetActionsCacheStorageLimitForEnterpriseError400ApplicationJson extends ActionsSetActionsCacheStorageLimitForEnterpriseError {const ActionsSetActionsCacheStorageLimitForEnterpriseError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class ActionsSetActionsCacheStorageLimitForEnterpriseError400ApplicationScimJson extends ActionsSetActionsCacheStorageLimitForEnterpriseError {const ActionsSetActionsCacheStorageLimitForEnterpriseError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 403 (application/json).
final class ActionsSetActionsCacheStorageLimitForEnterpriseError403 extends ActionsSetActionsCacheStorageLimitForEnterpriseError {const ActionsSetActionsCacheStorageLimitForEnterpriseError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class ActionsSetActionsCacheStorageLimitForEnterpriseError404 extends ActionsSetActionsCacheStorageLimitForEnterpriseError {const ActionsSetActionsCacheStorageLimitForEnterpriseError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActionsSetActionsCacheStorageLimitForEnterpriseErrorUnknown extends ActionsSetActionsCacheStorageLimitForEnterpriseError {const ActionsSetActionsCacheStorageLimitForEnterpriseErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
