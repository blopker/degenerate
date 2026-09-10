// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class OrgsDeleteIssueTypeError {const OrgsDeleteIssueTypeError();

/// Decodes the payload for its declared status and content type.
static OrgsDeleteIssueTypeError parse(ApiResponse response) { switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return OrgsDeleteIssueTypeError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return OrgsDeleteIssueTypeError422(ValidationErrorSimple.fromJson(json as Map<String, dynamic>));
default:
return OrgsDeleteIssueTypeErrorUnknown(response);
}
 } 
 }
/// Response for 404 (application/json).
final class OrgsDeleteIssueTypeError404 extends OrgsDeleteIssueTypeError {const OrgsDeleteIssueTypeError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class OrgsDeleteIssueTypeError422 extends OrgsDeleteIssueTypeError {const OrgsDeleteIssueTypeError422(this.data);

/// The decoded response payload.
final ValidationErrorSimple data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class OrgsDeleteIssueTypeErrorUnknown extends OrgsDeleteIssueTypeError {const OrgsDeleteIssueTypeErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
