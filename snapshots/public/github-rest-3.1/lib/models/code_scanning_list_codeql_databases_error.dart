// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_list_codeql_databases_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeScanningListCodeqlDatabasesError {const CodeScanningListCodeqlDatabasesError();

/// Decodes the payload for its declared status and content type.
static CodeScanningListCodeqlDatabasesError parse(ApiResponse response) { switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return CodeScanningListCodeqlDatabasesError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CodeScanningListCodeqlDatabasesError404(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return CodeScanningListCodeqlDatabasesError503(CodeScanningListCodeqlDatabasesResponse503.fromJson(json as Map<String, dynamic>));
default:
return CodeScanningListCodeqlDatabasesErrorUnknown(response);
}
 } 
 }
/// Response for 403 (application/json).
final class CodeScanningListCodeqlDatabasesError403 extends CodeScanningListCodeqlDatabasesError {const CodeScanningListCodeqlDatabasesError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class CodeScanningListCodeqlDatabasesError404 extends CodeScanningListCodeqlDatabasesError {const CodeScanningListCodeqlDatabasesError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 503 (application/json).
final class CodeScanningListCodeqlDatabasesError503 extends CodeScanningListCodeqlDatabasesError {const CodeScanningListCodeqlDatabasesError503(this.data);

/// The decoded response payload.
final CodeScanningListCodeqlDatabasesResponse503 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CodeScanningListCodeqlDatabasesErrorUnknown extends CodeScanningListCodeqlDatabasesError {const CodeScanningListCodeqlDatabasesErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
