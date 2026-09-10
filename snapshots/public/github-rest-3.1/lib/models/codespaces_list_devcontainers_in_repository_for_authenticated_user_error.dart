// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodespacesListDevcontainersInRepositoryForAuthenticatedUserError {const CodespacesListDevcontainersInRepositoryForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static CodespacesListDevcontainersInRepositoryForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json', )) {
final json = jsonDecode(response.body);
return  CodespacesListDevcontainersInRepositoryForAuthenticatedUserError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); } else if (responseMediaTypeMatches(contentType, 'application/scim+json', )) {
final json = jsonDecode(response.body);
return  CodespacesListDevcontainersInRepositoryForAuthenticatedUserError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>)); } else {
final json = jsonDecode(response.body);
return  CodespacesListDevcontainersInRepositoryForAuthenticatedUserError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); }case 401:
final json = jsonDecode(response.body);
return  CodespacesListDevcontainersInRepositoryForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  CodespacesListDevcontainersInRepositoryForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  CodespacesListDevcontainersInRepositoryForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));case 500:
final json = jsonDecode(response.body);
return  CodespacesListDevcontainersInRepositoryForAuthenticatedUserError500(BasicError.fromJson(json as Map<String, dynamic>));default:
return  CodespacesListDevcontainersInRepositoryForAuthenticatedUserErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class CodespacesListDevcontainersInRepositoryForAuthenticatedUserError400ApplicationJson extends CodespacesListDevcontainersInRepositoryForAuthenticatedUserError {const CodespacesListDevcontainersInRepositoryForAuthenticatedUserError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class CodespacesListDevcontainersInRepositoryForAuthenticatedUserError400ApplicationScimJson extends CodespacesListDevcontainersInRepositoryForAuthenticatedUserError {const CodespacesListDevcontainersInRepositoryForAuthenticatedUserError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 401 (application/json).
final class CodespacesListDevcontainersInRepositoryForAuthenticatedUserError401 extends CodespacesListDevcontainersInRepositoryForAuthenticatedUserError {const CodespacesListDevcontainersInRepositoryForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class CodespacesListDevcontainersInRepositoryForAuthenticatedUserError403 extends CodespacesListDevcontainersInRepositoryForAuthenticatedUserError {const CodespacesListDevcontainersInRepositoryForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodespacesListDevcontainersInRepositoryForAuthenticatedUserError404 extends CodespacesListDevcontainersInRepositoryForAuthenticatedUserError {const CodespacesListDevcontainersInRepositoryForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 500 (application/json).
final class CodespacesListDevcontainersInRepositoryForAuthenticatedUserError500 extends CodespacesListDevcontainersInRepositoryForAuthenticatedUserError {const CodespacesListDevcontainersInRepositoryForAuthenticatedUserError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodespacesListDevcontainersInRepositoryForAuthenticatedUserErrorUnknown extends CodespacesListDevcontainersInRepositoryForAuthenticatedUserError {const CodespacesListDevcontainersInRepositoryForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
