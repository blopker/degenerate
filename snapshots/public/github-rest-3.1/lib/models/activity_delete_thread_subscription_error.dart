// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `DELETE /notifications/threads/{thread_id}/subscription`.
sealed class ActivityDeleteThreadSubscriptionError {const ActivityDeleteThreadSubscriptionError();

/// Parse the variant matching the response status code.
factory ActivityDeleteThreadSubscriptionError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ActivityDeleteThreadSubscriptionError304.parse(response),
  401 => ActivityDeleteThreadSubscriptionError401.parse(response),
  403 => ActivityDeleteThreadSubscriptionError403.parse(response),
  _ => ActivityDeleteThreadSubscriptionError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ActivityDeleteThreadSubscriptionError304 extends ActivityDeleteThreadSubscriptionError {const ActivityDeleteThreadSubscriptionError304();

factory ActivityDeleteThreadSubscriptionError304.parse(ApiResponse _) { return const ActivityDeleteThreadSubscriptionError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ActivityDeleteThreadSubscriptionError304; } 
@override int get hashCode { return (ActivityDeleteThreadSubscriptionError304).hashCode; } 
@override String toString() { return 'ActivityDeleteThreadSubscriptionError304()'; } 
 }
/// The `401` response.
@immutable final class ActivityDeleteThreadSubscriptionError401 extends ActivityDeleteThreadSubscriptionError {const ActivityDeleteThreadSubscriptionError401(this.data);

factory ActivityDeleteThreadSubscriptionError401.parse(ApiResponse response) { return ActivityDeleteThreadSubscriptionError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityDeleteThreadSubscriptionError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityDeleteThreadSubscriptionError401($data)'; } 
 }
/// The `403` response.
@immutable final class ActivityDeleteThreadSubscriptionError403 extends ActivityDeleteThreadSubscriptionError {const ActivityDeleteThreadSubscriptionError403(this.data);

factory ActivityDeleteThreadSubscriptionError403.parse(ApiResponse response) { return ActivityDeleteThreadSubscriptionError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityDeleteThreadSubscriptionError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityDeleteThreadSubscriptionError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActivityDeleteThreadSubscriptionError$Unknown extends ActivityDeleteThreadSubscriptionError {const ActivityDeleteThreadSubscriptionError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityDeleteThreadSubscriptionError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActivityDeleteThreadSubscriptionError.unknown($statusCode)'; } 
 }
