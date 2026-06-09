// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_get_alert_response503.dart';/// Error responses of `GET /repos/{owner}/{repo}/code-scanning/alerts/{alert_number}`.
sealed class CodeScanningGetAlertError {const CodeScanningGetAlertError();

/// Parse the variant matching the response status code.
factory CodeScanningGetAlertError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => CodeScanningGetAlertError304.parse(response),
  403 => CodeScanningGetAlertError403.parse(response),
  404 => CodeScanningGetAlertError404.parse(response),
  503 => CodeScanningGetAlertError503.parse(response),
  _ => CodeScanningGetAlertError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class CodeScanningGetAlertError304 extends CodeScanningGetAlertError {const CodeScanningGetAlertError304();

factory CodeScanningGetAlertError304.parse(ApiResponse _) { return const CodeScanningGetAlertError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodeScanningGetAlertError304; } 
@override int get hashCode { return (CodeScanningGetAlertError304).hashCode; } 
@override String toString() { return 'CodeScanningGetAlertError304()'; } 
 }
/// The `403` response.
@immutable final class CodeScanningGetAlertError403 extends CodeScanningGetAlertError {const CodeScanningGetAlertError403(this.data);

factory CodeScanningGetAlertError403.parse(ApiResponse response) { return CodeScanningGetAlertError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetAlertError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningGetAlertError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodeScanningGetAlertError404 extends CodeScanningGetAlertError {const CodeScanningGetAlertError404(this.data);

factory CodeScanningGetAlertError404.parse(ApiResponse response) { return CodeScanningGetAlertError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetAlertError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningGetAlertError404($data)'; } 
 }
/// The `503` response.
@immutable final class CodeScanningGetAlertError503 extends CodeScanningGetAlertError {const CodeScanningGetAlertError503(this.data);

factory CodeScanningGetAlertError503.parse(ApiResponse response) { return CodeScanningGetAlertError503(CodeScanningGetAlertResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodeScanningGetAlertResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetAlertError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningGetAlertError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeScanningGetAlertError$Unknown extends CodeScanningGetAlertError {const CodeScanningGetAlertError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetAlertError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeScanningGetAlertError.unknown($statusCode)'; } 
 }
