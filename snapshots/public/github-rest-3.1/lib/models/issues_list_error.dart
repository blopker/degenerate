// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class IssuesListError {const IssuesListError();

/// Decodes the payload for its declared status and content type.
static IssuesListError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const IssuesListError304();
case 404:
final json = jsonDecode(response.body);
return IssuesListError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return IssuesListError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return IssuesListErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class IssuesListError304 extends IssuesListError {const IssuesListError304();

 }
/// Response for 404 (application/json).
final class IssuesListError404 extends IssuesListError {const IssuesListError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class IssuesListError422 extends IssuesListError {const IssuesListError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class IssuesListErrorUnknown extends IssuesListError {const IssuesListErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
