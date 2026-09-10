// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CopilotCancelCopilotSeatAssignmentForUsersError {const CopilotCancelCopilotSeatAssignmentForUsersError();

/// Decodes the payload for its declared status and content type.
static CopilotCancelCopilotSeatAssignmentForUsersError parse(ApiResponse response) { switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return CopilotCancelCopilotSeatAssignmentForUsersError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return CopilotCancelCopilotSeatAssignmentForUsersError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CopilotCancelCopilotSeatAssignmentForUsersError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
return const CopilotCancelCopilotSeatAssignmentForUsersError422();
case 500:
final json = jsonDecode(response.body);
return CopilotCancelCopilotSeatAssignmentForUsersError500(BasicError.fromJson(json as Map<String, dynamic>));
default:
return CopilotCancelCopilotSeatAssignmentForUsersErrorUnknown(response);
}
 } 
 }
/// Response for 401 (application/json).
final class CopilotCancelCopilotSeatAssignmentForUsersError401 extends CopilotCancelCopilotSeatAssignmentForUsersError {const CopilotCancelCopilotSeatAssignmentForUsersError401(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class CopilotCancelCopilotSeatAssignmentForUsersError403 extends CopilotCancelCopilotSeatAssignmentForUsersError {const CopilotCancelCopilotSeatAssignmentForUsersError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class CopilotCancelCopilotSeatAssignmentForUsersError404 extends CopilotCancelCopilotSeatAssignmentForUsersError {const CopilotCancelCopilotSeatAssignmentForUsersError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422.
final class CopilotCancelCopilotSeatAssignmentForUsersError422 extends CopilotCancelCopilotSeatAssignmentForUsersError {const CopilotCancelCopilotSeatAssignmentForUsersError422();

 }
/// Response for 500 (application/json).
final class CopilotCancelCopilotSeatAssignmentForUsersError500 extends CopilotCancelCopilotSeatAssignmentForUsersError {const CopilotCancelCopilotSeatAssignmentForUsersError500(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CopilotCancelCopilotSeatAssignmentForUsersErrorUnknown extends CopilotCancelCopilotSeatAssignmentForUsersError {const CopilotCancelCopilotSeatAssignmentForUsersErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
