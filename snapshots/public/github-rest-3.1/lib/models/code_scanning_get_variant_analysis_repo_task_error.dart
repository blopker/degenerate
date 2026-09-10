// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_get_variant_analysis_repo_task_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeScanningGetVariantAnalysisRepoTaskError {const CodeScanningGetVariantAnalysisRepoTaskError();

/// Decodes the payload for its declared status and content type.
static CodeScanningGetVariantAnalysisRepoTaskError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return CodeScanningGetVariantAnalysisRepoTaskError404(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return CodeScanningGetVariantAnalysisRepoTaskError503(CodeScanningGetVariantAnalysisRepoTaskResponse503.fromJson(json as Map<String, dynamic>));
default:
return CodeScanningGetVariantAnalysisRepoTaskErrorUnknown(response);
}
}
}
/// Response for 404 (application/json).
final class CodeScanningGetVariantAnalysisRepoTaskError404 extends CodeScanningGetVariantAnalysisRepoTaskError {const CodeScanningGetVariantAnalysisRepoTaskError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 503 (application/json).
final class CodeScanningGetVariantAnalysisRepoTaskError503 extends CodeScanningGetVariantAnalysisRepoTaskError {const CodeScanningGetVariantAnalysisRepoTaskError503(this.data);

/// The decoded response payload.
final CodeScanningGetVariantAnalysisRepoTaskResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodeScanningGetVariantAnalysisRepoTaskErrorUnknown extends CodeScanningGetVariantAnalysisRepoTaskError {const CodeScanningGetVariantAnalysisRepoTaskErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
