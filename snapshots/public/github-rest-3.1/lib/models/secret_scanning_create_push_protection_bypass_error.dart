// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secret_scanning_create_push_protection_bypass_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class SecretScanningCreatePushProtectionBypassError {const SecretScanningCreatePushProtectionBypassError();

/// Decodes the payload for its declared status and content type.
static SecretScanningCreatePushProtectionBypassError parse(ApiResponse response) {switch (response.statusCode) {
case 403:
return  const SecretScanningCreatePushProtectionBypassError403();case 404:
return  const SecretScanningCreatePushProtectionBypassError404();case 422:
return  const SecretScanningCreatePushProtectionBypassError422();case 503:
final json = jsonDecode(response.body);
return  SecretScanningCreatePushProtectionBypassError503(SecretScanningCreatePushProtectionBypassResponse503.fromJson(json as Map<String, dynamic>));default:
return  SecretScanningCreatePushProtectionBypassErrorUnknown(response); }}
}
/// Response for 403.
final class SecretScanningCreatePushProtectionBypassError403 extends SecretScanningCreatePushProtectionBypassError {const SecretScanningCreatePushProtectionBypassError403();

}
/// Response for 404.
final class SecretScanningCreatePushProtectionBypassError404 extends SecretScanningCreatePushProtectionBypassError {const SecretScanningCreatePushProtectionBypassError404();

}
/// Response for 422.
final class SecretScanningCreatePushProtectionBypassError422 extends SecretScanningCreatePushProtectionBypassError {const SecretScanningCreatePushProtectionBypassError422();

}
/// Response for 503 (application/json).
final class SecretScanningCreatePushProtectionBypassError503 extends SecretScanningCreatePushProtectionBypassError {const SecretScanningCreatePushProtectionBypassError503(this.data);

/// The decoded response payload.
final SecretScanningCreatePushProtectionBypassResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class SecretScanningCreatePushProtectionBypassErrorUnknown extends SecretScanningCreatePushProtectionBypassError {const SecretScanningCreatePushProtectionBypassErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
