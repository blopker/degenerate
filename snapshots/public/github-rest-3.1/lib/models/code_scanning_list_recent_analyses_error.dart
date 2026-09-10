// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_list_recent_analyses_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeScanningListRecentAnalysesError {const CodeScanningListRecentAnalysesError();

/// Decodes the payload for its declared status and content type.
static CodeScanningListRecentAnalysesError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return  CodeScanningListRecentAnalysesError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  CodeScanningListRecentAnalysesError404(BasicError.fromJson(json as Map<String, dynamic>));case 503:
final json = jsonDecode(response.body);
return  CodeScanningListRecentAnalysesError503(CodeScanningListRecentAnalysesResponse503.fromJson(json as Map<String, dynamic>));default:
return  CodeScanningListRecentAnalysesErrorUnknown(response); }}
}
/// Response for 403 (application/json).
final class CodeScanningListRecentAnalysesError403 extends CodeScanningListRecentAnalysesError {const CodeScanningListRecentAnalysesError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodeScanningListRecentAnalysesError404 extends CodeScanningListRecentAnalysesError {const CodeScanningListRecentAnalysesError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 503 (application/json).
final class CodeScanningListRecentAnalysesError503 extends CodeScanningListRecentAnalysesError {const CodeScanningListRecentAnalysesError503(this.data);

/// The decoded response payload.
final CodeScanningListRecentAnalysesResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodeScanningListRecentAnalysesErrorUnknown extends CodeScanningListRecentAnalysesError {const CodeScanningListRecentAnalysesErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
