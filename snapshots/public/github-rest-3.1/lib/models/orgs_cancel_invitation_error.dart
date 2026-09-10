// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class OrgsCancelInvitationError {const OrgsCancelInvitationError();

/// Decodes the payload for its declared status and content type.
static OrgsCancelInvitationError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return  OrgsCancelInvitationError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  OrgsCancelInvitationError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  OrgsCancelInvitationErrorUnknown(response); }}
}
/// Response for 404 (application/json).
final class OrgsCancelInvitationError404 extends OrgsCancelInvitationError {const OrgsCancelInvitationError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class OrgsCancelInvitationError422 extends OrgsCancelInvitationError {const OrgsCancelInvitationError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class OrgsCancelInvitationErrorUnknown extends OrgsCancelInvitationError {const OrgsCancelInvitationErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
