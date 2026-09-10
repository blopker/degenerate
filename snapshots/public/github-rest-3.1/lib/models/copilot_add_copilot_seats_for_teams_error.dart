// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CopilotAddCopilotSeatsForTeamsError {const CopilotAddCopilotSeatsForTeamsError();

/// Decodes the payload for its declared status and content type.
static CopilotAddCopilotSeatsForTeamsError parse(ApiResponse response) { switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return CopilotAddCopilotSeatsForTeamsError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return CopilotAddCopilotSeatsForTeamsError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CopilotAddCopilotSeatsForTeamsError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
return const CopilotAddCopilotSeatsForTeamsError422();
case 500:
final json = jsonDecode(response.body);
return CopilotAddCopilotSeatsForTeamsError500(BasicError.fromJson(json as Map<String, dynamic>));
default:
return CopilotAddCopilotSeatsForTeamsErrorUnknown(response);
}
 } 
 }
/// Response for 401 (application/json).
final class CopilotAddCopilotSeatsForTeamsError401 extends CopilotAddCopilotSeatsForTeamsError {const CopilotAddCopilotSeatsForTeamsError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class CopilotAddCopilotSeatsForTeamsError403 extends CopilotAddCopilotSeatsForTeamsError {const CopilotAddCopilotSeatsForTeamsError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class CopilotAddCopilotSeatsForTeamsError404 extends CopilotAddCopilotSeatsForTeamsError {const CopilotAddCopilotSeatsForTeamsError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422.
final class CopilotAddCopilotSeatsForTeamsError422 extends CopilotAddCopilotSeatsForTeamsError {const CopilotAddCopilotSeatsForTeamsError422();

 }
/// Response for 500 (application/json).
final class CopilotAddCopilotSeatsForTeamsError500 extends CopilotAddCopilotSeatsForTeamsError {const CopilotAddCopilotSeatsForTeamsError500(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CopilotAddCopilotSeatsForTeamsErrorUnknown extends CopilotAddCopilotSeatsForTeamsError {const CopilotAddCopilotSeatsForTeamsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
