// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposUpdateError {const ReposUpdateError();

/// Decodes the payload for its declared status and content type.
static ReposUpdateError parse(ApiResponse response) {switch (response.statusCode) {
case 307:
final json = jsonDecode(response.body);
return  ReposUpdateError307(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  ReposUpdateError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  ReposUpdateError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  ReposUpdateError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  ReposUpdateErrorUnknown(response); }}
}
/// Response for 307 (application/json).
final class ReposUpdateError307 extends ReposUpdateError {const ReposUpdateError307(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ReposUpdateError403 extends ReposUpdateError {const ReposUpdateError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class ReposUpdateError404 extends ReposUpdateError {const ReposUpdateError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ReposUpdateError422 extends ReposUpdateError {const ReposUpdateError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposUpdateErrorUnknown extends ReposUpdateError {const ReposUpdateErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
