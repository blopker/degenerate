// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationError {const ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationError();

/// Decodes the payload for its declared status and content type.
static ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return  ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationErrorUnknown(response); }}
}
/// Response for 403 (application/json).
final class ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationError403 extends ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationError {const ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationError404 extends ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationError {const ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationError422 extends ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationError {const ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationErrorUnknown extends ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationError {const ActionsSetSelectedRepositoriesSelfHostedRunnersOrganizationErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
