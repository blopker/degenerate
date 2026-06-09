// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /notifications/threads/{thread_id}/subscription`.
sealed class ActivityGetThreadSubscriptionForAuthenticatedUserError {const ActivityGetThreadSubscriptionForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory ActivityGetThreadSubscriptionForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ActivityGetThreadSubscriptionForAuthenticatedUserError304.parse(response),
  401 => ActivityGetThreadSubscriptionForAuthenticatedUserError401.parse(response),
  403 => ActivityGetThreadSubscriptionForAuthenticatedUserError403.parse(response),
  _ => ActivityGetThreadSubscriptionForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ActivityGetThreadSubscriptionForAuthenticatedUserError304 extends ActivityGetThreadSubscriptionForAuthenticatedUserError {const ActivityGetThreadSubscriptionForAuthenticatedUserError304();

factory ActivityGetThreadSubscriptionForAuthenticatedUserError304.parse(ApiResponse _) { return const ActivityGetThreadSubscriptionForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ActivityGetThreadSubscriptionForAuthenticatedUserError304; } 
@override int get hashCode { return (ActivityGetThreadSubscriptionForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'ActivityGetThreadSubscriptionForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class ActivityGetThreadSubscriptionForAuthenticatedUserError401 extends ActivityGetThreadSubscriptionForAuthenticatedUserError {const ActivityGetThreadSubscriptionForAuthenticatedUserError401(this.data);

factory ActivityGetThreadSubscriptionForAuthenticatedUserError401.parse(ApiResponse response) { return ActivityGetThreadSubscriptionForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityGetThreadSubscriptionForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityGetThreadSubscriptionForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class ActivityGetThreadSubscriptionForAuthenticatedUserError403 extends ActivityGetThreadSubscriptionForAuthenticatedUserError {const ActivityGetThreadSubscriptionForAuthenticatedUserError403(this.data);

factory ActivityGetThreadSubscriptionForAuthenticatedUserError403.parse(ApiResponse response) { return ActivityGetThreadSubscriptionForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityGetThreadSubscriptionForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityGetThreadSubscriptionForAuthenticatedUserError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActivityGetThreadSubscriptionForAuthenticatedUserError$Unknown extends ActivityGetThreadSubscriptionForAuthenticatedUserError {const ActivityGetThreadSubscriptionForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityGetThreadSubscriptionForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActivityGetThreadSubscriptionForAuthenticatedUserError.unknown($statusCode)'; } 
 }
