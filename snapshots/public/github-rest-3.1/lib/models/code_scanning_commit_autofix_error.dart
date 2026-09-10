// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_commit_autofix_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeScanningCommitAutofixError {const CodeScanningCommitAutofixError();

/// Decodes the payload for its declared status and content type.
static CodeScanningCommitAutofixError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  CodeScanningCommitAutofixError400(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  CodeScanningCommitAutofixError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  CodeScanningCommitAutofixError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
return  const CodeScanningCommitAutofixError422();case 503:
final json = jsonDecode(response.body);
return  CodeScanningCommitAutofixError503(CodeScanningCommitAutofixResponse503.fromJson(json as Map<String, dynamic>));default:
return  CodeScanningCommitAutofixErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class CodeScanningCommitAutofixError400 extends CodeScanningCommitAutofixError {const CodeScanningCommitAutofixError400(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class CodeScanningCommitAutofixError403 extends CodeScanningCommitAutofixError {const CodeScanningCommitAutofixError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodeScanningCommitAutofixError404 extends CodeScanningCommitAutofixError {const CodeScanningCommitAutofixError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422.
final class CodeScanningCommitAutofixError422 extends CodeScanningCommitAutofixError {const CodeScanningCommitAutofixError422();

}
/// Response for 503 (application/json).
final class CodeScanningCommitAutofixError503 extends CodeScanningCommitAutofixError {const CodeScanningCommitAutofixError503(this.data);

/// The decoded response payload.
final CodeScanningCommitAutofixResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodeScanningCommitAutofixErrorUnknown extends CodeScanningCommitAutofixError {const CodeScanningCommitAutofixErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
