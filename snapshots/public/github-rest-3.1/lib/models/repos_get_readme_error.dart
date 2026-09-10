// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposGetReadmeError {const ReposGetReadmeError();

/// Decodes the payload for its declared status and content type.
static ReposGetReadmeError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const ReposGetReadmeError304();case 404:
final json = jsonDecode(response.body);
return  ReposGetReadmeError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  ReposGetReadmeError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  ReposGetReadmeErrorUnknown(response); }}
}
/// Response for 304.
final class ReposGetReadmeError304 extends ReposGetReadmeError {const ReposGetReadmeError304();

}
/// Response for 404 (application/json).
final class ReposGetReadmeError404 extends ReposGetReadmeError {const ReposGetReadmeError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ReposGetReadmeError422 extends ReposGetReadmeError {const ReposGetReadmeError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposGetReadmeErrorUnknown extends ReposGetReadmeError {const ReposGetReadmeErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
