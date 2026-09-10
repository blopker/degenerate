// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActionsSetSelfHostedRunnersPermissionsOrganizationError {const ActionsSetSelfHostedRunnersPermissionsOrganizationError();

/// Decodes the payload for its declared status and content type.
static ActionsSetSelfHostedRunnersPermissionsOrganizationError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return ActionsSetSelfHostedRunnersPermissionsOrganizationError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return ActionsSetSelfHostedRunnersPermissionsOrganizationError404(BasicError.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return ActionsSetSelfHostedRunnersPermissionsOrganizationError409(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ActionsSetSelfHostedRunnersPermissionsOrganizationError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return ActionsSetSelfHostedRunnersPermissionsOrganizationErrorUnknown(response);
}
}
}
/// Response for 403 (application/json).
final class ActionsSetSelfHostedRunnersPermissionsOrganizationError403 extends ActionsSetSelfHostedRunnersPermissionsOrganizationError {const ActionsSetSelfHostedRunnersPermissionsOrganizationError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class ActionsSetSelfHostedRunnersPermissionsOrganizationError404 extends ActionsSetSelfHostedRunnersPermissionsOrganizationError {const ActionsSetSelfHostedRunnersPermissionsOrganizationError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 409 (application/json).
final class ActionsSetSelfHostedRunnersPermissionsOrganizationError409 extends ActionsSetSelfHostedRunnersPermissionsOrganizationError {const ActionsSetSelfHostedRunnersPermissionsOrganizationError409(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ActionsSetSelfHostedRunnersPermissionsOrganizationError422 extends ActionsSetSelfHostedRunnersPermissionsOrganizationError {const ActionsSetSelfHostedRunnersPermissionsOrganizationError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActionsSetSelfHostedRunnersPermissionsOrganizationErrorUnknown extends ActionsSetSelfHostedRunnersPermissionsOrganizationError {const ActionsSetSelfHostedRunnersPermissionsOrganizationErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
