// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AppsListReposAccessibleToInstallationError {const AppsListReposAccessibleToInstallationError();

/// Decodes the payload for its declared status and content type.
static AppsListReposAccessibleToInstallationError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return  const AppsListReposAccessibleToInstallationError304();case 401:
final json = jsonDecode(response.body);
return  AppsListReposAccessibleToInstallationError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  AppsListReposAccessibleToInstallationError403(BasicError.fromJson(json as Map<String, dynamic>));default:
return  AppsListReposAccessibleToInstallationErrorUnknown(response); }}
}
/// Response for 304.
final class AppsListReposAccessibleToInstallationError304 extends AppsListReposAccessibleToInstallationError {const AppsListReposAccessibleToInstallationError304();

}
/// Response for 401 (application/json).
final class AppsListReposAccessibleToInstallationError401 extends AppsListReposAccessibleToInstallationError {const AppsListReposAccessibleToInstallationError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class AppsListReposAccessibleToInstallationError403 extends AppsListReposAccessibleToInstallationError {const AppsListReposAccessibleToInstallationError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class AppsListReposAccessibleToInstallationErrorUnknown extends AppsListReposAccessibleToInstallationError {const AppsListReposAccessibleToInstallationErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
