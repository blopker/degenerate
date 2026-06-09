// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `DELETE /user/starred/{owner}/{repo}`.
sealed class ActivityUnstarRepoForAuthenticatedUserError {const ActivityUnstarRepoForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory ActivityUnstarRepoForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ActivityUnstarRepoForAuthenticatedUserError304.parse(response),
  401 => ActivityUnstarRepoForAuthenticatedUserError401.parse(response),
  403 => ActivityUnstarRepoForAuthenticatedUserError403.parse(response),
  404 => ActivityUnstarRepoForAuthenticatedUserError404.parse(response),
  _ => ActivityUnstarRepoForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ActivityUnstarRepoForAuthenticatedUserError304 extends ActivityUnstarRepoForAuthenticatedUserError {const ActivityUnstarRepoForAuthenticatedUserError304();

factory ActivityUnstarRepoForAuthenticatedUserError304.parse(ApiResponse _) { return const ActivityUnstarRepoForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ActivityUnstarRepoForAuthenticatedUserError304; } 
@override int get hashCode { return (ActivityUnstarRepoForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'ActivityUnstarRepoForAuthenticatedUserError304()'; } 
 }
/// The `401` response.
@immutable final class ActivityUnstarRepoForAuthenticatedUserError401 extends ActivityUnstarRepoForAuthenticatedUserError {const ActivityUnstarRepoForAuthenticatedUserError401(this.data);

factory ActivityUnstarRepoForAuthenticatedUserError401.parse(ApiResponse response) { return ActivityUnstarRepoForAuthenticatedUserError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityUnstarRepoForAuthenticatedUserError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityUnstarRepoForAuthenticatedUserError401($data)'; } 
 }
/// The `403` response.
@immutable final class ActivityUnstarRepoForAuthenticatedUserError403 extends ActivityUnstarRepoForAuthenticatedUserError {const ActivityUnstarRepoForAuthenticatedUserError403(this.data);

factory ActivityUnstarRepoForAuthenticatedUserError403.parse(ApiResponse response) { return ActivityUnstarRepoForAuthenticatedUserError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityUnstarRepoForAuthenticatedUserError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityUnstarRepoForAuthenticatedUserError403($data)'; } 
 }
/// The `404` response.
@immutable final class ActivityUnstarRepoForAuthenticatedUserError404 extends ActivityUnstarRepoForAuthenticatedUserError {const ActivityUnstarRepoForAuthenticatedUserError404(this.data);

factory ActivityUnstarRepoForAuthenticatedUserError404.parse(ApiResponse response) { return ActivityUnstarRepoForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityUnstarRepoForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityUnstarRepoForAuthenticatedUserError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActivityUnstarRepoForAuthenticatedUserError$Unknown extends ActivityUnstarRepoForAuthenticatedUserError {const ActivityUnstarRepoForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityUnstarRepoForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActivityUnstarRepoForAuthenticatedUserError.unknown($statusCode)'; } 
 }
