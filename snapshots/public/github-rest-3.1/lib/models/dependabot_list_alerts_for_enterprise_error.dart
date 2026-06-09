// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `GET /enterprises/{enterprise}/dependabot/alerts`.
sealed class DependabotListAlertsForEnterpriseError {const DependabotListAlertsForEnterpriseError();

/// Parse the variant matching the response status code.
factory DependabotListAlertsForEnterpriseError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => DependabotListAlertsForEnterpriseError304.parse(response),
  403 => DependabotListAlertsForEnterpriseError403.parse(response),
  404 => DependabotListAlertsForEnterpriseError404.parse(response),
  422 => DependabotListAlertsForEnterpriseError422.parse(response),
  _ => DependabotListAlertsForEnterpriseError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class DependabotListAlertsForEnterpriseError304 extends DependabotListAlertsForEnterpriseError {const DependabotListAlertsForEnterpriseError304();

factory DependabotListAlertsForEnterpriseError304.parse(ApiResponse _) { return const DependabotListAlertsForEnterpriseError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is DependabotListAlertsForEnterpriseError304; } 
@override int get hashCode { return (DependabotListAlertsForEnterpriseError304).hashCode; } 
@override String toString() { return 'DependabotListAlertsForEnterpriseError304()'; } 
 }
/// The `403` response.
@immutable final class DependabotListAlertsForEnterpriseError403 extends DependabotListAlertsForEnterpriseError {const DependabotListAlertsForEnterpriseError403(this.data);

factory DependabotListAlertsForEnterpriseError403.parse(ApiResponse response) { return DependabotListAlertsForEnterpriseError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotListAlertsForEnterpriseError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DependabotListAlertsForEnterpriseError403($data)'; } 
 }
/// The `404` response.
@immutable final class DependabotListAlertsForEnterpriseError404 extends DependabotListAlertsForEnterpriseError {const DependabotListAlertsForEnterpriseError404(this.data);

factory DependabotListAlertsForEnterpriseError404.parse(ApiResponse response) { return DependabotListAlertsForEnterpriseError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotListAlertsForEnterpriseError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DependabotListAlertsForEnterpriseError404($data)'; } 
 }
/// The `422` response.
@immutable final class DependabotListAlertsForEnterpriseError422 extends DependabotListAlertsForEnterpriseError {const DependabotListAlertsForEnterpriseError422(this.data);

factory DependabotListAlertsForEnterpriseError422.parse(ApiResponse response) { return DependabotListAlertsForEnterpriseError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotListAlertsForEnterpriseError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DependabotListAlertsForEnterpriseError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class DependabotListAlertsForEnterpriseError$Unknown extends DependabotListAlertsForEnterpriseError {const DependabotListAlertsForEnterpriseError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotListAlertsForEnterpriseError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'DependabotListAlertsForEnterpriseError.unknown($statusCode)'; } 
 }
