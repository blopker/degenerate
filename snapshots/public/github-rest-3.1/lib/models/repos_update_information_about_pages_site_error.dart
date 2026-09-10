// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposUpdateInformationAboutPagesSiteError {const ReposUpdateInformationAboutPagesSiteError();

/// Decodes the payload for its declared status and content type.
static ReposUpdateInformationAboutPagesSiteError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return ReposUpdateInformationAboutPagesSiteError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return ReposUpdateInformationAboutPagesSiteError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return ReposUpdateInformationAboutPagesSiteError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 409:
final json = jsonDecode(response.body);
return ReposUpdateInformationAboutPagesSiteError409(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ReposUpdateInformationAboutPagesSiteError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return ReposUpdateInformationAboutPagesSiteErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class ReposUpdateInformationAboutPagesSiteError400ApplicationJson extends ReposUpdateInformationAboutPagesSiteError {const ReposUpdateInformationAboutPagesSiteError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class ReposUpdateInformationAboutPagesSiteError400ApplicationScimJson extends ReposUpdateInformationAboutPagesSiteError {const ReposUpdateInformationAboutPagesSiteError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 409 (application/json).
final class ReposUpdateInformationAboutPagesSiteError409 extends ReposUpdateInformationAboutPagesSiteError {const ReposUpdateInformationAboutPagesSiteError409(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ReposUpdateInformationAboutPagesSiteError422 extends ReposUpdateInformationAboutPagesSiteError {const ReposUpdateInformationAboutPagesSiteError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposUpdateInformationAboutPagesSiteErrorUnknown extends ReposUpdateInformationAboutPagesSiteError {const ReposUpdateInformationAboutPagesSiteErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
