// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_get_variant_analysis_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeScanningGetVariantAnalysisError {const CodeScanningGetVariantAnalysisError();

/// Decodes the payload for its declared status and content type.
static CodeScanningGetVariantAnalysisError parse(ApiResponse response) { switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return CodeScanningGetVariantAnalysisError404(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return CodeScanningGetVariantAnalysisError503(CodeScanningGetVariantAnalysisResponse503.fromJson(json as Map<String, dynamic>));
default:
return CodeScanningGetVariantAnalysisErrorUnknown(response);
}
 } 
 }
/// Response for 404 (application/json).
final class CodeScanningGetVariantAnalysisError404 extends CodeScanningGetVariantAnalysisError {const CodeScanningGetVariantAnalysisError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 503 (application/json).
final class CodeScanningGetVariantAnalysisError503 extends CodeScanningGetVariantAnalysisError {const CodeScanningGetVariantAnalysisError503(this.data);

/// The decoded response payload.
final CodeScanningGetVariantAnalysisResponse503 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CodeScanningGetVariantAnalysisErrorUnknown extends CodeScanningGetVariantAnalysisError {const CodeScanningGetVariantAnalysisErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
