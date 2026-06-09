// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `GET /orgs/{org}/dependabot/alerts`.
sealed class DependabotListAlertsForOrgError {const DependabotListAlertsForOrgError();

/// Parse the variant matching the response status code.
factory DependabotListAlertsForOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => DependabotListAlertsForOrgError304.parse(response),
  400 => DependabotListAlertsForOrgError400.parse(response),
  403 => DependabotListAlertsForOrgError403.parse(response),
  404 => DependabotListAlertsForOrgError404.parse(response),
  422 => DependabotListAlertsForOrgError422.parse(response),
  _ => DependabotListAlertsForOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class DependabotListAlertsForOrgError304 extends DependabotListAlertsForOrgError {const DependabotListAlertsForOrgError304();

factory DependabotListAlertsForOrgError304.parse(ApiResponse _) { return const DependabotListAlertsForOrgError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is DependabotListAlertsForOrgError304; } 
@override int get hashCode { return (DependabotListAlertsForOrgError304).hashCode; } 
@override String toString() { return 'DependabotListAlertsForOrgError304()'; } 
 }
/// The `400` response.
@immutable final class DependabotListAlertsForOrgError400 extends DependabotListAlertsForOrgError {const DependabotListAlertsForOrgError400(this.data);

factory DependabotListAlertsForOrgError400.parse(ApiResponse response) { return DependabotListAlertsForOrgError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotListAlertsForOrgError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DependabotListAlertsForOrgError400($data)'; } 
 }
/// The `403` response.
@immutable final class DependabotListAlertsForOrgError403 extends DependabotListAlertsForOrgError {const DependabotListAlertsForOrgError403(this.data);

factory DependabotListAlertsForOrgError403.parse(ApiResponse response) { return DependabotListAlertsForOrgError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotListAlertsForOrgError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DependabotListAlertsForOrgError403($data)'; } 
 }
/// The `404` response.
@immutable final class DependabotListAlertsForOrgError404 extends DependabotListAlertsForOrgError {const DependabotListAlertsForOrgError404(this.data);

factory DependabotListAlertsForOrgError404.parse(ApiResponse response) { return DependabotListAlertsForOrgError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotListAlertsForOrgError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DependabotListAlertsForOrgError404($data)'; } 
 }
/// The `422` response.
@immutable final class DependabotListAlertsForOrgError422 extends DependabotListAlertsForOrgError {const DependabotListAlertsForOrgError422(this.data);

factory DependabotListAlertsForOrgError422.parse(ApiResponse response) { return DependabotListAlertsForOrgError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotListAlertsForOrgError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DependabotListAlertsForOrgError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class DependabotListAlertsForOrgError$Unknown extends DependabotListAlertsForOrgError {const DependabotListAlertsForOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotListAlertsForOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'DependabotListAlertsForOrgError.unknown($statusCode)'; } 
 }
