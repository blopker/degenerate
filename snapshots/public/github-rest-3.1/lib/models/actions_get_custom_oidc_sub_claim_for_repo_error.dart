// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActionsGetCustomOidcSubClaimForRepoError {const ActionsGetCustomOidcSubClaimForRepoError();

/// Decodes the payload for its declared status and content type.
static ActionsGetCustomOidcSubClaimForRepoError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return ActionsGetCustomOidcSubClaimForRepoError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return ActionsGetCustomOidcSubClaimForRepoError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return ActionsGetCustomOidcSubClaimForRepoError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 404:
final json = jsonDecode(response.body);
return ActionsGetCustomOidcSubClaimForRepoError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ActionsGetCustomOidcSubClaimForRepoErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class ActionsGetCustomOidcSubClaimForRepoError400ApplicationJson extends ActionsGetCustomOidcSubClaimForRepoError {const ActionsGetCustomOidcSubClaimForRepoError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class ActionsGetCustomOidcSubClaimForRepoError400ApplicationScimJson extends ActionsGetCustomOidcSubClaimForRepoError {const ActionsGetCustomOidcSubClaimForRepoError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 404 (application/json).
final class ActionsGetCustomOidcSubClaimForRepoError404 extends ActionsGetCustomOidcSubClaimForRepoError {const ActionsGetCustomOidcSubClaimForRepoError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActionsGetCustomOidcSubClaimForRepoErrorUnknown extends ActionsGetCustomOidcSubClaimForRepoError {const ActionsGetCustomOidcSubClaimForRepoErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
