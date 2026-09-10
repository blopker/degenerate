// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CredentialsRevokeError {const CredentialsRevokeError();

/// Decodes the payload for its declared status and content type.
static CredentialsRevokeError parse(ApiResponse response) {switch (response.statusCode) {
case 422:
final json = jsonDecode(response.body);
return CredentialsRevokeError422(ValidationErrorSimple.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return CredentialsRevokeError500(BasicError.fromJson(json as Map<String, dynamic>));
default:
return CredentialsRevokeErrorUnknown(response);
}
}
}
/// Response for 422 (application/json).
final class CredentialsRevokeError422 extends CredentialsRevokeError {const CredentialsRevokeError422(this.data);

/// The decoded response payload.
final ValidationErrorSimple data;

}
/// Response for 500 (application/json).
final class CredentialsRevokeError500 extends CredentialsRevokeError {const CredentialsRevokeError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CredentialsRevokeErrorUnknown extends CredentialsRevokeError {const CredentialsRevokeErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
