// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_get_default_setup_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeScanningGetDefaultSetupError {const CodeScanningGetDefaultSetupError();

/// Decodes the payload for its declared status and content type.
static CodeScanningGetDefaultSetupError parse(ApiResponse response) { switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return CodeScanningGetDefaultSetupError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CodeScanningGetDefaultSetupError404(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return CodeScanningGetDefaultSetupError503(CodeScanningGetDefaultSetupResponse503.fromJson(json as Map<String, dynamic>));
default:
return CodeScanningGetDefaultSetupErrorUnknown(response);
}
 } 
 }
/// Response for 403 (application/json).
final class CodeScanningGetDefaultSetupError403 extends CodeScanningGetDefaultSetupError {const CodeScanningGetDefaultSetupError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class CodeScanningGetDefaultSetupError404 extends CodeScanningGetDefaultSetupError {const CodeScanningGetDefaultSetupError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 503 (application/json).
final class CodeScanningGetDefaultSetupError503 extends CodeScanningGetDefaultSetupError {const CodeScanningGetDefaultSetupError503(this.data);

/// The decoded response payload.
final CodeScanningGetDefaultSetupResponse503 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CodeScanningGetDefaultSetupErrorUnknown extends CodeScanningGetDefaultSetupError {const CodeScanningGetDefaultSetupErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
