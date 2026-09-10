// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class SecurityAdvisoriesUpdateRepositoryAdvisoryError {const SecurityAdvisoriesUpdateRepositoryAdvisoryError();

/// Decodes the payload for its declared status and content type.
static SecurityAdvisoriesUpdateRepositoryAdvisoryError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return  SecurityAdvisoriesUpdateRepositoryAdvisoryError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  SecurityAdvisoriesUpdateRepositoryAdvisoryError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  SecurityAdvisoriesUpdateRepositoryAdvisoryError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  SecurityAdvisoriesUpdateRepositoryAdvisoryErrorUnknown(response); }}
}
/// Response for 403 (application/json).
final class SecurityAdvisoriesUpdateRepositoryAdvisoryError403 extends SecurityAdvisoriesUpdateRepositoryAdvisoryError {const SecurityAdvisoriesUpdateRepositoryAdvisoryError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class SecurityAdvisoriesUpdateRepositoryAdvisoryError404 extends SecurityAdvisoriesUpdateRepositoryAdvisoryError {const SecurityAdvisoriesUpdateRepositoryAdvisoryError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class SecurityAdvisoriesUpdateRepositoryAdvisoryError422 extends SecurityAdvisoriesUpdateRepositoryAdvisoryError {const SecurityAdvisoriesUpdateRepositoryAdvisoryError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class SecurityAdvisoriesUpdateRepositoryAdvisoryErrorUnknown extends SecurityAdvisoriesUpdateRepositoryAdvisoryError {const SecurityAdvisoriesUpdateRepositoryAdvisoryErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
