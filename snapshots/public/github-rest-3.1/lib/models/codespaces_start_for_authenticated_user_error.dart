// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodespacesStartForAuthenticatedUserError {const CodespacesStartForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static CodespacesStartForAuthenticatedUserError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const CodespacesStartForAuthenticatedUserError304();
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return CodespacesStartForAuthenticatedUserError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return CodespacesStartForAuthenticatedUserError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return CodespacesStartForAuthenticatedUserError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 401:
final json = jsonDecode(response.body);
return CodespacesStartForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 402:
final json = jsonDecode(response.body);
return CodespacesStartForAuthenticatedUserError402(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return CodespacesStartForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CodespacesStartForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return CodespacesStartForAuthenticatedUserError409(BasicError.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return CodespacesStartForAuthenticatedUserError500(BasicError.fromJson(json as Map<String, dynamic>));
default:
return CodespacesStartForAuthenticatedUserErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class CodespacesStartForAuthenticatedUserError304 extends CodespacesStartForAuthenticatedUserError {const CodespacesStartForAuthenticatedUserError304();

 }
/// Response for 400 (application/json).
final class CodespacesStartForAuthenticatedUserError400ApplicationJson extends CodespacesStartForAuthenticatedUserError {const CodespacesStartForAuthenticatedUserError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 400 (application/scim+json).
final class CodespacesStartForAuthenticatedUserError400ApplicationScimJson extends CodespacesStartForAuthenticatedUserError {const CodespacesStartForAuthenticatedUserError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

 }
/// Response for 401 (application/json).
final class CodespacesStartForAuthenticatedUserError401 extends CodespacesStartForAuthenticatedUserError {const CodespacesStartForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 402 (application/json).
final class CodespacesStartForAuthenticatedUserError402 extends CodespacesStartForAuthenticatedUserError {const CodespacesStartForAuthenticatedUserError402(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class CodespacesStartForAuthenticatedUserError403 extends CodespacesStartForAuthenticatedUserError {const CodespacesStartForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class CodespacesStartForAuthenticatedUserError404 extends CodespacesStartForAuthenticatedUserError {const CodespacesStartForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 409 (application/json).
final class CodespacesStartForAuthenticatedUserError409 extends CodespacesStartForAuthenticatedUserError {const CodespacesStartForAuthenticatedUserError409(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 500 (application/json).
final class CodespacesStartForAuthenticatedUserError500 extends CodespacesStartForAuthenticatedUserError {const CodespacesStartForAuthenticatedUserError500(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CodespacesStartForAuthenticatedUserErrorUnknown extends CodespacesStartForAuthenticatedUserError {const CodespacesStartForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
