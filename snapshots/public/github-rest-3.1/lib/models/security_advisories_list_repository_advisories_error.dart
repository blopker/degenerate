// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class SecurityAdvisoriesListRepositoryAdvisoriesError {const SecurityAdvisoriesListRepositoryAdvisoriesError();

/// Decodes the payload for its declared status and content type.
static SecurityAdvisoriesListRepositoryAdvisoriesError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return SecurityAdvisoriesListRepositoryAdvisoriesError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return SecurityAdvisoriesListRepositoryAdvisoriesError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return SecurityAdvisoriesListRepositoryAdvisoriesError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 404:
final json = jsonDecode(response.body);
return SecurityAdvisoriesListRepositoryAdvisoriesError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return SecurityAdvisoriesListRepositoryAdvisoriesErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class SecurityAdvisoriesListRepositoryAdvisoriesError400ApplicationJson extends SecurityAdvisoriesListRepositoryAdvisoriesError {const SecurityAdvisoriesListRepositoryAdvisoriesError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 400 (application/scim+json).
final class SecurityAdvisoriesListRepositoryAdvisoriesError400ApplicationScimJson extends SecurityAdvisoriesListRepositoryAdvisoriesError {const SecurityAdvisoriesListRepositoryAdvisoriesError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

 }
/// Response for 404 (application/json).
final class SecurityAdvisoriesListRepositoryAdvisoriesError404 extends SecurityAdvisoriesListRepositoryAdvisoriesError {const SecurityAdvisoriesListRepositoryAdvisoriesError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class SecurityAdvisoriesListRepositoryAdvisoriesErrorUnknown extends SecurityAdvisoriesListRepositoryAdvisoriesError {const SecurityAdvisoriesListRepositoryAdvisoriesErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
