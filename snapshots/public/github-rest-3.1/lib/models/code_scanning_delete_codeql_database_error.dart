// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_delete_codeql_database_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeScanningDeleteCodeqlDatabaseError {const CodeScanningDeleteCodeqlDatabaseError();

/// Decodes the payload for its declared status and content type.
static CodeScanningDeleteCodeqlDatabaseError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return CodeScanningDeleteCodeqlDatabaseError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CodeScanningDeleteCodeqlDatabaseError404(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return CodeScanningDeleteCodeqlDatabaseError503(CodeScanningDeleteCodeqlDatabaseResponse503.fromJson(json as Map<String, dynamic>));
default:
return CodeScanningDeleteCodeqlDatabaseErrorUnknown(response);
}
}
}
/// Response for 403 (application/json).
final class CodeScanningDeleteCodeqlDatabaseError403 extends CodeScanningDeleteCodeqlDatabaseError {const CodeScanningDeleteCodeqlDatabaseError403(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CodeScanningDeleteCodeqlDatabaseError404 extends CodeScanningDeleteCodeqlDatabaseError {const CodeScanningDeleteCodeqlDatabaseError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 503 (application/json).
final class CodeScanningDeleteCodeqlDatabaseError503 extends CodeScanningDeleteCodeqlDatabaseError {const CodeScanningDeleteCodeqlDatabaseError503(this.data);

/// The decoded response payload.
final CodeScanningDeleteCodeqlDatabaseResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CodeScanningDeleteCodeqlDatabaseErrorUnknown extends CodeScanningDeleteCodeqlDatabaseError {const CodeScanningDeleteCodeqlDatabaseErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
