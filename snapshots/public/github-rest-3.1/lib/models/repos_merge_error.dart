// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposMergeError {const ReposMergeError();

/// Decodes the payload for its declared status and content type.
static ReposMergeError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return  ReposMergeError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
return  const ReposMergeError404();case 409:
return  const ReposMergeError409();case 422:
final json = jsonDecode(response.body);
return  ReposMergeError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  ReposMergeErrorUnknown(response); }}
}
/// Response for 403 (application/json).
final class ReposMergeError403 extends ReposMergeError {const ReposMergeError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404.
final class ReposMergeError404 extends ReposMergeError {const ReposMergeError404();

}
/// Response for 409.
final class ReposMergeError409 extends ReposMergeError {const ReposMergeError409();

}
/// Response for 422 (application/json).
final class ReposMergeError422 extends ReposMergeError {const ReposMergeError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposMergeErrorUnknown extends ReposMergeError {const ReposMergeErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
