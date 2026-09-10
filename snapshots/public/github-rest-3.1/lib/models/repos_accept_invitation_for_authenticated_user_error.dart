// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposAcceptInvitationForAuthenticatedUserError {const ReposAcceptInvitationForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static ReposAcceptInvitationForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const ReposAcceptInvitationForAuthenticatedUserError304();case 403:
final json = jsonDecode(response.body);
return  ReposAcceptInvitationForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  ReposAcceptInvitationForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));case 409:
final json = jsonDecode(response.body);
return  ReposAcceptInvitationForAuthenticatedUserError409(BasicError.fromJson(json as Map<String, dynamic>));default:
return  ReposAcceptInvitationForAuthenticatedUserErrorUnknown(response); }}
}
/// Response for 304.
final class ReposAcceptInvitationForAuthenticatedUserError304 extends ReposAcceptInvitationForAuthenticatedUserError {const ReposAcceptInvitationForAuthenticatedUserError304();

}
/// Response for 403 (application/json).
final class ReposAcceptInvitationForAuthenticatedUserError403 extends ReposAcceptInvitationForAuthenticatedUserError {const ReposAcceptInvitationForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class ReposAcceptInvitationForAuthenticatedUserError404 extends ReposAcceptInvitationForAuthenticatedUserError {const ReposAcceptInvitationForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 409 (application/json).
final class ReposAcceptInvitationForAuthenticatedUserError409 extends ReposAcceptInvitationForAuthenticatedUserError {const ReposAcceptInvitationForAuthenticatedUserError409(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposAcceptInvitationForAuthenticatedUserErrorUnknown extends ReposAcceptInvitationForAuthenticatedUserError {const ReposAcceptInvitationForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
