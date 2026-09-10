// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class IssuesSetLabelsError {const IssuesSetLabelsError();

/// Decodes the payload for its declared status and content type.
static IssuesSetLabelsError parse(ApiResponse response) {switch (response.statusCode) {
case 301:
final json = jsonDecode(response.body);
return  IssuesSetLabelsError301(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  IssuesSetLabelsError404(BasicError.fromJson(json as Map<String, dynamic>));case 410:
final json = jsonDecode(response.body);
return  IssuesSetLabelsError410(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  IssuesSetLabelsError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  IssuesSetLabelsErrorUnknown(response); }}
}
/// Response for 301 (application/json).
final class IssuesSetLabelsError301 extends IssuesSetLabelsError {const IssuesSetLabelsError301(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class IssuesSetLabelsError404 extends IssuesSetLabelsError {const IssuesSetLabelsError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 410 (application/json).
final class IssuesSetLabelsError410 extends IssuesSetLabelsError {const IssuesSetLabelsError410(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class IssuesSetLabelsError422 extends IssuesSetLabelsError {const IssuesSetLabelsError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class IssuesSetLabelsErrorUnknown extends IssuesSetLabelsError {const IssuesSetLabelsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
