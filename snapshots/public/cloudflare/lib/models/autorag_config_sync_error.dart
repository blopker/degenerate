// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'autorag_config_sync_response400.dart';import 'autorag_config_sync_response404.dart';import 'autorag_config_sync_response429.dart';import 'autorag_config_sync_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AutoragConfigSyncError {const AutoragConfigSyncError();

/// Decodes the payload for its declared status and content type.
static AutoragConfigSyncError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  AutoragConfigSyncError400(AutoragConfigSyncResponse400.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  AutoragConfigSyncError404(AutoragConfigSyncResponse404.fromJson(json as Map<String, dynamic>));case 429:
final json = jsonDecode(response.body);
return  AutoragConfigSyncError429(AutoragConfigSyncResponse429.fromJson(json as Map<String, dynamic>));case 503:
final json = jsonDecode(response.body);
return  AutoragConfigSyncError503(AutoragConfigSyncResponse503.fromJson(json as Map<String, dynamic>));default:
return  AutoragConfigSyncErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class AutoragConfigSyncError400 extends AutoragConfigSyncError {const AutoragConfigSyncError400(this.data);

/// The decoded response payload.
final AutoragConfigSyncResponse400 data;

}
/// Response for 404 (application/json).
final class AutoragConfigSyncError404 extends AutoragConfigSyncError {const AutoragConfigSyncError404(this.data);

/// The decoded response payload.
final AutoragConfigSyncResponse404 data;

}
/// Response for 429 (application/json).
final class AutoragConfigSyncError429 extends AutoragConfigSyncError {const AutoragConfigSyncError429(this.data);

/// The decoded response payload.
final AutoragConfigSyncResponse429 data;

}
/// Response for 503 (application/json).
final class AutoragConfigSyncError503 extends AutoragConfigSyncError {const AutoragConfigSyncError503(this.data);

/// The decoded response payload.
final AutoragConfigSyncResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class AutoragConfigSyncErrorUnknown extends AutoragConfigSyncError {const AutoragConfigSyncErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
