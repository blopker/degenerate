// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/starred/{owner}/{repo}`.
sealed class ActivityCheckRepoIsStarredByAuthenticatedUserError {const ActivityCheckRepoIsStarredByAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory ActivityCheckRepoIsStarredByAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ActivityCheckRepoIsStarredByAuthenticatedUserError304.parse(response),
  401 => ActivityCheckRepoIsStarredByAuthenticatedUserError401.parse(response),
  403 => ActivityCheckRepoIsStarredByAuthenticatedUserError403.parse(response),
  404 => ActivityCheckRepoIsStarredByAuthenticatedUserError404.parse(response),
  _ => ActivityCheckRepoIsStarredByAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ActivityCheckRepoIsStarredByAuthenticatedUserError304 extends ActivityCheckRepoIsStarredByAuthenticatedUserError {const ActivityCheckRepoIsStarredByAuthenticatedUserError304();

factory ActivityCheckRepoIsStarredByAuthenticatedUserError304.parse(ApiResponse _) { return const ActivityCheckRepoIsStarredByAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ActivityCheckRepoIsStarredByAuthenticatedUserError304; } 
@override int get hashCode { return (ActivityCheckRepoIsStarredByAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'ActivityCheckRepoIsStarredByAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class ActivityCheckRepoIsStarredByAuthenticatedUserError401 extends ActivityCheckRepoIsStarredByAuthenticatedUserError {const ActivityCheckRepoIsStarredByAuthenticatedUserError401(this.data);

factory ActivityCheckRepoIsStarredByAuthenticatedUserError401.parse(ApiResponse response) { return ActivityCheckRepoIsStarredByAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityCheckRepoIsStarredByAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityCheckRepoIsStarredByAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class ActivityCheckRepoIsStarredByAuthenticatedUserError403 extends ActivityCheckRepoIsStarredByAuthenticatedUserError {const ActivityCheckRepoIsStarredByAuthenticatedUserError403(this.data);

factory ActivityCheckRepoIsStarredByAuthenticatedUserError403.parse(ApiResponse response) { return ActivityCheckRepoIsStarredByAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityCheckRepoIsStarredByAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityCheckRepoIsStarredByAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class ActivityCheckRepoIsStarredByAuthenticatedUserError404 extends ActivityCheckRepoIsStarredByAuthenticatedUserError {const ActivityCheckRepoIsStarredByAuthenticatedUserError404(this.data);

factory ActivityCheckRepoIsStarredByAuthenticatedUserError404.parse(ApiResponse response) { return ActivityCheckRepoIsStarredByAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityCheckRepoIsStarredByAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityCheckRepoIsStarredByAuthenticatedUserError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActivityCheckRepoIsStarredByAuthenticatedUserError$Unknown extends ActivityCheckRepoIsStarredByAuthenticatedUserError {const ActivityCheckRepoIsStarredByAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityCheckRepoIsStarredByAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActivityCheckRepoIsStarredByAuthenticatedUserError.unknown($statusCode)'; } 
 }
