// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'team_repository.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class TeamsCheckPermissionsForRepoInOrgSuccess {const TeamsCheckPermissionsForRepoInOrgSuccess();

/// Decodes the payload for its declared status and content type.
static TeamsCheckPermissionsForRepoInOrgSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 200:
final json = jsonDecode(response.body);
return TeamsCheckPermissionsForRepoInOrgSuccess200(TeamRepository.fromJson(json as Map<String, dynamic>));
case 204:
return const TeamsCheckPermissionsForRepoInOrgSuccess204();
default:
return TeamsCheckPermissionsForRepoInOrgSuccessUnknown(response);
}
}
}
/// Response for 200 (application/json).
final class TeamsCheckPermissionsForRepoInOrgSuccess200 extends TeamsCheckPermissionsForRepoInOrgSuccess {const TeamsCheckPermissionsForRepoInOrgSuccess200(this.data);

/// The decoded response payload.
final TeamRepository data;

}
/// Response for 204.
final class TeamsCheckPermissionsForRepoInOrgSuccess204 extends TeamsCheckPermissionsForRepoInOrgSuccess {const TeamsCheckPermissionsForRepoInOrgSuccess204();

}
/// An undeclared status. The complete response is retained for manual handling.
final class TeamsCheckPermissionsForRepoInOrgSuccessUnknown extends TeamsCheckPermissionsForRepoInOrgSuccess {const TeamsCheckPermissionsForRepoInOrgSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
