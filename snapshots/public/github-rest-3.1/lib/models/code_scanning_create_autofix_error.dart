// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_create_autofix_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeScanningCreateAutofixError {const CodeScanningCreateAutofixError();

/// Decodes the payload for its declared status and content type.
static CodeScanningCreateAutofixError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  CodeScanningCreateAutofixError400(BasicError.fromJson(json as Map<String, dynamic>));case 403:
final json = jsonDecode(response.body);
return  CodeScanningCreateAutofixError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  CodeScanningCreateAutofixError404(BasicError.fromJson(json as Map<String, dynamic>));case 422:
return  const CodeScanningCreateAutofixError422();case 503:
final json = jsonDecode(response.body);
return  CodeScanningCreateAutofixError503(CodeScanningCreateAutofixResponse503.fromJson(json as Map<String, dynamic>));default:
return  CodeScanningCreateAutofixErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class CodeScanningCreateAutofixError400 extends CodeScanningCreateAutofixError {const CodeScanningCreateAutofixError400(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 403 (application/json).
final class CodeScanningCreateAutofixError403 extends CodeScanningCreateAutofixError {const CodeScanningCreateAutofixError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodeScanningCreateAutofixError404 extends CodeScanningCreateAutofixError {const CodeScanningCreateAutofixError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422.
final class CodeScanningCreateAutofixError422 extends CodeScanningCreateAutofixError {const CodeScanningCreateAutofixError422();

}
/// Response for 503 (application/json).
final class CodeScanningCreateAutofixError503 extends CodeScanningCreateAutofixError {const CodeScanningCreateAutofixError503(this.data);

/// The decoded response payload.
final CodeScanningCreateAutofixResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodeScanningCreateAutofixErrorUnknown extends CodeScanningCreateAutofixError {const CodeScanningCreateAutofixErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
