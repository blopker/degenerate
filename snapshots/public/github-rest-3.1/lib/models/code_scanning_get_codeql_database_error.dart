// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_get_codeql_database_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeScanningGetCodeqlDatabaseError {const CodeScanningGetCodeqlDatabaseError();

/// Decodes the payload for its declared status and content type.
static CodeScanningGetCodeqlDatabaseError parse(ApiResponse response) {switch (response.statusCode) {
case 302:
return  const CodeScanningGetCodeqlDatabaseError302();case 403:
final json = jsonDecode(response.body);
return  CodeScanningGetCodeqlDatabaseError403(BasicError.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  CodeScanningGetCodeqlDatabaseError404(BasicError.fromJson(json as Map<String, dynamic>));case 503:
final json = jsonDecode(response.body);
return  CodeScanningGetCodeqlDatabaseError503(CodeScanningGetCodeqlDatabaseResponse503.fromJson(json as Map<String, dynamic>));default:
return  CodeScanningGetCodeqlDatabaseErrorUnknown(response); }}
}
/// Response for 302.
final class CodeScanningGetCodeqlDatabaseError302 extends CodeScanningGetCodeqlDatabaseError {const CodeScanningGetCodeqlDatabaseError302();

}
/// Response for 403 (application/json).
final class CodeScanningGetCodeqlDatabaseError403 extends CodeScanningGetCodeqlDatabaseError {const CodeScanningGetCodeqlDatabaseError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodeScanningGetCodeqlDatabaseError404 extends CodeScanningGetCodeqlDatabaseError {const CodeScanningGetCodeqlDatabaseError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 503 (application/json).
final class CodeScanningGetCodeqlDatabaseError503 extends CodeScanningGetCodeqlDatabaseError {const CodeScanningGetCodeqlDatabaseError503(this.data);

/// The decoded response payload.
final CodeScanningGetCodeqlDatabaseResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodeScanningGetCodeqlDatabaseErrorUnknown extends CodeScanningGetCodeqlDatabaseError {const CodeScanningGetCodeqlDatabaseErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
