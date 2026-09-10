// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AppsRemoveRepoFromInstallationForAuthenticatedUserError {const AppsRemoveRepoFromInstallationForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static AppsRemoveRepoFromInstallationForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const AppsRemoveRepoFromInstallationForAuthenticatedUserError304();
case 403:
final json = jsonDecode(response.body);
return AppsRemoveRepoFromInstallationForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return AppsRemoveRepoFromInstallationForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
return const AppsRemoveRepoFromInstallationForAuthenticatedUserError422();
default:
return AppsRemoveRepoFromInstallationForAuthenticatedUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class AppsRemoveRepoFromInstallationForAuthenticatedUserError304 extends AppsRemoveRepoFromInstallationForAuthenticatedUserError {const AppsRemoveRepoFromInstallationForAuthenticatedUserError304();

}
/// Response for 403 (application/json).
final class AppsRemoveRepoFromInstallationForAuthenticatedUserError403 extends AppsRemoveRepoFromInstallationForAuthenticatedUserError {const AppsRemoveRepoFromInstallationForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class AppsRemoveRepoFromInstallationForAuthenticatedUserError404 extends AppsRemoveRepoFromInstallationForAuthenticatedUserError {const AppsRemoveRepoFromInstallationForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422.
final class AppsRemoveRepoFromInstallationForAuthenticatedUserError422 extends AppsRemoveRepoFromInstallationForAuthenticatedUserError {const AppsRemoveRepoFromInstallationForAuthenticatedUserError422();

}
/// An undeclared status. The complete response is retained for manual handling.
final class AppsRemoveRepoFromInstallationForAuthenticatedUserErrorUnknown extends AppsRemoveRepoFromInstallationForAuthenticatedUserError {const AppsRemoveRepoFromInstallationForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
