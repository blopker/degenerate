// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/starred`.
sealed class ActivityListReposStarredByAuthenticatedUserError {const ActivityListReposStarredByAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory ActivityListReposStarredByAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ActivityListReposStarredByAuthenticatedUserError304.parse(response),
  401 => ActivityListReposStarredByAuthenticatedUserError401.parse(response),
  403 => ActivityListReposStarredByAuthenticatedUserError403.parse(response),
  _ => ActivityListReposStarredByAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ActivityListReposStarredByAuthenticatedUserError304 extends ActivityListReposStarredByAuthenticatedUserError {const ActivityListReposStarredByAuthenticatedUserError304();

factory ActivityListReposStarredByAuthenticatedUserError304.parse(ApiResponse _) { return const ActivityListReposStarredByAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ActivityListReposStarredByAuthenticatedUserError304; } 
@override int get hashCode { return (ActivityListReposStarredByAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'ActivityListReposStarredByAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class ActivityListReposStarredByAuthenticatedUserError401 extends ActivityListReposStarredByAuthenticatedUserError {const ActivityListReposStarredByAuthenticatedUserError401(this.data);

factory ActivityListReposStarredByAuthenticatedUserError401.parse(ApiResponse response) { return ActivityListReposStarredByAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityListReposStarredByAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityListReposStarredByAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class ActivityListReposStarredByAuthenticatedUserError403 extends ActivityListReposStarredByAuthenticatedUserError {const ActivityListReposStarredByAuthenticatedUserError403(this.data);

factory ActivityListReposStarredByAuthenticatedUserError403.parse(ApiResponse response) { return ActivityListReposStarredByAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityListReposStarredByAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityListReposStarredByAuthenticatedUserError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActivityListReposStarredByAuthenticatedUserError$Unknown extends ActivityListReposStarredByAuthenticatedUserError {const ActivityListReposStarredByAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityListReposStarredByAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActivityListReposStarredByAuthenticatedUserError.unknown($statusCode)'; } 
 }
