// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PATCH /orgs/{org}/teams/{team_slug}`.
sealed class TeamsUpdateInOrgError {const TeamsUpdateInOrgError();

/// Parse the variant matching the response status code.
factory TeamsUpdateInOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => TeamsUpdateInOrgError403.parse(response),
  404 => TeamsUpdateInOrgError404.parse(response),
  422 => TeamsUpdateInOrgError422.parse(response),
  _ => TeamsUpdateInOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class TeamsUpdateInOrgError403 extends TeamsUpdateInOrgError {const TeamsUpdateInOrgError403(this.data);

factory TeamsUpdateInOrgError403.parse(ApiResponse response) { return TeamsUpdateInOrgError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsUpdateInOrgError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'TeamsUpdateInOrgError403($data)'; } 
 }
/// The `404` response.
@immutable final class TeamsUpdateInOrgError404 extends TeamsUpdateInOrgError {const TeamsUpdateInOrgError404(this.data);

factory TeamsUpdateInOrgError404.parse(ApiResponse response) { return TeamsUpdateInOrgError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsUpdateInOrgError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'TeamsUpdateInOrgError404($data)'; } 
 }
/// The `422` response.
@immutable final class TeamsUpdateInOrgError422 extends TeamsUpdateInOrgError {const TeamsUpdateInOrgError422(this.data);

factory TeamsUpdateInOrgError422.parse(ApiResponse response) { return TeamsUpdateInOrgError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsUpdateInOrgError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'TeamsUpdateInOrgError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class TeamsUpdateInOrgError$Unknown extends TeamsUpdateInOrgError {const TeamsUpdateInOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsUpdateInOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'TeamsUpdateInOrgError.unknown($statusCode)'; } 
 }
