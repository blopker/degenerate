// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'code_scanning_analysis.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class CodeScanningGetAnalysisSuccess {const CodeScanningGetAnalysisSuccess();

/// Decodes the payload for its declared status and content type.
static CodeScanningGetAnalysisSuccess parse(ApiResponse response) { switch (response.statusCode) {
case 200:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return CodeScanningGetAnalysisSuccess200ApplicationJson(CodeScanningAnalysis.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'application/sarif+json')) {
final json = jsonDecode(response.body);
return CodeScanningGetAnalysisSuccess200ApplicationSarifJson(json as Map<String, dynamic>);
}
final json = jsonDecode(response.body);
return CodeScanningGetAnalysisSuccess200ApplicationJson(CodeScanningAnalysis.fromJson(json as Map<String, dynamic>));

default:
return CodeScanningGetAnalysisSuccessUnknown(response);
}
 } 
 }
/// Response for 200 (application/json).
final class CodeScanningGetAnalysisSuccess200ApplicationJson extends CodeScanningGetAnalysisSuccess {const CodeScanningGetAnalysisSuccess200ApplicationJson(this.data);

/// The decoded response payload.
final CodeScanningAnalysis data;

 }
/// Response for 200 (application/sarif+json).
final class CodeScanningGetAnalysisSuccess200ApplicationSarifJson extends CodeScanningGetAnalysisSuccess {const CodeScanningGetAnalysisSuccess200ApplicationSarifJson(this.data);

/// The decoded response payload.
final Map<String, dynamic> data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CodeScanningGetAnalysisSuccessUnknown extends CodeScanningGetAnalysisSuccess {const CodeScanningGetAnalysisSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
