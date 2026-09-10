// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposUpdateBranchProtectionError {const ReposUpdateBranchProtectionError();

/// Decodes the payload for its declared status and content type.
static ReposUpdateBranchProtectionError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return  ReposUpdateBranchProtectionError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  ReposUpdateBranchProtectionError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  ReposUpdateBranchProtectionError422(ValidationErrorSimple.fromJson(json as Map<String, dynamic>));default:
return  ReposUpdateBranchProtectionErrorUnknown(response); }}
}
/// Response for 403 (application/json).
final class ReposUpdateBranchProtectionError403 extends ReposUpdateBranchProtectionError {const ReposUpdateBranchProtectionError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class ReposUpdateBranchProtectionError404 extends ReposUpdateBranchProtectionError {const ReposUpdateBranchProtectionError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ReposUpdateBranchProtectionError422 extends ReposUpdateBranchProtectionError {const ReposUpdateBranchProtectionError422(this.data);

/// The decoded response payload.
final ValidationErrorSimple data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposUpdateBranchProtectionErrorUnknown extends ReposUpdateBranchProtectionError {const ReposUpdateBranchProtectionErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
