// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class SecurityAdvisoriesListGlobalAdvisoriesError {const SecurityAdvisoriesListGlobalAdvisoriesError();

/// Decodes the payload for its declared status and content type.
static SecurityAdvisoriesListGlobalAdvisoriesError parse(ApiResponse response) { switch (response.statusCode) {
case 422:
final json = jsonDecode(response.body);
return SecurityAdvisoriesListGlobalAdvisoriesError422(ValidationErrorSimple.fromJson(json as Map<String, dynamic>));
case 429:
final json = jsonDecode(response.body);
return SecurityAdvisoriesListGlobalAdvisoriesError429(BasicError.fromJson(json as Map<String, dynamic>));
default:
return SecurityAdvisoriesListGlobalAdvisoriesErrorUnknown(response);
}
 } 
 }
/// Response for 422 (application/json).
final class SecurityAdvisoriesListGlobalAdvisoriesError422 extends SecurityAdvisoriesListGlobalAdvisoriesError {const SecurityAdvisoriesListGlobalAdvisoriesError422(this.data);

/// The decoded response payload.
final ValidationErrorSimple data;

 }
/// Response for 429 (application/json).
final class SecurityAdvisoriesListGlobalAdvisoriesError429 extends SecurityAdvisoriesListGlobalAdvisoriesError {const SecurityAdvisoriesListGlobalAdvisoriesError429(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class SecurityAdvisoriesListGlobalAdvisoriesErrorUnknown extends SecurityAdvisoriesListGlobalAdvisoriesError {const SecurityAdvisoriesListGlobalAdvisoriesErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
