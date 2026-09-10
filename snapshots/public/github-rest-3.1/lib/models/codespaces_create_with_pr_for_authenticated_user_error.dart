// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'codespaces_create_with_pr_for_authenticated_user_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodespacesCreateWithPrForAuthenticatedUserError {const CodespacesCreateWithPrForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static CodespacesCreateWithPrForAuthenticatedUserError parse(ApiResponse response) { switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return CodespacesCreateWithPrForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return CodespacesCreateWithPrForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CodespacesCreateWithPrForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return CodespacesCreateWithPrForAuthenticatedUserError503(CodespacesCreateWithPrForAuthenticatedUserResponse503.fromJson(json as Map<String, dynamic>));
default:
return CodespacesCreateWithPrForAuthenticatedUserErrorUnknown(response);
}
 } 
 }
/// Response for 401 (application/json).
final class CodespacesCreateWithPrForAuthenticatedUserError401 extends CodespacesCreateWithPrForAuthenticatedUserError {const CodespacesCreateWithPrForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class CodespacesCreateWithPrForAuthenticatedUserError403 extends CodespacesCreateWithPrForAuthenticatedUserError {const CodespacesCreateWithPrForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class CodespacesCreateWithPrForAuthenticatedUserError404 extends CodespacesCreateWithPrForAuthenticatedUserError {const CodespacesCreateWithPrForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 503 (application/json).
final class CodespacesCreateWithPrForAuthenticatedUserError503 extends CodespacesCreateWithPrForAuthenticatedUserError {const CodespacesCreateWithPrForAuthenticatedUserError503(this.data);

/// The decoded response payload.
final CodespacesCreateWithPrForAuthenticatedUserResponse503 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CodespacesCreateWithPrForAuthenticatedUserErrorUnknown extends CodespacesCreateWithPrForAuthenticatedUserError {const CodespacesCreateWithPrForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
