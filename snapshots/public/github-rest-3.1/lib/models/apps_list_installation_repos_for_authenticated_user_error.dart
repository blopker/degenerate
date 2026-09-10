// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AppsListInstallationReposForAuthenticatedUserError {const AppsListInstallationReposForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static AppsListInstallationReposForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const AppsListInstallationReposForAuthenticatedUserError304();
case 403:
final json = jsonDecode(response.body);
return AppsListInstallationReposForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return AppsListInstallationReposForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
default:
return AppsListInstallationReposForAuthenticatedUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class AppsListInstallationReposForAuthenticatedUserError304 extends AppsListInstallationReposForAuthenticatedUserError {const AppsListInstallationReposForAuthenticatedUserError304();

}
/// Response for 403 (application/json).
final class AppsListInstallationReposForAuthenticatedUserError403 extends AppsListInstallationReposForAuthenticatedUserError {const AppsListInstallationReposForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class AppsListInstallationReposForAuthenticatedUserError404 extends AppsListInstallationReposForAuthenticatedUserError {const AppsListInstallationReposForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class AppsListInstallationReposForAuthenticatedUserErrorUnknown extends AppsListInstallationReposForAuthenticatedUserError {const AppsListInstallationReposForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
