// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class IssuesAddBlockedByDependencyError {const IssuesAddBlockedByDependencyError();

/// Decodes the payload for its declared status and content type.
static IssuesAddBlockedByDependencyError parse(ApiResponse response) { switch (response.statusCode) {
case 301:
final json = jsonDecode(response.body);
return IssuesAddBlockedByDependencyError301(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return IssuesAddBlockedByDependencyError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return IssuesAddBlockedByDependencyError404(BasicError.fromJson(json as Map<String, dynamic>));
case 410:
final json = jsonDecode(response.body);
return IssuesAddBlockedByDependencyError410(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return IssuesAddBlockedByDependencyError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return IssuesAddBlockedByDependencyErrorUnknown(response);
}
 } 
 }
/// Response for 301 (application/json).
final class IssuesAddBlockedByDependencyError301 extends IssuesAddBlockedByDependencyError {const IssuesAddBlockedByDependencyError301(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class IssuesAddBlockedByDependencyError403 extends IssuesAddBlockedByDependencyError {const IssuesAddBlockedByDependencyError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class IssuesAddBlockedByDependencyError404 extends IssuesAddBlockedByDependencyError {const IssuesAddBlockedByDependencyError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 410 (application/json).
final class IssuesAddBlockedByDependencyError410 extends IssuesAddBlockedByDependencyError {const IssuesAddBlockedByDependencyError410(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class IssuesAddBlockedByDependencyError422 extends IssuesAddBlockedByDependencyError {const IssuesAddBlockedByDependencyError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class IssuesAddBlockedByDependencyErrorUnknown extends IssuesAddBlockedByDependencyError {const IssuesAddBlockedByDependencyErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
