// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secret_scanning_list_locations_for_alert_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class SecretScanningListLocationsForAlertError {const SecretScanningListLocationsForAlertError();

/// Decodes the payload for its declared status and content type.
static SecretScanningListLocationsForAlertError parse(ApiResponse response) { switch (response.statusCode) {
case 404:
return const SecretScanningListLocationsForAlertError404();
case 503:
final json = jsonDecode(response.body);
return SecretScanningListLocationsForAlertError503(SecretScanningListLocationsForAlertResponse503.fromJson(json as Map<String, dynamic>));
default:
return SecretScanningListLocationsForAlertErrorUnknown(response);
}
 } 
 }
/// Response for 404.
final class SecretScanningListLocationsForAlertError404 extends SecretScanningListLocationsForAlertError {const SecretScanningListLocationsForAlertError404();

 }
/// Response for 503 (application/json).
final class SecretScanningListLocationsForAlertError503 extends SecretScanningListLocationsForAlertError {const SecretScanningListLocationsForAlertError503(this.data);

/// The decoded response payload.
final SecretScanningListLocationsForAlertResponse503 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class SecretScanningListLocationsForAlertErrorUnknown extends SecretScanningListLocationsForAlertError {const SecretScanningListLocationsForAlertErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
