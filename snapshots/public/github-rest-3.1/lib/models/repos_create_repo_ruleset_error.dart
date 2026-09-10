// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposCreateRepoRulesetError {const ReposCreateRepoRulesetError();

/// Decodes the payload for its declared status and content type.
static ReposCreateRepoRulesetError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return  ReposCreateRepoRulesetError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  ReposCreateRepoRulesetError422(ValidationError.fromJson(json as Map<String, dynamic>));case 500:
final json = jsonDecode(response.body);
return  ReposCreateRepoRulesetError500(BasicError.fromJson(json as Map<String, dynamic>));default:
return  ReposCreateRepoRulesetErrorUnknown(response); }}
}
/// Response for 404 (application/json).
final class ReposCreateRepoRulesetError404 extends ReposCreateRepoRulesetError {const ReposCreateRepoRulesetError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ReposCreateRepoRulesetError422 extends ReposCreateRepoRulesetError {const ReposCreateRepoRulesetError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// Response for 500 (application/json).
final class ReposCreateRepoRulesetError500 extends ReposCreateRepoRulesetError {const ReposCreateRepoRulesetError500(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposCreateRepoRulesetErrorUnknown extends ReposCreateRepoRulesetError {const ReposCreateRepoRulesetErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
