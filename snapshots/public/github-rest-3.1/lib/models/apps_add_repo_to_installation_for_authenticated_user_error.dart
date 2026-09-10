// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AppsAddRepoToInstallationForAuthenticatedUserError {const AppsAddRepoToInstallationForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static AppsAddRepoToInstallationForAuthenticatedUserError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const AppsAddRepoToInstallationForAuthenticatedUserError304();
case 403:
final json = jsonDecode(response.body);
return AppsAddRepoToInstallationForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return AppsAddRepoToInstallationForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return AppsAddRepoToInstallationForAuthenticatedUserErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class AppsAddRepoToInstallationForAuthenticatedUserError304 extends AppsAddRepoToInstallationForAuthenticatedUserError {const AppsAddRepoToInstallationForAuthenticatedUserError304();

 }
/// Response for 403 (application/json).
final class AppsAddRepoToInstallationForAuthenticatedUserError403 extends AppsAddRepoToInstallationForAuthenticatedUserError {const AppsAddRepoToInstallationForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class AppsAddRepoToInstallationForAuthenticatedUserError404 extends AppsAddRepoToInstallationForAuthenticatedUserError {const AppsAddRepoToInstallationForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class AppsAddRepoToInstallationForAuthenticatedUserErrorUnknown extends AppsAddRepoToInstallationForAuthenticatedUserError {const AppsAddRepoToInstallationForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
