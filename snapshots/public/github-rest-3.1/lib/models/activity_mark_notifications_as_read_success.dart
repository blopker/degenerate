// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'activity_mark_notifications_as_read_response.dart';/// Success responses of `PUT /notifications`.
sealed class ActivityMarkNotificationsAsReadSuccess {const ActivityMarkNotificationsAsReadSuccess();

/// Parse the variant matching the response status code.
factory ActivityMarkNotificationsAsReadSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  202 => ActivityMarkNotificationsAsReadSuccess202.parse(response),
  205 => ActivityMarkNotificationsAsReadSuccess205.parse(response),
  _ => ActivityMarkNotificationsAsReadSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `202` response.
@immutable final class ActivityMarkNotificationsAsReadSuccess202 extends ActivityMarkNotificationsAsReadSuccess {const ActivityMarkNotificationsAsReadSuccess202(this.data);

factory ActivityMarkNotificationsAsReadSuccess202.parse(ApiResponse response) { return ActivityMarkNotificationsAsReadSuccess202(ActivityMarkNotificationsAsReadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ActivityMarkNotificationsAsReadResponse data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityMarkNotificationsAsReadSuccess202 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityMarkNotificationsAsReadSuccess202($data)'; } 
 }
/// The `205` response.
@immutable final class ActivityMarkNotificationsAsReadSuccess205 extends ActivityMarkNotificationsAsReadSuccess {const ActivityMarkNotificationsAsReadSuccess205();

factory ActivityMarkNotificationsAsReadSuccess205.parse(ApiResponse _) { return const ActivityMarkNotificationsAsReadSuccess205(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ActivityMarkNotificationsAsReadSuccess205; } 
@override int get hashCode { return (ActivityMarkNotificationsAsReadSuccess205).hashCode; } 
@override String toString() { return 'ActivityMarkNotificationsAsReadSuccess205()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActivityMarkNotificationsAsReadSuccess$Unknown extends ActivityMarkNotificationsAsReadSuccess {const ActivityMarkNotificationsAsReadSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityMarkNotificationsAsReadSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActivityMarkNotificationsAsReadSuccess.unknown($statusCode)'; } 
 }
