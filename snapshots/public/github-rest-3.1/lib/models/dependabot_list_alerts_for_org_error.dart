// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';import 'validation_error_simple.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class DependabotListAlertsForOrgError {const DependabotListAlertsForOrgError();

/// Decodes the payload for its declared status and content type.
static DependabotListAlertsForOrgError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const DependabotListAlertsForOrgError304();
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return DependabotListAlertsForOrgError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return DependabotListAlertsForOrgError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return DependabotListAlertsForOrgError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 403:
final json = jsonDecode(response.body);
return DependabotListAlertsForOrgError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return DependabotListAlertsForOrgError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return DependabotListAlertsForOrgError422(ValidationErrorSimple.fromJson(json as Map<String, dynamic>));
default:
return DependabotListAlertsForOrgErrorUnknown(response);
}
}
}
/// Response for 304.
final class DependabotListAlertsForOrgError304 extends DependabotListAlertsForOrgError {const DependabotListAlertsForOrgError304();

}
/// Response for 400 (application/json).
final class DependabotListAlertsForOrgError400ApplicationJson extends DependabotListAlertsForOrgError {const DependabotListAlertsForOrgError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class DependabotListAlertsForOrgError400ApplicationScimJson extends DependabotListAlertsForOrgError {const DependabotListAlertsForOrgError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 403 (application/json).
final class DependabotListAlertsForOrgError403 extends DependabotListAlertsForOrgError {const DependabotListAlertsForOrgError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class DependabotListAlertsForOrgError404 extends DependabotListAlertsForOrgError {const DependabotListAlertsForOrgError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class DependabotListAlertsForOrgError422 extends DependabotListAlertsForOrgError {const DependabotListAlertsForOrgError422(this.data);

/// The decoded response payload.
final ValidationErrorSimple data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class DependabotListAlertsForOrgErrorUnknown extends DependabotListAlertsForOrgError {const DependabotListAlertsForOrgErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
