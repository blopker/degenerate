// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_get_analysis_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeScanningGetAnalysisError {const CodeScanningGetAnalysisError();

/// Decodes the payload for its declared status and content type.
static CodeScanningGetAnalysisError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return  CodeScanningGetAnalysisError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  CodeScanningGetAnalysisError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  CodeScanningGetAnalysisError422(BasicError.fromJson(json as Map<String, dynamic>));case 503:
final json = jsonDecode(response.body);
return  CodeScanningGetAnalysisError503(CodeScanningGetAnalysisResponse503.fromJson(json as Map<String, dynamic>));default:
return  CodeScanningGetAnalysisErrorUnknown(response); }}
}
/// Response for 403 (application/json).
final class CodeScanningGetAnalysisError403 extends CodeScanningGetAnalysisError {const CodeScanningGetAnalysisError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodeScanningGetAnalysisError404 extends CodeScanningGetAnalysisError {const CodeScanningGetAnalysisError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class CodeScanningGetAnalysisError422 extends CodeScanningGetAnalysisError {const CodeScanningGetAnalysisError422(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 503 (application/json).
final class CodeScanningGetAnalysisError503 extends CodeScanningGetAnalysisError {const CodeScanningGetAnalysisError503(this.data);

/// The decoded response payload.
final CodeScanningGetAnalysisResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodeScanningGetAnalysisErrorUnknown extends CodeScanningGetAnalysisError {const CodeScanningGetAnalysisErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
