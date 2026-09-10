// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposGetReadmeInDirectoryError {const ReposGetReadmeInDirectoryError();

/// Decodes the payload for its declared status and content type.
static ReposGetReadmeInDirectoryError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return  ReposGetReadmeInDirectoryError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  ReposGetReadmeInDirectoryError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  ReposGetReadmeInDirectoryErrorUnknown(response); }}
}
/// Response for 404 (application/json).
final class ReposGetReadmeInDirectoryError404 extends ReposGetReadmeInDirectoryError {const ReposGetReadmeInDirectoryError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ReposGetReadmeInDirectoryError422 extends ReposGetReadmeInDirectoryError {const ReposGetReadmeInDirectoryError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposGetReadmeInDirectoryErrorUnknown extends ReposGetReadmeInDirectoryError {const ReposGetReadmeInDirectoryErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
