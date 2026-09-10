// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AppsCreateInstallationAccessTokenError {const AppsCreateInstallationAccessTokenError();

/// Decodes the payload for its declared status and content type.
static AppsCreateInstallationAccessTokenError parse(ApiResponse response) {switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return  AppsCreateInstallationAccessTokenError401(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  AppsCreateInstallationAccessTokenError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  AppsCreateInstallationAccessTokenError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  AppsCreateInstallationAccessTokenError422(ValidationError.fromJson(json as Map<String, dynamic>));default:
return  AppsCreateInstallationAccessTokenErrorUnknown(response); }}
}
/// Response for 401 (application/json).
final class AppsCreateInstallationAccessTokenError401 extends AppsCreateInstallationAccessTokenError {const AppsCreateInstallationAccessTokenError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class AppsCreateInstallationAccessTokenError403 extends AppsCreateInstallationAccessTokenError {const AppsCreateInstallationAccessTokenError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class AppsCreateInstallationAccessTokenError404 extends AppsCreateInstallationAccessTokenError {const AppsCreateInstallationAccessTokenError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class AppsCreateInstallationAccessTokenError422 extends AppsCreateInstallationAccessTokenError {const AppsCreateInstallationAccessTokenError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class AppsCreateInstallationAccessTokenErrorUnknown extends AppsCreateInstallationAccessTokenError {const AppsCreateInstallationAccessTokenErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
