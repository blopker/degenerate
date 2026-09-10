// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError {const ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError();

/// Decodes the payload for its declared status and content type.
static ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError parse(ApiResponse response) { switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError404(BasicError.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError409(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationErrorUnknown(response);
}
 } 
 }
/// Response for 403 (application/json).
final class ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError403 extends ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError {const ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError404 extends ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError {const ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 409 (application/json).
final class ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError409 extends ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError {const ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError409(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError422 extends ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError {const ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationErrorUnknown extends ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationError {const ActionsEnableSelectedRepositorySelfHostedRunnersOrganizationErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
