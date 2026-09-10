// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secret_scanning_update_alert_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class SecretScanningUpdateAlertError {const SecretScanningUpdateAlertError();

/// Decodes the payload for its declared status and content type.
static SecretScanningUpdateAlertError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
return const SecretScanningUpdateAlertError400();
case 404:
return const SecretScanningUpdateAlertError404();
case 422:
return const SecretScanningUpdateAlertError422();
case 503:
final json = jsonDecode(response.body);
return SecretScanningUpdateAlertError503(SecretScanningUpdateAlertResponse503.fromJson(json as Map<String, dynamic>));
default:
return SecretScanningUpdateAlertErrorUnknown(response);
}
}
}
/// Response for 400.
final class SecretScanningUpdateAlertError400 extends SecretScanningUpdateAlertError {const SecretScanningUpdateAlertError400();

}
/// Response for 404.
final class SecretScanningUpdateAlertError404 extends SecretScanningUpdateAlertError {const SecretScanningUpdateAlertError404();

}
/// Response for 422.
final class SecretScanningUpdateAlertError422 extends SecretScanningUpdateAlertError {const SecretScanningUpdateAlertError422();

}
/// Response for 503 (application/json).
final class SecretScanningUpdateAlertError503 extends SecretScanningUpdateAlertError {const SecretScanningUpdateAlertError503(this.data);

/// The decoded response payload.
final SecretScanningUpdateAlertResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class SecretScanningUpdateAlertErrorUnknown extends SecretScanningUpdateAlertError {const SecretScanningUpdateAlertErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
