// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CopilotSetCopilotContentExclusionForOrganizationError {const CopilotSetCopilotContentExclusionForOrganizationError();

/// Decodes the payload for its declared status and content type.
static CopilotSetCopilotContentExclusionForOrganizationError parse(ApiResponse response) {switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return  CopilotSetCopilotContentExclusionForOrganizationError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  CopilotSetCopilotContentExclusionForOrganizationError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  CopilotSetCopilotContentExclusionForOrganizationError404(BasicError.fromJson(json as Map<String, dynamic>));case 413:
final json = jsonDecode(response.body);
return  CopilotSetCopilotContentExclusionForOrganizationError413(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  CopilotSetCopilotContentExclusionForOrganizationError422(ValidationErrorSimple.fromJson(json as Map<String, dynamic>));case 500:
final json = jsonDecode(response.body);
return  CopilotSetCopilotContentExclusionForOrganizationError500(BasicError.fromJson(json as Map<String, dynamic>));default:
return  CopilotSetCopilotContentExclusionForOrganizationErrorUnknown(response); }}
}
/// Response for 401 (application/json).
final class CopilotSetCopilotContentExclusionForOrganizationError401 extends CopilotSetCopilotContentExclusionForOrganizationError {const CopilotSetCopilotContentExclusionForOrganizationError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class CopilotSetCopilotContentExclusionForOrganizationError403 extends CopilotSetCopilotContentExclusionForOrganizationError {const CopilotSetCopilotContentExclusionForOrganizationError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CopilotSetCopilotContentExclusionForOrganizationError404 extends CopilotSetCopilotContentExclusionForOrganizationError {const CopilotSetCopilotContentExclusionForOrganizationError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 413 (application/json).
final class CopilotSetCopilotContentExclusionForOrganizationError413 extends CopilotSetCopilotContentExclusionForOrganizationError {const CopilotSetCopilotContentExclusionForOrganizationError413(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class CopilotSetCopilotContentExclusionForOrganizationError422 extends CopilotSetCopilotContentExclusionForOrganizationError {const CopilotSetCopilotContentExclusionForOrganizationError422(this.data);

/// The decoded response payload.
final ValidationErrorSimple data;

}
/// Response for 500 (application/json).
final class CopilotSetCopilotContentExclusionForOrganizationError500 extends CopilotSetCopilotContentExclusionForOrganizationError {const CopilotSetCopilotContentExclusionForOrganizationError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CopilotSetCopilotContentExclusionForOrganizationErrorUnknown extends CopilotSetCopilotContentExclusionForOrganizationError {const CopilotSetCopilotContentExclusionForOrganizationErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
