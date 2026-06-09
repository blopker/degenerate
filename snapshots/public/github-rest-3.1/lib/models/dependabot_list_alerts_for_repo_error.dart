// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `GET /repos/{owner}/{repo}/dependabot/alerts`.
sealed class DependabotListAlertsForRepoError {const DependabotListAlertsForRepoError();

/// Parse the variant matching the response status code.
factory DependabotListAlertsForRepoError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => DependabotListAlertsForRepoError304.parse(response),
  400 => DependabotListAlertsForRepoError400.parse(response),
  403 => DependabotListAlertsForRepoError403.parse(response),
  404 => DependabotListAlertsForRepoError404.parse(response),
  422 => DependabotListAlertsForRepoError422.parse(response),
  _ => DependabotListAlertsForRepoError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class DependabotListAlertsForRepoError304 extends DependabotListAlertsForRepoError {const DependabotListAlertsForRepoError304();

factory DependabotListAlertsForRepoError304.parse(ApiResponse _) { return const DependabotListAlertsForRepoError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is DependabotListAlertsForRepoError304; } 
@override int get hashCode { return (DependabotListAlertsForRepoError304).hashCode; } 
@override String toString() { return 'DependabotListAlertsForRepoError304()'; } 
 }
/// The `400` response.
@immutable final class DependabotListAlertsForRepoError400 extends DependabotListAlertsForRepoError {const DependabotListAlertsForRepoError400(this.data);

factory DependabotListAlertsForRepoError400.parse(ApiResponse response) { return DependabotListAlertsForRepoError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotListAlertsForRepoError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DependabotListAlertsForRepoError400($data)'; } 
 }
/// The `403` response.
@immutable final class DependabotListAlertsForRepoError403 extends DependabotListAlertsForRepoError {const DependabotListAlertsForRepoError403(this.data);

factory DependabotListAlertsForRepoError403.parse(ApiResponse response) { return DependabotListAlertsForRepoError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotListAlertsForRepoError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DependabotListAlertsForRepoError403($data)'; } 
 }
/// The `404` response.
@immutable final class DependabotListAlertsForRepoError404 extends DependabotListAlertsForRepoError {const DependabotListAlertsForRepoError404(this.data);

factory DependabotListAlertsForRepoError404.parse(ApiResponse response) { return DependabotListAlertsForRepoError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotListAlertsForRepoError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DependabotListAlertsForRepoError404($data)'; } 
 }
/// The `422` response.
@immutable final class DependabotListAlertsForRepoError422 extends DependabotListAlertsForRepoError {const DependabotListAlertsForRepoError422(this.data);

factory DependabotListAlertsForRepoError422.parse(ApiResponse response) { return DependabotListAlertsForRepoError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotListAlertsForRepoError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DependabotListAlertsForRepoError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class DependabotListAlertsForRepoError$Unknown extends DependabotListAlertsForRepoError {const DependabotListAlertsForRepoError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotListAlertsForRepoError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'DependabotListAlertsForRepoError.unknown($statusCode)'; } 
 }
