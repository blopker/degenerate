// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `PUT /notifications`.
sealed class ActivityMarkNotificationsAsReadError {const ActivityMarkNotificationsAsReadError();

/// Parse the variant matching the response status code.
factory ActivityMarkNotificationsAsReadError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ActivityMarkNotificationsAsReadError304.parse(response),
  401 => ActivityMarkNotificationsAsReadError401.parse(response),
  403 => ActivityMarkNotificationsAsReadError403.parse(response),
  _ => ActivityMarkNotificationsAsReadError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ActivityMarkNotificationsAsReadError304 extends ActivityMarkNotificationsAsReadError {const ActivityMarkNotificationsAsReadError304();

factory ActivityMarkNotificationsAsReadError304.parse(ApiResponse _) { return const ActivityMarkNotificationsAsReadError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ActivityMarkNotificationsAsReadError304; } 
@override int get hashCode { return (ActivityMarkNotificationsAsReadError304).hashCode; } 
@override String toString() { return 'ActivityMarkNotificationsAsReadError304()'; } 
 }
/// The `401` response.
@immutable final class ActivityMarkNotificationsAsReadError401 extends ActivityMarkNotificationsAsReadError {const ActivityMarkNotificationsAsReadError401(this.data);

factory ActivityMarkNotificationsAsReadError401.parse(ApiResponse response) { return ActivityMarkNotificationsAsReadError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityMarkNotificationsAsReadError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityMarkNotificationsAsReadError401($data)'; } 
 }
/// The `403` response.
@immutable final class ActivityMarkNotificationsAsReadError403 extends ActivityMarkNotificationsAsReadError {const ActivityMarkNotificationsAsReadError403(this.data);

factory ActivityMarkNotificationsAsReadError403.parse(ApiResponse response) { return ActivityMarkNotificationsAsReadError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityMarkNotificationsAsReadError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityMarkNotificationsAsReadError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActivityMarkNotificationsAsReadError$Unknown extends ActivityMarkNotificationsAsReadError {const ActivityMarkNotificationsAsReadError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityMarkNotificationsAsReadError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActivityMarkNotificationsAsReadError.unknown($statusCode)'; } 
 }
