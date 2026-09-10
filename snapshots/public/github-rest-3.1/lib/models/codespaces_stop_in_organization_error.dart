// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodespacesStopInOrganizationError {const CodespacesStopInOrganizationError();

/// Decodes the payload for its declared status and content type.
static CodespacesStopInOrganizationError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const CodespacesStopInOrganizationError304();
case 401:
final json = jsonDecode(response.body);
return CodespacesStopInOrganizationError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return CodespacesStopInOrganizationError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CodespacesStopInOrganizationError404(BasicError.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return CodespacesStopInOrganizationError500(BasicError.fromJson(json as Map<String, dynamic>));
default:
return CodespacesStopInOrganizationErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class CodespacesStopInOrganizationError304 extends CodespacesStopInOrganizationError {const CodespacesStopInOrganizationError304();

 }
/// Response for 401 (application/json).
final class CodespacesStopInOrganizationError401 extends CodespacesStopInOrganizationError {const CodespacesStopInOrganizationError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class CodespacesStopInOrganizationError403 extends CodespacesStopInOrganizationError {const CodespacesStopInOrganizationError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class CodespacesStopInOrganizationError404 extends CodespacesStopInOrganizationError {const CodespacesStopInOrganizationError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 500 (application/json).
final class CodespacesStopInOrganizationError500 extends CodespacesStopInOrganizationError {const CodespacesStopInOrganizationError500(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CodespacesStopInOrganizationErrorUnknown extends CodespacesStopInOrganizationError {const CodespacesStopInOrganizationErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
