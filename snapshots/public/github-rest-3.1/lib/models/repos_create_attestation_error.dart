// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposCreateAttestationError {const ReposCreateAttestationError();

/// Decodes the payload for its declared status and content type.
static ReposCreateAttestationError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return  ReposCreateAttestationError403(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  ReposCreateAttestationError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  ReposCreateAttestationErrorUnknown(response); }}
}
/// Response for 403 (application/json).
final class ReposCreateAttestationError403 extends ReposCreateAttestationError {const ReposCreateAttestationError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ReposCreateAttestationError422 extends ReposCreateAttestationError {const ReposCreateAttestationError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposCreateAttestationErrorUnknown extends ReposCreateAttestationError {const ReposCreateAttestationErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
