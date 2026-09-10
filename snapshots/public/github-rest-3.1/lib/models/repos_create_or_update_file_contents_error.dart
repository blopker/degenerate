// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'repos_create_or_update_file_contents_response409.dart';import 'repository_rule_violation_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposCreateOrUpdateFileContentsError {const ReposCreateOrUpdateFileContentsError();

/// Decodes the payload for its declared status and content type.
static ReposCreateOrUpdateFileContentsError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return  ReposCreateOrUpdateFileContentsError404(BasicError.fromJson(json as Map<String, dynamic>));case 409:
final json = jsonDecode(response.body);
return  ReposCreateOrUpdateFileContentsError409(OneOf2.parse(json, fromA: (v) => BasicError.fromJson(v as Map<String, dynamic>), fromB: (v) => RepositoryRuleViolationError.fromJson(v as Map<String, dynamic>),));case 422:
final json = jsonDecode(response.body);
return  ReposCreateOrUpdateFileContentsError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  ReposCreateOrUpdateFileContentsErrorUnknown(response); }}
}
/// Response for 404 (application/json).
final class ReposCreateOrUpdateFileContentsError404 extends ReposCreateOrUpdateFileContentsError {const ReposCreateOrUpdateFileContentsError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 409 (application/json).
final class ReposCreateOrUpdateFileContentsError409 extends ReposCreateOrUpdateFileContentsError {const ReposCreateOrUpdateFileContentsError409(this.data);

/// The decoded response payload.
final ReposCreateOrUpdateFileContentsResponse409 data;

}
/// Response for 422 (application/json).
final class ReposCreateOrUpdateFileContentsError422 extends ReposCreateOrUpdateFileContentsError {const ReposCreateOrUpdateFileContentsError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposCreateOrUpdateFileContentsErrorUnknown extends ReposCreateOrUpdateFileContentsError {const ReposCreateOrUpdateFileContentsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
