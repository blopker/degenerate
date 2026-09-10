// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CopilotGetCopilotOrganizationDetailsError {const CopilotGetCopilotOrganizationDetailsError();

/// Decodes the payload for its declared status and content type.
static CopilotGetCopilotOrganizationDetailsError parse(ApiResponse response) {switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return CopilotGetCopilotOrganizationDetailsError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return CopilotGetCopilotOrganizationDetailsError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CopilotGetCopilotOrganizationDetailsError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
return const CopilotGetCopilotOrganizationDetailsError422();
case 500:
final json = jsonDecode(response.body);
return CopilotGetCopilotOrganizationDetailsError500(BasicError.fromJson(json as Map<String, dynamic>));
default:
return CopilotGetCopilotOrganizationDetailsErrorUnknown(response);
}
}
}
/// Response for 401 (application/json).
final class CopilotGetCopilotOrganizationDetailsError401 extends CopilotGetCopilotOrganizationDetailsError {const CopilotGetCopilotOrganizationDetailsError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class CopilotGetCopilotOrganizationDetailsError403 extends CopilotGetCopilotOrganizationDetailsError {const CopilotGetCopilotOrganizationDetailsError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CopilotGetCopilotOrganizationDetailsError404 extends CopilotGetCopilotOrganizationDetailsError {const CopilotGetCopilotOrganizationDetailsError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422.
final class CopilotGetCopilotOrganizationDetailsError422 extends CopilotGetCopilotOrganizationDetailsError {const CopilotGetCopilotOrganizationDetailsError422();

}
/// Response for 500 (application/json).
final class CopilotGetCopilotOrganizationDetailsError500 extends CopilotGetCopilotOrganizationDetailsError {const CopilotGetCopilotOrganizationDetailsError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CopilotGetCopilotOrganizationDetailsErrorUnknown extends CopilotGetCopilotOrganizationDetailsError {const CopilotGetCopilotOrganizationDetailsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
