// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';import 'validation_error_simple.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActionsSetCustomOidcSubClaimForRepoError {const ActionsSetCustomOidcSubClaimForRepoError();

/// Decodes the payload for its declared status and content type.
static ActionsSetCustomOidcSubClaimForRepoError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return ActionsSetCustomOidcSubClaimForRepoError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return ActionsSetCustomOidcSubClaimForRepoError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return ActionsSetCustomOidcSubClaimForRepoError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 404:
final json = jsonDecode(response.body);
return ActionsSetCustomOidcSubClaimForRepoError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ActionsSetCustomOidcSubClaimForRepoError422(ValidationErrorSimple.fromJson(json as Map<String, dynamic>));
default:
return ActionsSetCustomOidcSubClaimForRepoErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class ActionsSetCustomOidcSubClaimForRepoError400ApplicationJson extends ActionsSetCustomOidcSubClaimForRepoError {const ActionsSetCustomOidcSubClaimForRepoError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class ActionsSetCustomOidcSubClaimForRepoError400ApplicationScimJson extends ActionsSetCustomOidcSubClaimForRepoError {const ActionsSetCustomOidcSubClaimForRepoError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 404 (application/json).
final class ActionsSetCustomOidcSubClaimForRepoError404 extends ActionsSetCustomOidcSubClaimForRepoError {const ActionsSetCustomOidcSubClaimForRepoError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ActionsSetCustomOidcSubClaimForRepoError422 extends ActionsSetCustomOidcSubClaimForRepoError {const ActionsSetCustomOidcSubClaimForRepoError422(this.data);

/// The decoded response payload.
final ValidationErrorSimple data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActionsSetCustomOidcSubClaimForRepoErrorUnknown extends ActionsSetCustomOidcSubClaimForRepoError {const ActionsSetCustomOidcSubClaimForRepoErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
