// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class SecurityAdvisoriesCreateForkError {const SecurityAdvisoriesCreateForkError();

/// Decodes the payload for its declared status and content type.
static SecurityAdvisoriesCreateForkError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return SecurityAdvisoriesCreateForkError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return SecurityAdvisoriesCreateForkError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return SecurityAdvisoriesCreateForkError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 403:
final json = jsonDecode(response.body);
return SecurityAdvisoriesCreateForkError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return SecurityAdvisoriesCreateForkError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return SecurityAdvisoriesCreateForkError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return SecurityAdvisoriesCreateForkErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class SecurityAdvisoriesCreateForkError400ApplicationJson extends SecurityAdvisoriesCreateForkError {const SecurityAdvisoriesCreateForkError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class SecurityAdvisoriesCreateForkError400ApplicationScimJson extends SecurityAdvisoriesCreateForkError {const SecurityAdvisoriesCreateForkError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 403 (application/json).
final class SecurityAdvisoriesCreateForkError403 extends SecurityAdvisoriesCreateForkError {const SecurityAdvisoriesCreateForkError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class SecurityAdvisoriesCreateForkError404 extends SecurityAdvisoriesCreateForkError {const SecurityAdvisoriesCreateForkError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class SecurityAdvisoriesCreateForkError422 extends SecurityAdvisoriesCreateForkError {const SecurityAdvisoriesCreateForkError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class SecurityAdvisoriesCreateForkErrorUnknown extends SecurityAdvisoriesCreateForkError {const SecurityAdvisoriesCreateForkErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
