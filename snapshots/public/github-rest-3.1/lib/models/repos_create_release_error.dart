// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposCreateReleaseError {const ReposCreateReleaseError();

/// Decodes the payload for its declared status and content type.
static ReposCreateReleaseError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return  ReposCreateReleaseError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  ReposCreateReleaseError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  ReposCreateReleaseErrorUnknown(response); }}
}
/// Response for 404 (application/json).
final class ReposCreateReleaseError404 extends ReposCreateReleaseError {const ReposCreateReleaseError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ReposCreateReleaseError422 extends ReposCreateReleaseError {const ReposCreateReleaseError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposCreateReleaseErrorUnknown extends ReposCreateReleaseError {const ReposCreateReleaseErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
