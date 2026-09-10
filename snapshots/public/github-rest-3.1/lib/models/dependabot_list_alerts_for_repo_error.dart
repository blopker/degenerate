// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';import 'validation_error_simple.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class DependabotListAlertsForRepoError {const DependabotListAlertsForRepoError();

/// Decodes the payload for its declared status and content type.
static DependabotListAlertsForRepoError parse(ApiResponse response) {switch (response.statusCode) {
case 304:
return const DependabotListAlertsForRepoError304();
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return DependabotListAlertsForRepoError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return DependabotListAlertsForRepoError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return DependabotListAlertsForRepoError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 403:
final json = jsonDecode(response.body);
return DependabotListAlertsForRepoError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return DependabotListAlertsForRepoError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return DependabotListAlertsForRepoError422(ValidationErrorSimple.fromJson(json as Map<String, dynamic>));
default:
return DependabotListAlertsForRepoErrorUnknown(response);
}
}
}
/// Response for 304.
final class DependabotListAlertsForRepoError304 extends DependabotListAlertsForRepoError {const DependabotListAlertsForRepoError304();

}
/// Response for 400 (application/json).
final class DependabotListAlertsForRepoError400ApplicationJson extends DependabotListAlertsForRepoError {const DependabotListAlertsForRepoError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class DependabotListAlertsForRepoError400ApplicationScimJson extends DependabotListAlertsForRepoError {const DependabotListAlertsForRepoError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 403 (application/json).
final class DependabotListAlertsForRepoError403 extends DependabotListAlertsForRepoError {const DependabotListAlertsForRepoError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class DependabotListAlertsForRepoError404 extends DependabotListAlertsForRepoError {const DependabotListAlertsForRepoError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class DependabotListAlertsForRepoError422 extends DependabotListAlertsForRepoError {const DependabotListAlertsForRepoError422(this.data);

/// The decoded response payload.
final ValidationErrorSimple data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class DependabotListAlertsForRepoErrorUnknown extends DependabotListAlertsForRepoError {const DependabotListAlertsForRepoErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
