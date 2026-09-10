// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class SecurityAdvisoriesCreateRepositoryAdvisoryError {const SecurityAdvisoriesCreateRepositoryAdvisoryError();

/// Decodes the payload for its declared status and content type.
static SecurityAdvisoriesCreateRepositoryAdvisoryError parse(ApiResponse response) { switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return SecurityAdvisoriesCreateRepositoryAdvisoryError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return SecurityAdvisoriesCreateRepositoryAdvisoryError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return SecurityAdvisoriesCreateRepositoryAdvisoryError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return SecurityAdvisoriesCreateRepositoryAdvisoryErrorUnknown(response);
}
 } 
 }
/// Response for 403 (application/json).
final class SecurityAdvisoriesCreateRepositoryAdvisoryError403 extends SecurityAdvisoriesCreateRepositoryAdvisoryError {const SecurityAdvisoriesCreateRepositoryAdvisoryError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class SecurityAdvisoriesCreateRepositoryAdvisoryError404 extends SecurityAdvisoriesCreateRepositoryAdvisoryError {const SecurityAdvisoriesCreateRepositoryAdvisoryError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class SecurityAdvisoriesCreateRepositoryAdvisoryError422 extends SecurityAdvisoriesCreateRepositoryAdvisoryError {const SecurityAdvisoriesCreateRepositoryAdvisoryError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class SecurityAdvisoriesCreateRepositoryAdvisoryErrorUnknown extends SecurityAdvisoriesCreateRepositoryAdvisoryError {const SecurityAdvisoriesCreateRepositoryAdvisoryErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
