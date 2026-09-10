// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class IssuesGetError {const IssuesGetError();

/// Decodes the payload for its declared status and content type.
static IssuesGetError parse(ApiResponse response) {switch (response.statusCode) {
case 301:
final json = jsonDecode(response.body);
return  IssuesGetError301(BasicError.fromJson(json as Map<String, dynamic>));case 304:
return  const IssuesGetError304();case 404:
final json = jsonDecode(response.body);
return  IssuesGetError404(BasicError.fromJson(json as Map<String, dynamic>));case 410:
final json = jsonDecode(response.body);
return  IssuesGetError410(BasicError.fromJson(json as Map<String, dynamic>));default:
return  IssuesGetErrorUnknown(response); }}
}
/// Response for 301 (application/json).
final class IssuesGetError301 extends IssuesGetError {const IssuesGetError301(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 304.
final class IssuesGetError304 extends IssuesGetError {const IssuesGetError304();

}
/// Response for 404 (application/json).
final class IssuesGetError404 extends IssuesGetError {const IssuesGetError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 410 (application/json).
final class IssuesGetError410 extends IssuesGetError {const IssuesGetError410(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class IssuesGetErrorUnknown extends IssuesGetError {const IssuesGetErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
