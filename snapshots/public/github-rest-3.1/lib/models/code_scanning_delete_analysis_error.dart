// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_delete_analysis_response503.dart';import 'scim_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeScanningDeleteAnalysisError {const CodeScanningDeleteAnalysisError();

/// Decodes the payload for its declared status and content type.
static CodeScanningDeleteAnalysisError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json', )) {
final json = jsonDecode(response.body);
return  CodeScanningDeleteAnalysisError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); } else if (responseMediaTypeMatches(contentType, 'application/scim+json', )) {
final json = jsonDecode(response.body);
return  CodeScanningDeleteAnalysisError400ApplicationScimJson(ScimError.fromJson(json as Map<String, dynamic>)); } else {
final json = jsonDecode(response.body);
return  CodeScanningDeleteAnalysisError400ApplicationJson(BasicError.fromJson(json as Map<String, dynamic>)); }case 403:
final json = jsonDecode(response.body);
return  CodeScanningDeleteAnalysisError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  CodeScanningDeleteAnalysisError404(BasicError.fromJson(json as Map<String, dynamic>));case 503:
final json = jsonDecode(response.body);
return  CodeScanningDeleteAnalysisError503(CodeScanningDeleteAnalysisResponse503.fromJson(json as Map<String, dynamic>));default:
return  CodeScanningDeleteAnalysisErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class CodeScanningDeleteAnalysisError400ApplicationJson extends CodeScanningDeleteAnalysisError {const CodeScanningDeleteAnalysisError400ApplicationJson(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 400 (application/scim+json).
final class CodeScanningDeleteAnalysisError400ApplicationScimJson extends CodeScanningDeleteAnalysisError {const CodeScanningDeleteAnalysisError400ApplicationScimJson(this.data);

/// The decoded response payload.
final ScimError data;

}
/// Response for 403 (application/json).
final class CodeScanningDeleteAnalysisError403 extends CodeScanningDeleteAnalysisError {const CodeScanningDeleteAnalysisError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodeScanningDeleteAnalysisError404 extends CodeScanningDeleteAnalysisError {const CodeScanningDeleteAnalysisError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 503 (application/json).
final class CodeScanningDeleteAnalysisError503 extends CodeScanningDeleteAnalysisError {const CodeScanningDeleteAnalysisError503(this.data);

/// The decoded response payload.
final CodeScanningDeleteAnalysisResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodeScanningDeleteAnalysisErrorUnknown extends CodeScanningDeleteAnalysisError {const CodeScanningDeleteAnalysisErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
