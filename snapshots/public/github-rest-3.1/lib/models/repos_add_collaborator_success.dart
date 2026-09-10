// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'repository_invitation.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class ReposAddCollaboratorSuccess {const ReposAddCollaboratorSuccess();

/// Decodes the payload for its declared status and content type.
static ReposAddCollaboratorSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 201:
final json = jsonDecode(response.body);
return  ReposAddCollaboratorSuccess201(RepositoryInvitation.fromJson(json as Map<String, dynamic>));case 204:
return  const ReposAddCollaboratorSuccess204();default:
return  ReposAddCollaboratorSuccessUnknown(response); }}
}
/// Response for 201 (application/json).
final class ReposAddCollaboratorSuccess201 extends ReposAddCollaboratorSuccess {const ReposAddCollaboratorSuccess201(this.data);

/// The decoded response payload.
final RepositoryInvitation data;

}
/// Response for 204.
final class ReposAddCollaboratorSuccess204 extends ReposAddCollaboratorSuccess {const ReposAddCollaboratorSuccess204();

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposAddCollaboratorSuccessUnknown extends ReposAddCollaboratorSuccess {const ReposAddCollaboratorSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
