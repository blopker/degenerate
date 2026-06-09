// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `GET /notifications`.
sealed class ActivityListNotificationsForAuthenticatedUserError {const ActivityListNotificationsForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory ActivityListNotificationsForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ActivityListNotificationsForAuthenticatedUserError304.parse(response),
  401 => ActivityListNotificationsForAuthenticatedUserError401.parse(response),
  403 => ActivityListNotificationsForAuthenticatedUserError403.parse(response),
  422 => ActivityListNotificationsForAuthenticatedUserError422.parse(response),
  _ => ActivityListNotificationsForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ActivityListNotificationsForAuthenticatedUserError304 extends ActivityListNotificationsForAuthenticatedUserError {const ActivityListNotificationsForAuthenticatedUserError304();

factory ActivityListNotificationsForAuthenticatedUserError304.parse(ApiResponse _) { return const ActivityListNotificationsForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ActivityListNotificationsForAuthenticatedUserError304; } 
@override int get hashCode { return (ActivityListNotificationsForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'ActivityListNotificationsForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class ActivityListNotificationsForAuthenticatedUserError401 extends ActivityListNotificationsForAuthenticatedUserError {const ActivityListNotificationsForAuthenticatedUserError401(this.data);

factory ActivityListNotificationsForAuthenticatedUserError401.parse(ApiResponse response) { return ActivityListNotificationsForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityListNotificationsForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityListNotificationsForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class ActivityListNotificationsForAuthenticatedUserError403 extends ActivityListNotificationsForAuthenticatedUserError {const ActivityListNotificationsForAuthenticatedUserError403(this.data);

factory ActivityListNotificationsForAuthenticatedUserError403.parse(ApiResponse response) { return ActivityListNotificationsForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityListNotificationsForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityListNotificationsForAuthenticatedUserError403($data)'; } 
 }
/// The `422` response.
@immutable final class ActivityListNotificationsForAuthenticatedUserError422 extends ActivityListNotificationsForAuthenticatedUserError {const ActivityListNotificationsForAuthenticatedUserError422(this.data);

factory ActivityListNotificationsForAuthenticatedUserError422.parse(ApiResponse response) { return ActivityListNotificationsForAuthenticatedUserError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityListNotificationsForAuthenticatedUserError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityListNotificationsForAuthenticatedUserError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActivityListNotificationsForAuthenticatedUserError$Unknown extends ActivityListNotificationsForAuthenticatedUserError {const ActivityListNotificationsForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityListNotificationsForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActivityListNotificationsForAuthenticatedUserError.unknown($statusCode)'; } 
 }
