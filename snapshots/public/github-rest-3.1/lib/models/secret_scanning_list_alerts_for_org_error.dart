// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'secret_scanning_list_alerts_for_org_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class SecretScanningListAlertsForOrgError {const SecretScanningListAlertsForOrgError();

/// Decodes the payload for its declared status and content type.
static SecretScanningListAlertsForOrgError parse(ApiResponse response) { switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return SecretScanningListAlertsForOrgError404(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return SecretScanningListAlertsForOrgError503(SecretScanningListAlertsForOrgResponse503.fromJson(json as Map<String, dynamic>));
default:
return SecretScanningListAlertsForOrgErrorUnknown(response);
}
 } 
 }
/// Response for 404 (application/json).
final class SecretScanningListAlertsForOrgError404 extends SecretScanningListAlertsForOrgError {const SecretScanningListAlertsForOrgError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 503 (application/json).
final class SecretScanningListAlertsForOrgError503 extends SecretScanningListAlertsForOrgError {const SecretScanningListAlertsForOrgError503(this.data);

/// The decoded response payload.
final SecretScanningListAlertsForOrgResponse503 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class SecretScanningListAlertsForOrgErrorUnknown extends SecretScanningListAlertsForOrgError {const SecretScanningListAlertsForOrgErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
