// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class OrgsConvertMemberToOutsideCollaboratorError {const OrgsConvertMemberToOutsideCollaboratorError();

/// Decodes the payload for its declared status and content type.
static OrgsConvertMemberToOutsideCollaboratorError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
return const OrgsConvertMemberToOutsideCollaboratorError403();
case 404:
final json = jsonDecode(response.body);
return OrgsConvertMemberToOutsideCollaboratorError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return OrgsConvertMemberToOutsideCollaboratorErrorUnknown(response);
}
}
}
/// Response for 403.
final class OrgsConvertMemberToOutsideCollaboratorError403 extends OrgsConvertMemberToOutsideCollaboratorError {const OrgsConvertMemberToOutsideCollaboratorError403();

}
/// Response for 404 (application/json).
final class OrgsConvertMemberToOutsideCollaboratorError404 extends OrgsConvertMemberToOutsideCollaboratorError {const OrgsConvertMemberToOutsideCollaboratorError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class OrgsConvertMemberToOutsideCollaboratorErrorUnknown extends OrgsConvertMemberToOutsideCollaboratorError {const OrgsConvertMemberToOutsideCollaboratorErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
