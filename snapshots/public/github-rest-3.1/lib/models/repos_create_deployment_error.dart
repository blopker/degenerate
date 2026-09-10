// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposCreateDeploymentError {const ReposCreateDeploymentError();

/// Decodes the payload for its declared status and content type.
static ReposCreateDeploymentError parse(ApiResponse response) {switch (response.statusCode) {
case 409:
return const ReposCreateDeploymentError409();
case 422:
final json = jsonDecode(response.body);
return ReposCreateDeploymentError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return ReposCreateDeploymentErrorUnknown(response);
}
}
}
/// Response for 409.
final class ReposCreateDeploymentError409 extends ReposCreateDeploymentError {const ReposCreateDeploymentError409();

}
/// Response for 422 (application/json).
final class ReposCreateDeploymentError422 extends ReposCreateDeploymentError {const ReposCreateDeploymentError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposCreateDeploymentErrorUnknown extends ReposCreateDeploymentError {const ReposCreateDeploymentErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
