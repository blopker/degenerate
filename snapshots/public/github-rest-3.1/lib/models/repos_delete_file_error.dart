// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'repos_delete_file_response503.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposDeleteFileError {const ReposDeleteFileError();

/// Decodes the payload for its declared status and content type.
static ReposDeleteFileError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return  ReposDeleteFileError404(BasicError.fromJson(json as Map<String, dynamic>));case 409:
final json = jsonDecode(response.body);
return  ReposDeleteFileError409(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  ReposDeleteFileError422(ValidationError.fromJson(json as Map<String, dynamic>));case 503:
final json = jsonDecode(response.body);
return  ReposDeleteFileError503(ReposDeleteFileResponse503.fromJson(json as Map<String, dynamic>));default:
return  ReposDeleteFileErrorUnknown(response); }}
}
/// Response for 404 (application/json).
final class ReposDeleteFileError404 extends ReposDeleteFileError {const ReposDeleteFileError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 409 (application/json).
final class ReposDeleteFileError409 extends ReposDeleteFileError {const ReposDeleteFileError409(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ReposDeleteFileError422 extends ReposDeleteFileError {const ReposDeleteFileError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// Response for 503 (application/json).
final class ReposDeleteFileError503 extends ReposDeleteFileError {const ReposDeleteFileError503(this.data);

/// The decoded response payload.
final ReposDeleteFileResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposDeleteFileErrorUnknown extends ReposDeleteFileError {const ReposDeleteFileErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
