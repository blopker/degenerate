// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_list_alert_instances_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CodeScanningListAlertInstancesError {const CodeScanningListAlertInstancesError();

/// Decodes the payload for its declared status and content type.
static CodeScanningListAlertInstancesError parse(ApiResponse response) { switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return CodeScanningListAlertInstancesError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CodeScanningListAlertInstancesError404(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return CodeScanningListAlertInstancesError503(CodeScanningListAlertInstancesResponse503.fromJson(json as Map<String, dynamic>));
default:
return CodeScanningListAlertInstancesErrorUnknown(response);
}
 } 
 }
/// Response for 403 (application/json).
final class CodeScanningListAlertInstancesError403 extends CodeScanningListAlertInstancesError {const CodeScanningListAlertInstancesError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class CodeScanningListAlertInstancesError404 extends CodeScanningListAlertInstancesError {const CodeScanningListAlertInstancesError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 503 (application/json).
final class CodeScanningListAlertInstancesError503 extends CodeScanningListAlertInstancesError {const CodeScanningListAlertInstancesError503(this.data);

/// The decoded response payload.
final CodeScanningListAlertInstancesResponse503 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CodeScanningListAlertInstancesErrorUnknown extends CodeScanningListAlertInstancesError {const CodeScanningListAlertInstancesErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
