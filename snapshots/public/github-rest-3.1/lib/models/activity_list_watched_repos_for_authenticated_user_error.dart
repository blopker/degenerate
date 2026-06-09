// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/subscriptions`.
sealed class ActivityListWatchedReposForAuthenticatedUserError {const ActivityListWatchedReposForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory ActivityListWatchedReposForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ActivityListWatchedReposForAuthenticatedUserError304.parse(response),
  401 => ActivityListWatchedReposForAuthenticatedUserError401.parse(response),
  403 => ActivityListWatchedReposForAuthenticatedUserError403.parse(response),
  _ => ActivityListWatchedReposForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ActivityListWatchedReposForAuthenticatedUserError304 extends ActivityListWatchedReposForAuthenticatedUserError {const ActivityListWatchedReposForAuthenticatedUserError304();

factory ActivityListWatchedReposForAuthenticatedUserError304.parse(ApiResponse _) { return const ActivityListWatchedReposForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ActivityListWatchedReposForAuthenticatedUserError304; } 
@override int get hashCode { return (ActivityListWatchedReposForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'ActivityListWatchedReposForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class ActivityListWatchedReposForAuthenticatedUserError401 extends ActivityListWatchedReposForAuthenticatedUserError {const ActivityListWatchedReposForAuthenticatedUserError401(this.data);

factory ActivityListWatchedReposForAuthenticatedUserError401.parse(ApiResponse response) { return ActivityListWatchedReposForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityListWatchedReposForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityListWatchedReposForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class ActivityListWatchedReposForAuthenticatedUserError403 extends ActivityListWatchedReposForAuthenticatedUserError {const ActivityListWatchedReposForAuthenticatedUserError403(this.data);

factory ActivityListWatchedReposForAuthenticatedUserError403.parse(ApiResponse response) { return ActivityListWatchedReposForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityListWatchedReposForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityListWatchedReposForAuthenticatedUserError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActivityListWatchedReposForAuthenticatedUserError$Unknown extends ActivityListWatchedReposForAuthenticatedUserError {const ActivityListWatchedReposForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityListWatchedReposForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActivityListWatchedReposForAuthenticatedUserError.unknown($statusCode)'; } 
 }
