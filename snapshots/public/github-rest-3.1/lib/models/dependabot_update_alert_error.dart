// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error responses of `PATCH /repos/{owner}/{repo}/dependabot/alerts/{alert_number}`.
sealed class DependabotUpdateAlertError {const DependabotUpdateAlertError();

/// Parse the variant matching the response status code.
factory DependabotUpdateAlertError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => DependabotUpdateAlertError400.parse(response),
  403 => DependabotUpdateAlertError403.parse(response),
  404 => DependabotUpdateAlertError404.parse(response),
  409 => DependabotUpdateAlertError409.parse(response),
  422 => DependabotUpdateAlertError422.parse(response),
  _ => DependabotUpdateAlertError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class DependabotUpdateAlertError400 extends DependabotUpdateAlertError {const DependabotUpdateAlertError400(this.data);

factory DependabotUpdateAlertError400.parse(ApiResponse response) { return DependabotUpdateAlertError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotUpdateAlertError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DependabotUpdateAlertError400($data)'; } 
 }
/// The `403` response.
@immutable final class DependabotUpdateAlertError403 extends DependabotUpdateAlertError {const DependabotUpdateAlertError403(this.data);

factory DependabotUpdateAlertError403.parse(ApiResponse response) { return DependabotUpdateAlertError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotUpdateAlertError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DependabotUpdateAlertError403($data)'; } 
 }
/// The `404` response.
@immutable final class DependabotUpdateAlertError404 extends DependabotUpdateAlertError {const DependabotUpdateAlertError404(this.data);

factory DependabotUpdateAlertError404.parse(ApiResponse response) { return DependabotUpdateAlertError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotUpdateAlertError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DependabotUpdateAlertError404($data)'; } 
 }
/// The `409` response.
@immutable final class DependabotUpdateAlertError409 extends DependabotUpdateAlertError {const DependabotUpdateAlertError409(this.data);

factory DependabotUpdateAlertError409.parse(ApiResponse response) { return DependabotUpdateAlertError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotUpdateAlertError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DependabotUpdateAlertError409($data)'; } 
 }
/// The `422` response.
@immutable final class DependabotUpdateAlertError422 extends DependabotUpdateAlertError {const DependabotUpdateAlertError422(this.data);

factory DependabotUpdateAlertError422.parse(ApiResponse response) { return DependabotUpdateAlertError422(ValidationErrorSimple.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationErrorSimple data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotUpdateAlertError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DependabotUpdateAlertError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class DependabotUpdateAlertError$Unknown extends DependabotUpdateAlertError {const DependabotUpdateAlertError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DependabotUpdateAlertError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'DependabotUpdateAlertError.unknown($statusCode)'; } 
 }
