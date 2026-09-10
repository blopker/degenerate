// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError {const ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError();

/// Decodes the payload for its declared status and content type.
static ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationErrorUnknown(response);
}
}
}
/// Response for 403 (application/json).
final class ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError403 extends ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError {const ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError404 extends ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError {const ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError422 extends ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError {const ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationErrorUnknown extends ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationError {const ActionsSetPrivateRepoForkPrWorkflowsSettingsOrganizationErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
