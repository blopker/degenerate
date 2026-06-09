// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_get_autofix_response503.dart';/// Error responses of `GET /repos/{owner}/{repo}/code-scanning/alerts/{alert_number}/autofix`.
sealed class CodeScanningGetAutofixError {const CodeScanningGetAutofixError();

/// Parse the variant matching the response status code.
factory CodeScanningGetAutofixError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => CodeScanningGetAutofixError400.parse(response),
  403 => CodeScanningGetAutofixError403.parse(response),
  404 => CodeScanningGetAutofixError404.parse(response),
  503 => CodeScanningGetAutofixError503.parse(response),
  _ => CodeScanningGetAutofixError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class CodeScanningGetAutofixError400 extends CodeScanningGetAutofixError {const CodeScanningGetAutofixError400(this.data);

factory CodeScanningGetAutofixError400.parse(ApiResponse response) { return CodeScanningGetAutofixError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetAutofixError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningGetAutofixError400($data)'; } 
 }
/// The `403` response.
@immutable final class CodeScanningGetAutofixError403 extends CodeScanningGetAutofixError {const CodeScanningGetAutofixError403(this.data);

factory CodeScanningGetAutofixError403.parse(ApiResponse response) { return CodeScanningGetAutofixError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetAutofixError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningGetAutofixError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodeScanningGetAutofixError404 extends CodeScanningGetAutofixError {const CodeScanningGetAutofixError404(this.data);

factory CodeScanningGetAutofixError404.parse(ApiResponse response) { return CodeScanningGetAutofixError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetAutofixError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningGetAutofixError404($data)'; } 
 }
/// The `503` response.
@immutable final class CodeScanningGetAutofixError503 extends CodeScanningGetAutofixError {const CodeScanningGetAutofixError503(this.data);

factory CodeScanningGetAutofixError503.parse(ApiResponse response) { return CodeScanningGetAutofixError503(CodeScanningGetAutofixResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodeScanningGetAutofixResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetAutofixError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningGetAutofixError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeScanningGetAutofixError$Unknown extends CodeScanningGetAutofixError {const CodeScanningGetAutofixError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetAutofixError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeScanningGetAutofixError.unknown($statusCode)'; } 
 }
