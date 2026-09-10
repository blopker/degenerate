// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class OrgsCreateIssueTypeError {const OrgsCreateIssueTypeError();

/// Decodes the payload for its declared status and content type.
static OrgsCreateIssueTypeError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return  OrgsCreateIssueTypeError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  OrgsCreateIssueTypeError422(ValidationErrorSimple.fromJson(json as Map<String, dynamic>));default:
return  OrgsCreateIssueTypeErrorUnknown(response); }}
}
/// Response for 404 (application/json).
final class OrgsCreateIssueTypeError404 extends OrgsCreateIssueTypeError {const OrgsCreateIssueTypeError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class OrgsCreateIssueTypeError422 extends OrgsCreateIssueTypeError {const OrgsCreateIssueTypeError422(this.data);

/// The decoded response payload.
final ValidationErrorSimple data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class OrgsCreateIssueTypeErrorUnknown extends OrgsCreateIssueTypeError {const OrgsCreateIssueTypeErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
