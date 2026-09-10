// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposGetPagesHealthCheckError {const ReposGetPagesHealthCheckError();

/// Decodes the payload for its declared status and content type.
static ReposGetPagesHealthCheckError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
return const ReposGetPagesHealthCheckError400();
case 404:
final json = jsonDecode(response.body);
return ReposGetPagesHealthCheckError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
return const ReposGetPagesHealthCheckError422();
default:
return ReposGetPagesHealthCheckErrorUnknown(response);
}
 } 
 }
/// Response for 400.
final class ReposGetPagesHealthCheckError400 extends ReposGetPagesHealthCheckError {const ReposGetPagesHealthCheckError400();

 }
/// Response for 404 (application/json).
final class ReposGetPagesHealthCheckError404 extends ReposGetPagesHealthCheckError {const ReposGetPagesHealthCheckError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422.
final class ReposGetPagesHealthCheckError422 extends ReposGetPagesHealthCheckError {const ReposGetPagesHealthCheckError422();

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ReposGetPagesHealthCheckErrorUnknown extends ReposGetPagesHealthCheckError {const ReposGetPagesHealthCheckErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
