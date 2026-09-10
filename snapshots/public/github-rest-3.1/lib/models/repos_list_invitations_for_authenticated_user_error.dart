// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposListInvitationsForAuthenticatedUserError {const ReposListInvitationsForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static ReposListInvitationsForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const ReposListInvitationsForAuthenticatedUserError304();case 401:
final json = jsonDecode(response.body);
return  ReposListInvitationsForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  ReposListInvitationsForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  ReposListInvitationsForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));default:
return  ReposListInvitationsForAuthenticatedUserErrorUnknown(response); }}
}
/// Response for 304.
final class ReposListInvitationsForAuthenticatedUserError304 extends ReposListInvitationsForAuthenticatedUserError {const ReposListInvitationsForAuthenticatedUserError304();

}
/// Response for 401 (application/json).
final class ReposListInvitationsForAuthenticatedUserError401 extends ReposListInvitationsForAuthenticatedUserError {const ReposListInvitationsForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ReposListInvitationsForAuthenticatedUserError403 extends ReposListInvitationsForAuthenticatedUserError {const ReposListInvitationsForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class ReposListInvitationsForAuthenticatedUserError404 extends ReposListInvitationsForAuthenticatedUserError {const ReposListInvitationsForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposListInvitationsForAuthenticatedUserErrorUnknown extends ReposListInvitationsForAuthenticatedUserError {const ReposListInvitationsForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
