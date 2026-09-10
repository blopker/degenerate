// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposRenameBranchError {const ReposRenameBranchError();

/// Decodes the payload for its declared status and content type.
static ReposRenameBranchError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return  ReposRenameBranchError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  ReposRenameBranchError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  ReposRenameBranchError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  ReposRenameBranchErrorUnknown(response); }}
}
/// Response for 403 (application/json).
final class ReposRenameBranchError403 extends ReposRenameBranchError {const ReposRenameBranchError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class ReposRenameBranchError404 extends ReposRenameBranchError {const ReposRenameBranchError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ReposRenameBranchError422 extends ReposRenameBranchError {const ReposRenameBranchError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposRenameBranchErrorUnknown extends ReposRenameBranchError {const ReposRenameBranchErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
