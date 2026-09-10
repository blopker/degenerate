// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class OrgsUpdateIssueTypeError {const OrgsUpdateIssueTypeError();

/// Decodes the payload for its declared status and content type.
static OrgsUpdateIssueTypeError parse(ApiResponse response) { switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return OrgsUpdateIssueTypeError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return OrgsUpdateIssueTypeError422(ValidationErrorSimple.fromJson(json as Map<String, dynamic>));
default:
return OrgsUpdateIssueTypeErrorUnknown(response);
}
 } 
 }
/// Response for 404 (application/json).
final class OrgsUpdateIssueTypeError404 extends OrgsUpdateIssueTypeError {const OrgsUpdateIssueTypeError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class OrgsUpdateIssueTypeError422 extends OrgsUpdateIssueTypeError {const OrgsUpdateIssueTypeError422(this.data);

/// The decoded response payload.
final ValidationErrorSimple data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class OrgsUpdateIssueTypeErrorUnknown extends OrgsUpdateIssueTypeError {const OrgsUpdateIssueTypeErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
