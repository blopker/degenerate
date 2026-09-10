// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ReposCreateForAuthenticatedUserError {const ReposCreateForAuthenticatedUserError();

/// Decodes the payload for its declared status and content type.
static ReposCreateForAuthenticatedUserError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const ReposCreateForAuthenticatedUserError304();
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return ReposCreateForAuthenticatedUserError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return ReposCreateForAuthenticatedUserError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return ReposCreateForAuthenticatedUserError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 401:
final json = jsonDecode(response.body);
return ReposCreateForAuthenticatedUserError401(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return ReposCreateForAuthenticatedUserError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return ReposCreateForAuthenticatedUserError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ReposCreateForAuthenticatedUserError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return ReposCreateForAuthenticatedUserErrorUnknown(response);
}
}
}
/// Response for 304.
final class ReposCreateForAuthenticatedUserError304 extends ReposCreateForAuthenticatedUserError {const ReposCreateForAuthenticatedUserError304();

}
/// Response for 400 (application/json).
final class ReposCreateForAuthenticatedUserError400ApplicationJson extends ReposCreateForAuthenticatedUserError {const ReposCreateForAuthenticatedUserError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class ReposCreateForAuthenticatedUserError400ApplicationScimJson extends ReposCreateForAuthenticatedUserError {const ReposCreateForAuthenticatedUserError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 401 (application/json).
final class ReposCreateForAuthenticatedUserError401 extends ReposCreateForAuthenticatedUserError {const ReposCreateForAuthenticatedUserError401(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class ReposCreateForAuthenticatedUserError403 extends ReposCreateForAuthenticatedUserError {const ReposCreateForAuthenticatedUserError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class ReposCreateForAuthenticatedUserError404 extends ReposCreateForAuthenticatedUserError {const ReposCreateForAuthenticatedUserError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ReposCreateForAuthenticatedUserError422 extends ReposCreateForAuthenticatedUserError {const ReposCreateForAuthenticatedUserError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposCreateForAuthenticatedUserErrorUnknown extends ReposCreateForAuthenticatedUserError {const ReposCreateForAuthenticatedUserErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
