// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secret_scanning_get_scan_history_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class SecretScanningGetScanHistoryError {const SecretScanningGetScanHistoryError();

/// Decodes the payload for its declared status and content type.
static SecretScanningGetScanHistoryError parse(ApiResponse response) { switch (response.statusCode) {
case 404:
return const SecretScanningGetScanHistoryError404();
case 503:
final json = jsonDecode(response.body);
return SecretScanningGetScanHistoryError503(SecretScanningGetScanHistoryResponse503.fromJson(json as Map<String, dynamic>));
default:
return SecretScanningGetScanHistoryErrorUnknown(response);
}
 } 
 }
/// Response for 404.
final class SecretScanningGetScanHistoryError404 extends SecretScanningGetScanHistoryError {const SecretScanningGetScanHistoryError404();

 }
/// Response for 503 (application/json).
final class SecretScanningGetScanHistoryError503 extends SecretScanningGetScanHistoryError {const SecretScanningGetScanHistoryError503(this.data);

/// The decoded response payload.
final SecretScanningGetScanHistoryResponse503 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class SecretScanningGetScanHistoryErrorUnknown extends SecretScanningGetScanHistoryError {const SecretScanningGetScanHistoryErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
