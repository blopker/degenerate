// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'pulls_list_files_response503.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class PullsListFilesError {const PullsListFilesError();

/// Decodes the payload for its declared status and content type.
static PullsListFilesError parse(ApiResponse response) {switch (response.statusCode) {
case 422:
final json = jsonDecode(response.body);
return  PullsListFilesError422(ValidationError.fromJson(json as Map<String, dynamic>));case 500:
final json = jsonDecode(response.body);
return  PullsListFilesError500(BasicError.fromJson(json as Map<String, dynamic>));case 503:
final json = jsonDecode(response.body);
return  PullsListFilesError503(PullsListFilesResponse503.fromJson(json as Map<String, dynamic>));default:
return  PullsListFilesErrorUnknown(response); }}
}
/// Response for 422 (application/json).
final class PullsListFilesError422 extends PullsListFilesError {const PullsListFilesError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// Response for 500 (application/json).
final class PullsListFilesError500 extends PullsListFilesError {const PullsListFilesError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 503 (application/json).
final class PullsListFilesError503 extends PullsListFilesError {const PullsListFilesError503(this.data);

/// The decoded response payload.
final PullsListFilesResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class PullsListFilesErrorUnknown extends PullsListFilesError {const PullsListFilesErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
