// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secret_scanning_get_alert_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class SecretScanningGetAlertError {const SecretScanningGetAlertError();

/// Decodes the payload for its declared status and content type.
static SecretScanningGetAlertError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const SecretScanningGetAlertError304();
case 404:
return const SecretScanningGetAlertError404();
case 503:
final json = jsonDecode(response.body);
return SecretScanningGetAlertError503(SecretScanningGetAlertResponse503.fromJson(json as Map<String, dynamic>));
default:
return SecretScanningGetAlertErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class SecretScanningGetAlertError304 extends SecretScanningGetAlertError {const SecretScanningGetAlertError304();

 }
/// Response for 404.
final class SecretScanningGetAlertError404 extends SecretScanningGetAlertError {const SecretScanningGetAlertError404();

 }
/// Response for 503 (application/json).
final class SecretScanningGetAlertError503 extends SecretScanningGetAlertError {const SecretScanningGetAlertError503(this.data);

/// The decoded response payload.
final SecretScanningGetAlertResponse503 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class SecretScanningGetAlertErrorUnknown extends SecretScanningGetAlertError {const SecretScanningGetAlertErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
