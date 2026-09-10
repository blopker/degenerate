// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secret_scanning_list_alerts_for_repo_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class SecretScanningListAlertsForRepoError {const SecretScanningListAlertsForRepoError();

/// Decodes the payload for its declared status and content type.
static SecretScanningListAlertsForRepoError parse(ApiResponse response) { switch (response.statusCode) {
case 404:
return const SecretScanningListAlertsForRepoError404();
case 503:
final json = jsonDecode(response.body);
return SecretScanningListAlertsForRepoError503(SecretScanningListAlertsForRepoResponse503.fromJson(json as Map<String, dynamic>));
default:
return SecretScanningListAlertsForRepoErrorUnknown(response);
}
 } 
 }
/// Response for 404.
final class SecretScanningListAlertsForRepoError404 extends SecretScanningListAlertsForRepoError {const SecretScanningListAlertsForRepoError404();

 }
/// Response for 503 (application/json).
final class SecretScanningListAlertsForRepoError503 extends SecretScanningListAlertsForRepoError {const SecretScanningListAlertsForRepoError503(this.data);

/// The decoded response payload.
final SecretScanningListAlertsForRepoResponse503 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class SecretScanningListAlertsForRepoErrorUnknown extends SecretScanningListAlertsForRepoError {const SecretScanningListAlertsForRepoErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
