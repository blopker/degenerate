// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AppsListInstallationRequestsForAuthenticatedAppError {const AppsListInstallationRequestsForAuthenticatedAppError();

/// Decodes the payload for its declared status and content type.
static AppsListInstallationRequestsForAuthenticatedAppError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const AppsListInstallationRequestsForAuthenticatedAppError304();case 401:
final json = jsonDecode(response.body);
return  AppsListInstallationRequestsForAuthenticatedAppError401(BasicError.fromJson(json as Map<String, dynamic>));default:
return  AppsListInstallationRequestsForAuthenticatedAppErrorUnknown(response); }}
}
/// Response for 304.
final class AppsListInstallationRequestsForAuthenticatedAppError304 extends AppsListInstallationRequestsForAuthenticatedAppError {const AppsListInstallationRequestsForAuthenticatedAppError304();

}
/// Response for 401 (application/json).
final class AppsListInstallationRequestsForAuthenticatedAppError401 extends AppsListInstallationRequestsForAuthenticatedAppError {const AppsListInstallationRequestsForAuthenticatedAppError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class AppsListInstallationRequestsForAuthenticatedAppErrorUnknown extends AppsListInstallationRequestsForAuthenticatedAppError {const AppsListInstallationRequestsForAuthenticatedAppErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
