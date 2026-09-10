// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_event_query_alert_update_response400.dart';import 'post_event_query_alert_update_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class PostEventQueryAlertUpdateError {const PostEventQueryAlertUpdateError();

/// Decodes the payload for its declared status and content type.
static PostEventQueryAlertUpdateError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return PostEventQueryAlertUpdateError400(PostEventQueryAlertUpdateResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return PostEventQueryAlertUpdateError404(PostEventQueryAlertUpdateResponse404.fromJson(json as Map<String, dynamic>));
default:
return PostEventQueryAlertUpdateErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class PostEventQueryAlertUpdateError400 extends PostEventQueryAlertUpdateError {const PostEventQueryAlertUpdateError400(this.data);

/// The decoded response payload.
final PostEventQueryAlertUpdateResponse400 data;

 }
/// Response for 404 (application/json).
final class PostEventQueryAlertUpdateError404 extends PostEventQueryAlertUpdateError {const PostEventQueryAlertUpdateError404(this.data);

/// The decoded response payload.
final PostEventQueryAlertUpdateResponse404 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class PostEventQueryAlertUpdateErrorUnknown extends PostEventQueryAlertUpdateError {const PostEventQueryAlertUpdateErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
