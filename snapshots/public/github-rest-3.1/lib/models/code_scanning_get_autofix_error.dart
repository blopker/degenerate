// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_get_autofix_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeScanningGetAutofixError {const CodeScanningGetAutofixError();

/// Decodes the payload for its declared status and content type.
static CodeScanningGetAutofixError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return CodeScanningGetAutofixError400(BasicError.fromJson(json as Map<String, dynamic>));
case 403:
final json = jsonDecode(response.body);
return CodeScanningGetAutofixError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CodeScanningGetAutofixError404(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return CodeScanningGetAutofixError503(CodeScanningGetAutofixResponse503.fromJson(json as Map<String, dynamic>));
default:
return CodeScanningGetAutofixErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class CodeScanningGetAutofixError400 extends CodeScanningGetAutofixError {const CodeScanningGetAutofixError400(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 403 (application/json).
final class CodeScanningGetAutofixError403 extends CodeScanningGetAutofixError {const CodeScanningGetAutofixError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class CodeScanningGetAutofixError404 extends CodeScanningGetAutofixError {const CodeScanningGetAutofixError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 503 (application/json).
final class CodeScanningGetAutofixError503 extends CodeScanningGetAutofixError {const CodeScanningGetAutofixError503(this.data);

/// The decoded response payload.
final CodeScanningGetAutofixResponse503 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CodeScanningGetAutofixErrorUnknown extends CodeScanningGetAutofixError {const CodeScanningGetAutofixErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
