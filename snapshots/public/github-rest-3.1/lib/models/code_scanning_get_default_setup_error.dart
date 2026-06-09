// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_get_default_setup_response503.dart';/// Error responses of `GET /repos/{owner}/{repo}/code-scanning/default-setup`.
sealed class CodeScanningGetDefaultSetupError {const CodeScanningGetDefaultSetupError();

/// Parse the variant matching the response status code.
factory CodeScanningGetDefaultSetupError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => CodeScanningGetDefaultSetupError403.parse(response),
  404 => CodeScanningGetDefaultSetupError404.parse(response),
  503 => CodeScanningGetDefaultSetupError503.parse(response),
  _ => CodeScanningGetDefaultSetupError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class CodeScanningGetDefaultSetupError403 extends CodeScanningGetDefaultSetupError {const CodeScanningGetDefaultSetupError403(this.data);

factory CodeScanningGetDefaultSetupError403.parse(ApiResponse response) { return CodeScanningGetDefaultSetupError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetDefaultSetupError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningGetDefaultSetupError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodeScanningGetDefaultSetupError404 extends CodeScanningGetDefaultSetupError {const CodeScanningGetDefaultSetupError404(this.data);

factory CodeScanningGetDefaultSetupError404.parse(ApiResponse response) { return CodeScanningGetDefaultSetupError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetDefaultSetupError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningGetDefaultSetupError404($data)'; } 
 }
/// The `503` response.
@immutable final class CodeScanningGetDefaultSetupError503 extends CodeScanningGetDefaultSetupError {const CodeScanningGetDefaultSetupError503(this.data);

factory CodeScanningGetDefaultSetupError503.parse(ApiResponse response) { return CodeScanningGetDefaultSetupError503(CodeScanningGetDefaultSetupResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodeScanningGetDefaultSetupResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetDefaultSetupError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningGetDefaultSetupError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeScanningGetDefaultSetupError$Unknown extends CodeScanningGetDefaultSetupError {const CodeScanningGetDefaultSetupError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetDefaultSetupError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeScanningGetDefaultSetupError.unknown($statusCode)'; } 
 }
