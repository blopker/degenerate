// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_list_alerts_for_repo_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeScanningListAlertsForRepoError {const CodeScanningListAlertsForRepoError();

/// Decodes the payload for its declared status and content type.
static CodeScanningListAlertsForRepoError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const CodeScanningListAlertsForRepoError304();
case 403:
final json = jsonDecode(response.body);
return CodeScanningListAlertsForRepoError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CodeScanningListAlertsForRepoError404(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return CodeScanningListAlertsForRepoError503(CodeScanningListAlertsForRepoResponse503.fromJson(json as Map<String, dynamic>));
default:
return CodeScanningListAlertsForRepoErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class CodeScanningListAlertsForRepoError304 extends CodeScanningListAlertsForRepoError {const CodeScanningListAlertsForRepoError304();

 }
/// Response for 403 (application/json).
final class CodeScanningListAlertsForRepoError403 extends CodeScanningListAlertsForRepoError {const CodeScanningListAlertsForRepoError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class CodeScanningListAlertsForRepoError404 extends CodeScanningListAlertsForRepoError {const CodeScanningListAlertsForRepoError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 503 (application/json).
final class CodeScanningListAlertsForRepoError503 extends CodeScanningListAlertsForRepoError {const CodeScanningListAlertsForRepoError503(this.data);

/// The decoded response payload.
final CodeScanningListAlertsForRepoResponse503 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CodeScanningListAlertsForRepoErrorUnknown extends CodeScanningListAlertsForRepoError {const CodeScanningListAlertsForRepoErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
