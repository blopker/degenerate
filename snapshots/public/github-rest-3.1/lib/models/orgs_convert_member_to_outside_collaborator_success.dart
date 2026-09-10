// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'orgs_convert_member_to_outside_collaborator_response.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class OrgsConvertMemberToOutsideCollaboratorSuccess {const OrgsConvertMemberToOutsideCollaboratorSuccess();

/// Decodes the payload for its declared status and content type.
static OrgsConvertMemberToOutsideCollaboratorSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 202:
final json = jsonDecode(response.body);
return  OrgsConvertMemberToOutsideCollaboratorSuccess202(OrgsConvertMemberToOutsideCollaboratorResponse.fromJson(json as Map<String, dynamic>));case 204:
return  const OrgsConvertMemberToOutsideCollaboratorSuccess204();default:
return  OrgsConvertMemberToOutsideCollaboratorSuccessUnknown(response); }}
}
/// Response for 202 (application/json).
final class OrgsConvertMemberToOutsideCollaboratorSuccess202 extends OrgsConvertMemberToOutsideCollaboratorSuccess {const OrgsConvertMemberToOutsideCollaboratorSuccess202(this.data);

/// The decoded response payload.
final OrgsConvertMemberToOutsideCollaboratorResponse data;

}
/// Response for 204.
final class OrgsConvertMemberToOutsideCollaboratorSuccess204 extends OrgsConvertMemberToOutsideCollaboratorSuccess {const OrgsConvertMemberToOutsideCollaboratorSuccess204();

}
/// An undeclared status. The complete response is retained for manual handling.
final class OrgsConvertMemberToOutsideCollaboratorSuccessUnknown extends OrgsConvertMemberToOutsideCollaboratorSuccess {const OrgsConvertMemberToOutsideCollaboratorSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
