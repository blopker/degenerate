// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class IssuesAddLabelsError {const IssuesAddLabelsError();

/// Decodes the payload for its declared status and content type.
static IssuesAddLabelsError parse(ApiResponse response) { switch (response.statusCode) {
case 301:
final json = jsonDecode(response.body);
return IssuesAddLabelsError301(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return IssuesAddLabelsError404(BasicError.fromJson(json as Map<String, dynamic>));
case 410:
final json = jsonDecode(response.body);
return IssuesAddLabelsError410(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return IssuesAddLabelsError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return IssuesAddLabelsErrorUnknown(response);
}
 } 
 }
/// Response for 301 (application/json).
final class IssuesAddLabelsError301 extends IssuesAddLabelsError {const IssuesAddLabelsError301(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class IssuesAddLabelsError404 extends IssuesAddLabelsError {const IssuesAddLabelsError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 410 (application/json).
final class IssuesAddLabelsError410 extends IssuesAddLabelsError {const IssuesAddLabelsError410(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class IssuesAddLabelsError422 extends IssuesAddLabelsError {const IssuesAddLabelsError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class IssuesAddLabelsErrorUnknown extends IssuesAddLabelsError {const IssuesAddLabelsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
