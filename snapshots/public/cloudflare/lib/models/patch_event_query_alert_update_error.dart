// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'patch_event_query_alert_update_response400.dart';import 'patch_event_query_alert_update_response404.dart';/// Error responses of `PATCH /accounts/{account_id}/cloudforce-one/events/queries/alerts/{alert_id}`.
sealed class PatchEventQueryAlertUpdateError {const PatchEventQueryAlertUpdateError();

/// Parse the variant matching the response status code.
factory PatchEventQueryAlertUpdateError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => PatchEventQueryAlertUpdateError400.parse(response),
  404 => PatchEventQueryAlertUpdateError404.parse(response),
  _ => PatchEventQueryAlertUpdateError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class PatchEventQueryAlertUpdateError400 extends PatchEventQueryAlertUpdateError {const PatchEventQueryAlertUpdateError400(this.data);

factory PatchEventQueryAlertUpdateError400.parse(ApiResponse response) { return PatchEventQueryAlertUpdateError400(PatchEventQueryAlertUpdateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PatchEventQueryAlertUpdateResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchEventQueryAlertUpdateError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PatchEventQueryAlertUpdateError400($data)'; } 
 }
/// The `404` response.
@immutable final class PatchEventQueryAlertUpdateError404 extends PatchEventQueryAlertUpdateError {const PatchEventQueryAlertUpdateError404(this.data);

factory PatchEventQueryAlertUpdateError404.parse(ApiResponse response) { return PatchEventQueryAlertUpdateError404(PatchEventQueryAlertUpdateResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PatchEventQueryAlertUpdateResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchEventQueryAlertUpdateError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PatchEventQueryAlertUpdateError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PatchEventQueryAlertUpdateError$Unknown extends PatchEventQueryAlertUpdateError {const PatchEventQueryAlertUpdateError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchEventQueryAlertUpdateError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PatchEventQueryAlertUpdateError.unknown($statusCode)'; } 
 }
