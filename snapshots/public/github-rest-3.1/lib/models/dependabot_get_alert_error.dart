// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /repos/{owner}/{repo}/dependabot/alerts/{alert_number}`.
sealed class DependabotGetAlertError {const DependabotGetAlertError();

/// Parse the variant matching the response status code.
factory DependabotGetAlertError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => DependabotGetAlertError304.parse(response),
  403 => DependabotGetAlertError403.parse(response),
  404 => DependabotGetAlertError404.parse(response),
  _ => DependabotGetAlertError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class DependabotGetAlertError304 extends DependabotGetAlertError {const DependabotGetAlertError304();

factory DependabotGetAlertError304.parse(ApiResponse _) { return const DependabotGetAlertError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is DependabotGetAlertError304; } 
@override int get hashCode { return (DependabotGetAlertError304).hashCode; } 
@override String toString() { return 'DependabotGetAlertError304()'; } 
 }
/// The `403` response.
@immutable final class DependabotGetAlertError403 extends DependabotGetAlertError {const DependabotGetAlertError403(this.data);

factory DependabotGetAlertError403.parse(ApiResponse response) { return DependabotGetAlertError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotGetAlertError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DependabotGetAlertError403($data)'; } 
 }
/// The `404` response.
@immutable final class DependabotGetAlertError404 extends DependabotGetAlertError {const DependabotGetAlertError404(this.data);

factory DependabotGetAlertError404.parse(ApiResponse response) { return DependabotGetAlertError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotGetAlertError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DependabotGetAlertError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class DependabotGetAlertError$Unknown extends DependabotGetAlertError {const DependabotGetAlertError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotGetAlertError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'DependabotGetAlertError.unknown($statusCode)'; } 
 }
