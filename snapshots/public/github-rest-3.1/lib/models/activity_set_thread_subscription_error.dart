// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `PUT /notifications/threads/{thread_id}/subscription`.
sealed class ActivitySetThreadSubscriptionError {const ActivitySetThreadSubscriptionError();

/// Parse the variant matching the response status code.
factory ActivitySetThreadSubscriptionError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ActivitySetThreadSubscriptionError304.parse(response),
  401 => ActivitySetThreadSubscriptionError401.parse(response),
  403 => ActivitySetThreadSubscriptionError403.parse(response),
  _ => ActivitySetThreadSubscriptionError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ActivitySetThreadSubscriptionError304 extends ActivitySetThreadSubscriptionError {const ActivitySetThreadSubscriptionError304();

factory ActivitySetThreadSubscriptionError304.parse(ApiResponse _) { return const ActivitySetThreadSubscriptionError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ActivitySetThreadSubscriptionError304; } 
@override int get hashCode { return (ActivitySetThreadSubscriptionError304).hashCode; } 
@override String toString() { return 'ActivitySetThreadSubscriptionError304()'; } 
 }
/// The `401` response.
@immutable final class ActivitySetThreadSubscriptionError401 extends ActivitySetThreadSubscriptionError {const ActivitySetThreadSubscriptionError401(this.data);

factory ActivitySetThreadSubscriptionError401.parse(ApiResponse response) { return ActivitySetThreadSubscriptionError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivitySetThreadSubscriptionError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivitySetThreadSubscriptionError401($data)'; } 
 }
/// The `403` response.
@immutable final class ActivitySetThreadSubscriptionError403 extends ActivitySetThreadSubscriptionError {const ActivitySetThreadSubscriptionError403(this.data);

factory ActivitySetThreadSubscriptionError403.parse(ApiResponse response) { return ActivitySetThreadSubscriptionError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivitySetThreadSubscriptionError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivitySetThreadSubscriptionError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActivitySetThreadSubscriptionError$Unknown extends ActivitySetThreadSubscriptionError {const ActivitySetThreadSubscriptionError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivitySetThreadSubscriptionError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActivitySetThreadSubscriptionError.unknown($statusCode)'; } 
 }
