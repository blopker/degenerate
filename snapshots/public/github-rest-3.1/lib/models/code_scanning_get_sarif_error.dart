// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_get_sarif_response503.dart';/// Error responses of `GET /repos/{owner}/{repo}/code-scanning/sarifs/{sarif_id}`.
sealed class CodeScanningGetSarifError {const CodeScanningGetSarifError();

/// Parse the variant matching the response status code.
factory CodeScanningGetSarifError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => CodeScanningGetSarifError403.parse(response),
  404 => CodeScanningGetSarifError404.parse(response),
  503 => CodeScanningGetSarifError503.parse(response),
  _ => CodeScanningGetSarifError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class CodeScanningGetSarifError403 extends CodeScanningGetSarifError {const CodeScanningGetSarifError403(this.data);

factory CodeScanningGetSarifError403.parse(ApiResponse response) { return CodeScanningGetSarifError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetSarifError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningGetSarifError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodeScanningGetSarifError404 extends CodeScanningGetSarifError {const CodeScanningGetSarifError404();

factory CodeScanningGetSarifError404.parse(ApiResponse _) { return const CodeScanningGetSarifError404(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodeScanningGetSarifError404; } 
@override int get hashCode { return (CodeScanningGetSarifError404).hashCode; } 
@override String toString() { return 'CodeScanningGetSarifError404()'; } 
 }
/// The `503` response.
@immutable final class CodeScanningGetSarifError503 extends CodeScanningGetSarifError {const CodeScanningGetSarifError503(this.data);

factory CodeScanningGetSarifError503.parse(ApiResponse response) { return CodeScanningGetSarifError503(CodeScanningGetSarifResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodeScanningGetSarifResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetSarifError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningGetSarifError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeScanningGetSarifError$Unknown extends CodeScanningGetSarifError {const CodeScanningGetSarifError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetSarifError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeScanningGetSarifError.unknown($statusCode)'; } 
 }
