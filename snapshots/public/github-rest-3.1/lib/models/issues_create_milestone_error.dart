// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class IssuesCreateMilestoneError {const IssuesCreateMilestoneError();

/// Decodes the payload for its declared status and content type.
static IssuesCreateMilestoneError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return  IssuesCreateMilestoneError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  IssuesCreateMilestoneError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  IssuesCreateMilestoneErrorUnknown(response); }}
}
/// Response for 404 (application/json).
final class IssuesCreateMilestoneError404 extends IssuesCreateMilestoneError {const IssuesCreateMilestoneError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class IssuesCreateMilestoneError422 extends IssuesCreateMilestoneError {const IssuesCreateMilestoneError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class IssuesCreateMilestoneErrorUnknown extends IssuesCreateMilestoneError {const IssuesCreateMilestoneErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
