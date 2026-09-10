// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError {const ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError();

/// Decodes the payload for its declared status and content type.
static ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError404(BasicError.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError409(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationErrorUnknown(response);
}
}
}
/// Response for 403 (application/json).
final class ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError403 extends ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError {const ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError404 extends ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError {const ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 409 (application/json).
final class ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError409 extends ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError {const ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError409(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError422 extends ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError {const ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationErrorUnknown extends ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationError {const ActionsDisableSelectedRepositorySelfHostedRunnersOrganizationErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
