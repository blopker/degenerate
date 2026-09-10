// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_create_variant_analysis_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeScanningCreateVariantAnalysisError {const CodeScanningCreateVariantAnalysisError();

/// Decodes the payload for its declared status and content type.
static CodeScanningCreateVariantAnalysisError parse(ApiResponse response) { switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return CodeScanningCreateVariantAnalysisError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return CodeScanningCreateVariantAnalysisError422(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return CodeScanningCreateVariantAnalysisError503(CodeScanningCreateVariantAnalysisResponse503.fromJson(json as Map<String, dynamic>));
default:
return CodeScanningCreateVariantAnalysisErrorUnknown(response);
}
 } 
 }
/// Response for 404 (application/json).
final class CodeScanningCreateVariantAnalysisError404 extends CodeScanningCreateVariantAnalysisError {const CodeScanningCreateVariantAnalysisError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class CodeScanningCreateVariantAnalysisError422 extends CodeScanningCreateVariantAnalysisError {const CodeScanningCreateVariantAnalysisError422(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 503 (application/json).
final class CodeScanningCreateVariantAnalysisError503 extends CodeScanningCreateVariantAnalysisError {const CodeScanningCreateVariantAnalysisError503(this.data);

/// The decoded response payload.
final CodeScanningCreateVariantAnalysisResponse503 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CodeScanningCreateVariantAnalysisErrorUnknown extends CodeScanningCreateVariantAnalysisError {const CodeScanningCreateVariantAnalysisErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
