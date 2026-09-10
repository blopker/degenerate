// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CopilotGetCopilotSeatDetailsForUserError {const CopilotGetCopilotSeatDetailsForUserError();

/// Decodes the payload for its declared status and content type.
static CopilotGetCopilotSeatDetailsForUserError parse(ApiResponse response) { switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return CopilotGetCopilotSeatDetailsForUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return CopilotGetCopilotSeatDetailsForUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CopilotGetCopilotSeatDetailsForUserError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
return const CopilotGetCopilotSeatDetailsForUserError422();
case 500:
final json = jsonDecode(response.body);
return CopilotGetCopilotSeatDetailsForUserError500(BasicError.fromJson(json as Map<String, dynamic>));
default:
return CopilotGetCopilotSeatDetailsForUserErrorUnknown(response);
}
 } 
 }
/// Response for 401 (application/json).
final class CopilotGetCopilotSeatDetailsForUserError401 extends CopilotGetCopilotSeatDetailsForUserError {const CopilotGetCopilotSeatDetailsForUserError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class CopilotGetCopilotSeatDetailsForUserError403 extends CopilotGetCopilotSeatDetailsForUserError {const CopilotGetCopilotSeatDetailsForUserError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class CopilotGetCopilotSeatDetailsForUserError404 extends CopilotGetCopilotSeatDetailsForUserError {const CopilotGetCopilotSeatDetailsForUserError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422.
final class CopilotGetCopilotSeatDetailsForUserError422 extends CopilotGetCopilotSeatDetailsForUserError {const CopilotGetCopilotSeatDetailsForUserError422();

 }
/// Response for 500 (application/json).
final class CopilotGetCopilotSeatDetailsForUserError500 extends CopilotGetCopilotSeatDetailsForUserError {const CopilotGetCopilotSeatDetailsForUserError500(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CopilotGetCopilotSeatDetailsForUserErrorUnknown extends CopilotGetCopilotSeatDetailsForUserError {const CopilotGetCopilotSeatDetailsForUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
