// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'activity_mark_repo_notifications_as_read_response.dart';/// Success responses of `PUT /repos/{owner}/{repo}/notifications`.
sealed class ActivityMarkRepoNotificationsAsReadSuccess {const ActivityMarkRepoNotificationsAsReadSuccess();

/// Parse the variant matching the response status code.
factory ActivityMarkRepoNotificationsAsReadSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  202 => ActivityMarkRepoNotificationsAsReadSuccess202.parse(response),
  205 => ActivityMarkRepoNotificationsAsReadSuccess205.parse(response),
  _ => ActivityMarkRepoNotificationsAsReadSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `202` response.
@immutable final class ActivityMarkRepoNotificationsAsReadSuccess202 extends ActivityMarkRepoNotificationsAsReadSuccess {const ActivityMarkRepoNotificationsAsReadSuccess202(this.data);

factory ActivityMarkRepoNotificationsAsReadSuccess202.parse(ApiResponse response) { return ActivityMarkRepoNotificationsAsReadSuccess202(ActivityMarkRepoNotificationsAsReadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ActivityMarkRepoNotificationsAsReadResponse data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityMarkRepoNotificationsAsReadSuccess202 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityMarkRepoNotificationsAsReadSuccess202($data)'; } 
 }
/// The `205` response.
@immutable final class ActivityMarkRepoNotificationsAsReadSuccess205 extends ActivityMarkRepoNotificationsAsReadSuccess {const ActivityMarkRepoNotificationsAsReadSuccess205();

factory ActivityMarkRepoNotificationsAsReadSuccess205.parse(ApiResponse _) { return const ActivityMarkRepoNotificationsAsReadSuccess205(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ActivityMarkRepoNotificationsAsReadSuccess205; } 
@override int get hashCode { return (ActivityMarkRepoNotificationsAsReadSuccess205).hashCode; } 
@override String toString() { return 'ActivityMarkRepoNotificationsAsReadSuccess205()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActivityMarkRepoNotificationsAsReadSuccess$Unknown extends ActivityMarkRepoNotificationsAsReadSuccess {const ActivityMarkRepoNotificationsAsReadSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityMarkRepoNotificationsAsReadSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActivityMarkRepoNotificationsAsReadSuccess.unknown($statusCode)'; } 
 }
