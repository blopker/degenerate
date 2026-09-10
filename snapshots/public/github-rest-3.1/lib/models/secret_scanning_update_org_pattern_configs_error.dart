// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'scim_error.dart';import 'validation_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class SecretScanningUpdateOrgPatternConfigsError {const SecretScanningUpdateOrgPatternConfigsError();

/// Decodes the payload for its declared status and content type.
static SecretScanningUpdateOrgPatternConfigsError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return SecretScanningUpdateOrgPatternConfigsError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return SecretScanningUpdateOrgPatternConfigsError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return SecretScanningUpdateOrgPatternConfigsError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 403:
final json = jsonDecode(response.body);
return SecretScanningUpdateOrgPatternConfigsError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return SecretScanningUpdateOrgPatternConfigsError404(BasicError.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return SecretScanningUpdateOrgPatternConfigsError409(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return SecretScanningUpdateOrgPatternConfigsError422(ValidationError.fromJson(json as Map<String, dynamic>));
default:
return SecretScanningUpdateOrgPatternConfigsErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class SecretScanningUpdateOrgPatternConfigsError400ApplicationJson extends SecretScanningUpdateOrgPatternConfigsError {const SecretScanningUpdateOrgPatternConfigsError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class SecretScanningUpdateOrgPatternConfigsError400ApplicationScimJson extends SecretScanningUpdateOrgPatternConfigsError {const SecretScanningUpdateOrgPatternConfigsError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 403 (application/json).
final class SecretScanningUpdateOrgPatternConfigsError403 extends SecretScanningUpdateOrgPatternConfigsError {const SecretScanningUpdateOrgPatternConfigsError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class SecretScanningUpdateOrgPatternConfigsError404 extends SecretScanningUpdateOrgPatternConfigsError {const SecretScanningUpdateOrgPatternConfigsError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 409 (application/json).
final class SecretScanningUpdateOrgPatternConfigsError409 extends SecretScanningUpdateOrgPatternConfigsError {const SecretScanningUpdateOrgPatternConfigsError409(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class SecretScanningUpdateOrgPatternConfigsError422 extends SecretScanningUpdateOrgPatternConfigsError {const SecretScanningUpdateOrgPatternConfigsError422(this.data);

/// The decoded response payload.
final ValidationError data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class SecretScanningUpdateOrgPatternConfigsErrorUnknown extends SecretScanningUpdateOrgPatternConfigsError {const SecretScanningUpdateOrgPatternConfigsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
