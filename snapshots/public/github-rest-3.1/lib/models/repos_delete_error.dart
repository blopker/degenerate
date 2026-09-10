// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'repos_delete_response403.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposDeleteError {const ReposDeleteError();

/// Decodes the payload for its declared status and content type.
static ReposDeleteError parse(ApiResponse response) {switch (response.statusCode) {
case 307:
final json = jsonDecode(response.body);
return  ReposDeleteError307(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  ReposDeleteError403(ReposDeleteResponse403.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  ReposDeleteError404(BasicError.fromJson(json as Map<String, dynamic>));case 409:
final json = jsonDecode(response.body);
return  ReposDeleteError409(BasicError.fromJson(json as Map<String, dynamic>));default:
return  ReposDeleteErrorUnknown(response); }}
}
/// Response for 307 (application/json).
final class ReposDeleteError307 extends ReposDeleteError {const ReposDeleteError307(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ReposDeleteError403 extends ReposDeleteError {const ReposDeleteError403(this.data);

/// The decoded response payload.
final ReposDeleteResponse403 data;

}
/// Response for 404 (application/json).
final class ReposDeleteError404 extends ReposDeleteError {const ReposDeleteError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 409 (application/json).
final class ReposDeleteError409 extends ReposDeleteError {const ReposDeleteError409(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposDeleteErrorUnknown extends ReposDeleteError {const ReposDeleteErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
