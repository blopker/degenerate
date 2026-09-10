// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CopilotCancelCopilotSeatAssignmentForTeamsError {const CopilotCancelCopilotSeatAssignmentForTeamsError();

/// Decodes the payload for its declared status and content type.
static CopilotCancelCopilotSeatAssignmentForTeamsError parse(ApiResponse response) { switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return CopilotCancelCopilotSeatAssignmentForTeamsError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return CopilotCancelCopilotSeatAssignmentForTeamsError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CopilotCancelCopilotSeatAssignmentForTeamsError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
return const CopilotCancelCopilotSeatAssignmentForTeamsError422();
case 500:
final json = jsonDecode(response.body);
return CopilotCancelCopilotSeatAssignmentForTeamsError500(BasicError.fromJson(json as Map<String, dynamic>));
default:
return CopilotCancelCopilotSeatAssignmentForTeamsErrorUnknown(response);
}
 } 
 }
/// Response for 401 (application/json).
final class CopilotCancelCopilotSeatAssignmentForTeamsError401 extends CopilotCancelCopilotSeatAssignmentForTeamsError {const CopilotCancelCopilotSeatAssignmentForTeamsError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class CopilotCancelCopilotSeatAssignmentForTeamsError403 extends CopilotCancelCopilotSeatAssignmentForTeamsError {const CopilotCancelCopilotSeatAssignmentForTeamsError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class CopilotCancelCopilotSeatAssignmentForTeamsError404 extends CopilotCancelCopilotSeatAssignmentForTeamsError {const CopilotCancelCopilotSeatAssignmentForTeamsError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422.
final class CopilotCancelCopilotSeatAssignmentForTeamsError422 extends CopilotCancelCopilotSeatAssignmentForTeamsError {const CopilotCancelCopilotSeatAssignmentForTeamsError422();

 }
/// Response for 500 (application/json).
final class CopilotCancelCopilotSeatAssignmentForTeamsError500 extends CopilotCancelCopilotSeatAssignmentForTeamsError {const CopilotCancelCopilotSeatAssignmentForTeamsError500(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CopilotCancelCopilotSeatAssignmentForTeamsErrorUnknown extends CopilotCancelCopilotSeatAssignmentForTeamsError {const CopilotCancelCopilotSeatAssignmentForTeamsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
