// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_upload_sarif_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeScanningUploadSarifError {const CodeScanningUploadSarifError();

/// Decodes the payload for its declared status and content type.
static CodeScanningUploadSarifError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
return const CodeScanningUploadSarifError400();
case 403:
final json = jsonDecode(response.body);
return CodeScanningUploadSarifError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CodeScanningUploadSarifError404(BasicError.fromJson(json as Map<String, dynamic>));
case 413:
return const CodeScanningUploadSarifError413();
case 503:
final json = jsonDecode(response.body);
return CodeScanningUploadSarifError503(CodeScanningUploadSarifResponse503.fromJson(json as Map<String, dynamic>));
default:
return CodeScanningUploadSarifErrorUnknown(response);
}
 } 
 }
/// Response for 400.
final class CodeScanningUploadSarifError400 extends CodeScanningUploadSarifError {const CodeScanningUploadSarifError400();

 }
/// Response for 403 (application/json).
final class CodeScanningUploadSarifError403 extends CodeScanningUploadSarifError {const CodeScanningUploadSarifError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class CodeScanningUploadSarifError404 extends CodeScanningUploadSarifError {const CodeScanningUploadSarifError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 413.
final class CodeScanningUploadSarifError413 extends CodeScanningUploadSarifError {const CodeScanningUploadSarifError413();

 }
/// Response for 503 (application/json).
final class CodeScanningUploadSarifError503 extends CodeScanningUploadSarifError {const CodeScanningUploadSarifError503(this.data);

/// The decoded response payload.
final CodeScanningUploadSarifResponse503 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CodeScanningUploadSarifErrorUnknown extends CodeScanningUploadSarifError {const CodeScanningUploadSarifErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
