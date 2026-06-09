// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_update_alert_response503.dart';/// Error responses of `PATCH /repos/{owner}/{repo}/code-scanning/alerts/{alert_number}`.
sealed class CodeScanningUpdateAlertError {const CodeScanningUpdateAlertError();

/// Parse the variant matching the response status code.
factory CodeScanningUpdateAlertError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => CodeScanningUpdateAlertError400.parse(response),
  403 => CodeScanningUpdateAlertError403.parse(response),
  404 => CodeScanningUpdateAlertError404.parse(response),
  503 => CodeScanningUpdateAlertError503.parse(response),
  _ => CodeScanningUpdateAlertError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class CodeScanningUpdateAlertError400 extends CodeScanningUpdateAlertError {const CodeScanningUpdateAlertError400(this.data);

factory CodeScanningUpdateAlertError400.parse(ApiResponse response) { return CodeScanningUpdateAlertError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningUpdateAlertError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningUpdateAlertError400($data)'; } 
 }
/// The `403` response.
@immutable final class CodeScanningUpdateAlertError403 extends CodeScanningUpdateAlertError {const CodeScanningUpdateAlertError403(this.data);

factory CodeScanningUpdateAlertError403.parse(ApiResponse response) { return CodeScanningUpdateAlertError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningUpdateAlertError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningUpdateAlertError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodeScanningUpdateAlertError404 extends CodeScanningUpdateAlertError {const CodeScanningUpdateAlertError404(this.data);

factory CodeScanningUpdateAlertError404.parse(ApiResponse response) { return CodeScanningUpdateAlertError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningUpdateAlertError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningUpdateAlertError404($data)'; } 
 }
/// The `503` response.
@immutable final class CodeScanningUpdateAlertError503 extends CodeScanningUpdateAlertError {const CodeScanningUpdateAlertError503(this.data);

factory CodeScanningUpdateAlertError503.parse(ApiResponse response) { return CodeScanningUpdateAlertError503(CodeScanningUpdateAlertResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodeScanningUpdateAlertResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningUpdateAlertError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningUpdateAlertError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeScanningUpdateAlertError$Unknown extends CodeScanningUpdateAlertError {const CodeScanningUpdateAlertError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningUpdateAlertError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeScanningUpdateAlertError.unknown($statusCode)'; } 
 }
