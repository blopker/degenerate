// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodespacesDeleteForAuthenticatedUserError {const CodespacesDeleteForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static CodespacesDeleteForAuthenticatedUserError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const CodespacesDeleteForAuthenticatedUserError304();
case 401:
final json = jsonDecode(response.body);
return CodespacesDeleteForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return CodespacesDeleteForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CodespacesDeleteForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return CodespacesDeleteForAuthenticatedUserError500(BasicError.fromJson(json as Map<String, dynamic>));
default:
return CodespacesDeleteForAuthenticatedUserErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class CodespacesDeleteForAuthenticatedUserError304 extends CodespacesDeleteForAuthenticatedUserError {const CodespacesDeleteForAuthenticatedUserError304();

 }
/// Response for 401 (application/json).
final class CodespacesDeleteForAuthenticatedUserError401 extends CodespacesDeleteForAuthenticatedUserError {const CodespacesDeleteForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class CodespacesDeleteForAuthenticatedUserError403 extends CodespacesDeleteForAuthenticatedUserError {const CodespacesDeleteForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class CodespacesDeleteForAuthenticatedUserError404 extends CodespacesDeleteForAuthenticatedUserError {const CodespacesDeleteForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 500 (application/json).
final class CodespacesDeleteForAuthenticatedUserError500 extends CodespacesDeleteForAuthenticatedUserError {const CodespacesDeleteForAuthenticatedUserError500(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CodespacesDeleteForAuthenticatedUserErrorUnknown extends CodespacesDeleteForAuthenticatedUserError {const CodespacesDeleteForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
