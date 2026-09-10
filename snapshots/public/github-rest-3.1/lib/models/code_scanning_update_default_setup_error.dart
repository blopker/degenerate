// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_update_default_setup_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeScanningUpdateDefaultSetupError {const CodeScanningUpdateDefaultSetupError();

/// Decodes the payload for its declared status and content type.
static CodeScanningUpdateDefaultSetupError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return  CodeScanningUpdateDefaultSetupError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  CodeScanningUpdateDefaultSetupError404(BasicError.fromJson(json as Map<String, dynamic>));case 409:
final json = jsonDecode(response.body);
return  CodeScanningUpdateDefaultSetupError409(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  CodeScanningUpdateDefaultSetupError422(BasicError.fromJson(json as Map<String, dynamic>));case 503:
final json = jsonDecode(response.body);
return  CodeScanningUpdateDefaultSetupError503(CodeScanningUpdateDefaultSetupResponse503.fromJson(json as Map<String, dynamic>));default:
return  CodeScanningUpdateDefaultSetupErrorUnknown(response); }}
}
/// Response for 403 (application/json).
final class CodeScanningUpdateDefaultSetupError403 extends CodeScanningUpdateDefaultSetupError {const CodeScanningUpdateDefaultSetupError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodeScanningUpdateDefaultSetupError404 extends CodeScanningUpdateDefaultSetupError {const CodeScanningUpdateDefaultSetupError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 409 (application/json).
final class CodeScanningUpdateDefaultSetupError409 extends CodeScanningUpdateDefaultSetupError {const CodeScanningUpdateDefaultSetupError409(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class CodeScanningUpdateDefaultSetupError422 extends CodeScanningUpdateDefaultSetupError {const CodeScanningUpdateDefaultSetupError422(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 503 (application/json).
final class CodeScanningUpdateDefaultSetupError503 extends CodeScanningUpdateDefaultSetupError {const CodeScanningUpdateDefaultSetupError503(this.data);

/// The decoded response payload.
final CodeScanningUpdateDefaultSetupResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodeScanningUpdateDefaultSetupErrorUnknown extends CodeScanningUpdateDefaultSetupError {const CodeScanningUpdateDefaultSetupErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
