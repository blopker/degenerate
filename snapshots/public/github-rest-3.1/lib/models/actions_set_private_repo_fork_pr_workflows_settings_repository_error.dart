// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError {const ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError();

/// Decodes the payload for its declared status and content type.
static ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryErrorUnknown(response);
}
}
}
/// Response for 404 (application/json).
final class ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError404 extends ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError {const ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError422 extends ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError {const ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryErrorUnknown extends ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryError {const ActionsSetPrivateRepoForkPrWorkflowsSettingsRepositoryErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
