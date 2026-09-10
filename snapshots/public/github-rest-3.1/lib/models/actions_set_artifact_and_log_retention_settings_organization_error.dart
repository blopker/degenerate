// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActionsSetArtifactAndLogRetentionSettingsOrganizationError {const ActionsSetArtifactAndLogRetentionSettingsOrganizationError();

/// Decodes the payload for its declared status and content type.
static ActionsSetArtifactAndLogRetentionSettingsOrganizationError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return  ActionsSetArtifactAndLogRetentionSettingsOrganizationError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  ActionsSetArtifactAndLogRetentionSettingsOrganizationError404(BasicError.fromJson(json as Map<String, dynamic>));case 409:
final json = jsonDecode(response.body);
return  ActionsSetArtifactAndLogRetentionSettingsOrganizationError409(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  ActionsSetArtifactAndLogRetentionSettingsOrganizationError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  ActionsSetArtifactAndLogRetentionSettingsOrganizationErrorUnknown(response); }}
}
/// Response for 403 (application/json).
final class ActionsSetArtifactAndLogRetentionSettingsOrganizationError403 extends ActionsSetArtifactAndLogRetentionSettingsOrganizationError {const ActionsSetArtifactAndLogRetentionSettingsOrganizationError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class ActionsSetArtifactAndLogRetentionSettingsOrganizationError404 extends ActionsSetArtifactAndLogRetentionSettingsOrganizationError {const ActionsSetArtifactAndLogRetentionSettingsOrganizationError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 409 (application/json).
final class ActionsSetArtifactAndLogRetentionSettingsOrganizationError409 extends ActionsSetArtifactAndLogRetentionSettingsOrganizationError {const ActionsSetArtifactAndLogRetentionSettingsOrganizationError409(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ActionsSetArtifactAndLogRetentionSettingsOrganizationError422 extends ActionsSetArtifactAndLogRetentionSettingsOrganizationError {const ActionsSetArtifactAndLogRetentionSettingsOrganizationError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActionsSetArtifactAndLogRetentionSettingsOrganizationErrorUnknown extends ActionsSetArtifactAndLogRetentionSettingsOrganizationError {const ActionsSetArtifactAndLogRetentionSettingsOrganizationErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
