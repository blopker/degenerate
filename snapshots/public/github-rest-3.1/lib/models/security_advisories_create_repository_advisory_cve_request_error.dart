// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError {const SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError();

/// Decodes the payload for its declared status and content type.
static SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json', )) {
final json = jsonDecode(response.body);
return  SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); } else if (responseMediaTypeMatches(contentType, 'application/scim+json', )) {
final json = jsonDecode(response.body);
return  SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>)); } else {
final json = jsonDecode(response.body);
return  SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); }case 403:
final json = jsonDecode(response.body);
return  SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError400ApplicationJson extends SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError {const SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError400ApplicationScimJson extends SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError {const SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 403 (application/json).
final class SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError403 extends SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError {const SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError404 extends SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError {const SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError422 extends SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError {const SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestErrorUnknown extends SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestError {const SecurityAdvisoriesCreateRepositoryAdvisoryCveRequestErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
