// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposDeclineInvitationForAuthenticatedUserError {const ReposDeclineInvitationForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static ReposDeclineInvitationForAuthenticatedUserError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const ReposDeclineInvitationForAuthenticatedUserError304();
case 403:
final json = jsonDecode(response.body);
return ReposDeclineInvitationForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return ReposDeclineInvitationForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return ReposDeclineInvitationForAuthenticatedUserError409(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ReposDeclineInvitationForAuthenticatedUserErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class ReposDeclineInvitationForAuthenticatedUserError304 extends ReposDeclineInvitationForAuthenticatedUserError {const ReposDeclineInvitationForAuthenticatedUserError304();

 }
/// Response for 403 (application/json).
final class ReposDeclineInvitationForAuthenticatedUserError403 extends ReposDeclineInvitationForAuthenticatedUserError {const ReposDeclineInvitationForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class ReposDeclineInvitationForAuthenticatedUserError404 extends ReposDeclineInvitationForAuthenticatedUserError {const ReposDeclineInvitationForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 409 (application/json).
final class ReposDeclineInvitationForAuthenticatedUserError409 extends ReposDeclineInvitationForAuthenticatedUserError {const ReposDeclineInvitationForAuthenticatedUserError409(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ReposDeclineInvitationForAuthenticatedUserErrorUnknown extends ReposDeclineInvitationForAuthenticatedUserError {const ReposDeclineInvitationForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
