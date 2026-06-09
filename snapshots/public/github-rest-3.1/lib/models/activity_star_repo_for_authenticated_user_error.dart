// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `PUT /user/starred/{owner}/{repo}`.
sealed class ActivityStarRepoForAuthenticatedUserError {const ActivityStarRepoForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory ActivityStarRepoForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ActivityStarRepoForAuthenticatedUserError304.parse(response),
  401 => ActivityStarRepoForAuthenticatedUserError401.parse(response),
  403 => ActivityStarRepoForAuthenticatedUserError403.parse(response),
  404 => ActivityStarRepoForAuthenticatedUserError404.parse(response),
  _ => ActivityStarRepoForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ActivityStarRepoForAuthenticatedUserError304 extends ActivityStarRepoForAuthenticatedUserError {const ActivityStarRepoForAuthenticatedUserError304();

factory ActivityStarRepoForAuthenticatedUserError304.parse(ApiResponse _) { return const ActivityStarRepoForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ActivityStarRepoForAuthenticatedUserError304; } 
@override int get hashCode { return (ActivityStarRepoForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'ActivityStarRepoForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class ActivityStarRepoForAuthenticatedUserError401 extends ActivityStarRepoForAuthenticatedUserError {const ActivityStarRepoForAuthenticatedUserError401(this.data);

factory ActivityStarRepoForAuthenticatedUserError401.parse(ApiResponse response) { return ActivityStarRepoForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityStarRepoForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityStarRepoForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class ActivityStarRepoForAuthenticatedUserError403 extends ActivityStarRepoForAuthenticatedUserError {const ActivityStarRepoForAuthenticatedUserError403(this.data);

factory ActivityStarRepoForAuthenticatedUserError403.parse(ApiResponse response) { return ActivityStarRepoForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityStarRepoForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityStarRepoForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class ActivityStarRepoForAuthenticatedUserError404 extends ActivityStarRepoForAuthenticatedUserError {const ActivityStarRepoForAuthenticatedUserError404(this.data);

factory ActivityStarRepoForAuthenticatedUserError404.parse(ApiResponse response) { return ActivityStarRepoForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityStarRepoForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityStarRepoForAuthenticatedUserError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActivityStarRepoForAuthenticatedUserError$Unknown extends ActivityStarRepoForAuthenticatedUserError {const ActivityStarRepoForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityStarRepoForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActivityStarRepoForAuthenticatedUserError.unknown($statusCode)'; } 
 }
