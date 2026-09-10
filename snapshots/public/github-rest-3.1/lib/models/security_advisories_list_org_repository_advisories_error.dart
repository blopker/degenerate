// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class SecurityAdvisoriesListOrgRepositoryAdvisoriesError {const SecurityAdvisoriesListOrgRepositoryAdvisoriesError();

/// Decodes the payload for its declared status and content type.
static SecurityAdvisoriesListOrgRepositoryAdvisoriesError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return SecurityAdvisoriesListOrgRepositoryAdvisoriesError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return SecurityAdvisoriesListOrgRepositoryAdvisoriesError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return SecurityAdvisoriesListOrgRepositoryAdvisoriesError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 404:
final json = jsonDecode(response.body);
return SecurityAdvisoriesListOrgRepositoryAdvisoriesError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return SecurityAdvisoriesListOrgRepositoryAdvisoriesErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class SecurityAdvisoriesListOrgRepositoryAdvisoriesError400ApplicationJson extends SecurityAdvisoriesListOrgRepositoryAdvisoriesError {const SecurityAdvisoriesListOrgRepositoryAdvisoriesError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class SecurityAdvisoriesListOrgRepositoryAdvisoriesError400ApplicationScimJson extends SecurityAdvisoriesListOrgRepositoryAdvisoriesError {const SecurityAdvisoriesListOrgRepositoryAdvisoriesError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 404 (application/json).
final class SecurityAdvisoriesListOrgRepositoryAdvisoriesError404 extends SecurityAdvisoriesListOrgRepositoryAdvisoriesError {const SecurityAdvisoriesListOrgRepositoryAdvisoriesError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class SecurityAdvisoriesListOrgRepositoryAdvisoriesErrorUnknown extends SecurityAdvisoriesListOrgRepositoryAdvisoriesError {const SecurityAdvisoriesListOrgRepositoryAdvisoriesErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
