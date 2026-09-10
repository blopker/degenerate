// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposDeleteDeploymentError {const ReposDeleteDeploymentError();

/// Decodes the payload for its declared status and content type.
static ReposDeleteDeploymentError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return  ReposDeleteDeploymentError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  ReposDeleteDeploymentError422(ValidationErrorSimple.fromJson(json as Map<String, dynamic>));default:
return  ReposDeleteDeploymentErrorUnknown(response); }}
}
/// Response for 404 (application/json).
final class ReposDeleteDeploymentError404 extends ReposDeleteDeploymentError {const ReposDeleteDeploymentError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ReposDeleteDeploymentError422 extends ReposDeleteDeploymentError {const ReposDeleteDeploymentError422(this.data);

/// The decoded response payload.
final ValidationErrorSimple data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposDeleteDeploymentErrorUnknown extends ReposDeleteDeploymentError {const ReposDeleteDeploymentErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
