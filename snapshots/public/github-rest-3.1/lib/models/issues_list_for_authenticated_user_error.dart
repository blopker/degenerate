// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /user/issues`.
sealed class IssuesListForAuthenticatedUserError {const IssuesListForAuthenticatedUserError();

/// Parse the variant matching the response status code.
factory IssuesListForAuthenticatedUserError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => IssuesListForAuthenticatedUserError304.parse(response),
  404 => IssuesListForAuthenticatedUserError404.parse(response),
  _ => IssuesListForAuthenticatedUserError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class IssuesListForAuthenticatedUserError304 extends IssuesListForAuthenticatedUserError {const IssuesListForAuthenticatedUserError304();

factory IssuesListForAuthenticatedUserError304.parse(ApiResponse _) { return const IssuesListForAuthenticatedUserError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is IssuesListForAuthenticatedUserError304; } 
@override int get hashCode { return (IssuesListForAuthenticatedUserError304).hashCode; } 
@override String toString() { return 'IssuesListForAuthenticatedUserError304()'; } 
 }
/// The `404` response.
@immutable final class IssuesListForAuthenticatedUserError404 extends IssuesListForAuthenticatedUserError {const IssuesListForAuthenticatedUserError404(this.data);

factory IssuesListForAuthenticatedUserError404.parse(ApiResponse response) { return IssuesListForAuthenticatedUserError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesListForAuthenticatedUserError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'IssuesListForAuthenticatedUserError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class IssuesListForAuthenticatedUserError$Unknown extends IssuesListForAuthenticatedUserError {const IssuesListForAuthenticatedUserError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuesListForAuthenticatedUserError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'IssuesListForAuthenticatedUserError.unknown($statusCode)'; } 
 }
