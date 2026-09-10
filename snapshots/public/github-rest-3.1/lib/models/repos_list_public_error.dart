// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposListPublicError {const ReposListPublicError();

/// Decodes the payload for its declared status and content type.
static ReposListPublicError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const ReposListPublicError304();
case 422:
final json = jsonDecode(response.body);
return ReposListPublicError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return ReposListPublicErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class ReposListPublicError304 extends ReposListPublicError {const ReposListPublicError304();

 }
/// Response for 422 (application/json).
final class ReposListPublicError422 extends ReposListPublicError {const ReposListPublicError422(this.data);

/// The decoded response payload.
final ValidationError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ReposListPublicErrorUnknown extends ReposListPublicError {const ReposListPublicErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
