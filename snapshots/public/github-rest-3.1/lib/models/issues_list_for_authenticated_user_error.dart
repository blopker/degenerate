// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class IssuesListForAuthenticatedUserError {const IssuesListForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static IssuesListForAuthenticatedUserError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const IssuesListForAuthenticatedUserError304();
case 404:
final json = jsonDecode(response.body);
return IssuesListForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return IssuesListForAuthenticatedUserErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class IssuesListForAuthenticatedUserError304 extends IssuesListForAuthenticatedUserError {const IssuesListForAuthenticatedUserError304();

 }
/// Response for 404 (application/json).
final class IssuesListForAuthenticatedUserError404 extends IssuesListForAuthenticatedUserError {const IssuesListForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class IssuesListForAuthenticatedUserErrorUnknown extends IssuesListForAuthenticatedUserError {const IssuesListForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
