// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_update_alert_response503.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeScanningUpdateAlertError {const CodeScanningUpdateAlertError();

/// Decodes the payload for its declared status and content type.
static CodeScanningUpdateAlertError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return CodeScanningUpdateAlertError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/scim+json')) {
final json = jsonDecode(response.body);
return CodeScanningUpdateAlertError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>));
}
final json = jsonDecode(response.body);
return CodeScanningUpdateAlertError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>));

case 403:
final json = jsonDecode(response.body);
return CodeScanningUpdateAlertError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CodeScanningUpdateAlertError404(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return CodeScanningUpdateAlertError503(CodeScanningUpdateAlertResponse503.fromJson(json as Map<String, dynamic>));
default:
return CodeScanningUpdateAlertErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class CodeScanningUpdateAlertError400ApplicationJson extends CodeScanningUpdateAlertError {const CodeScanningUpdateAlertError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class CodeScanningUpdateAlertError400ApplicationScimJson extends CodeScanningUpdateAlertError {const CodeScanningUpdateAlertError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 403 (application/json).
final class CodeScanningUpdateAlertError403 extends CodeScanningUpdateAlertError {const CodeScanningUpdateAlertError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodeScanningUpdateAlertError404 extends CodeScanningUpdateAlertError {const CodeScanningUpdateAlertError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 503 (application/json).
final class CodeScanningUpdateAlertError503 extends CodeScanningUpdateAlertError {const CodeScanningUpdateAlertError503(this.data);

/// The decoded response payload.
final CodeScanningUpdateAlertResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodeScanningUpdateAlertErrorUnknown extends CodeScanningUpdateAlertError {const CodeScanningUpdateAlertErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
