// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_event_query_alert_update_response400.dart';import 'post_event_query_alert_update_response404.dart';/// Error responses of `POST /accounts/{account_id}/cloudforce-one/events/queries/alerts/{alert_id}`.
sealed class PostEventQueryAlertUpdateError {const PostEventQueryAlertUpdateError();

/// Parse the variant matching the response status code.
factory PostEventQueryAlertUpdateError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => PostEventQueryAlertUpdateError400.parse(response),
  404 => PostEventQueryAlertUpdateError404.parse(response),
  _ => PostEventQueryAlertUpdateError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class PostEventQueryAlertUpdateError400 extends PostEventQueryAlertUpdateError {const PostEventQueryAlertUpdateError400(this.data);

factory PostEventQueryAlertUpdateError400.parse(ApiResponse response) { return PostEventQueryAlertUpdateError400(PostEventQueryAlertUpdateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PostEventQueryAlertUpdateResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostEventQueryAlertUpdateError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PostEventQueryAlertUpdateError400($data)'; } 
 }
/// The `404` response.
@immutable final class PostEventQueryAlertUpdateError404 extends PostEventQueryAlertUpdateError {const PostEventQueryAlertUpdateError404(this.data);

factory PostEventQueryAlertUpdateError404.parse(ApiResponse response) { return PostEventQueryAlertUpdateError404(PostEventQueryAlertUpdateResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PostEventQueryAlertUpdateResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostEventQueryAlertUpdateError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PostEventQueryAlertUpdateError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PostEventQueryAlertUpdateError$Unknown extends PostEventQueryAlertUpdateError {const PostEventQueryAlertUpdateError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostEventQueryAlertUpdateError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PostEventQueryAlertUpdateError.unknown($statusCode)'; } 
 }
