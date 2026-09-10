// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'patch_event_query_alert_update_response400.dart';import 'patch_event_query_alert_update_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class PatchEventQueryAlertUpdateError {const PatchEventQueryAlertUpdateError();

/// Decodes the payload for its declared status and content type.
static PatchEventQueryAlertUpdateError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return PatchEventQueryAlertUpdateError400(PatchEventQueryAlertUpdateResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return PatchEventQueryAlertUpdateError404(PatchEventQueryAlertUpdateResponse404.fromJson(json as Map<String, dynamic>));
default:
return PatchEventQueryAlertUpdateErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class PatchEventQueryAlertUpdateError400 extends PatchEventQueryAlertUpdateError {const PatchEventQueryAlertUpdateError400(this.data);

/// The decoded response payload.
final PatchEventQueryAlertUpdateResponse400 data;

}
/// Response for 404 (application/json).
final class PatchEventQueryAlertUpdateError404 extends PatchEventQueryAlertUpdateError {const PatchEventQueryAlertUpdateError404(this.data);

/// The decoded response payload.
final PatchEventQueryAlertUpdateResponse404 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class PatchEventQueryAlertUpdateErrorUnknown extends PatchEventQueryAlertUpdateError {const PatchEventQueryAlertUpdateErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
