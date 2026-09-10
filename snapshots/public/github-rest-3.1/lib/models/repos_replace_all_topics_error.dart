// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposReplaceAllTopicsError {const ReposReplaceAllTopicsError();

/// Decodes the payload for its declared status and content type.
static ReposReplaceAllTopicsError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return ReposReplaceAllTopicsError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ReposReplaceAllTopicsError422(ValidationErrorSimple.fromJson(json as Map<String, dynamic>));
default:
return ReposReplaceAllTopicsErrorUnknown(response);
}
}
}
/// Response for 404 (application/json).
final class ReposReplaceAllTopicsError404 extends ReposReplaceAllTopicsError {const ReposReplaceAllTopicsError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ReposReplaceAllTopicsError422 extends ReposReplaceAllTopicsError {const ReposReplaceAllTopicsError422(this.data);

/// The decoded response payload.
final ValidationErrorSimple data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposReplaceAllTopicsErrorUnknown extends ReposReplaceAllTopicsError {const ReposReplaceAllTopicsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
