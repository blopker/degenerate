// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_get_codeql_database_response503.dart';/// Error responses of `GET /repos/{owner}/{repo}/code-scanning/codeql/databases/{language}`.
sealed class CodeScanningGetCodeqlDatabaseError {const CodeScanningGetCodeqlDatabaseError();

/// Parse the variant matching the response status code.
factory CodeScanningGetCodeqlDatabaseError.parse(ApiResponse response) { return switch (response.statusCode) {
  302 => CodeScanningGetCodeqlDatabaseError302.parse(response),
  403 => CodeScanningGetCodeqlDatabaseError403.parse(response),
  404 => CodeScanningGetCodeqlDatabaseError404.parse(response),
  503 => CodeScanningGetCodeqlDatabaseError503.parse(response),
  _ => CodeScanningGetCodeqlDatabaseError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `302` response.
@immutable final class CodeScanningGetCodeqlDatabaseError302 extends CodeScanningGetCodeqlDatabaseError {const CodeScanningGetCodeqlDatabaseError302();

factory CodeScanningGetCodeqlDatabaseError302.parse(ApiResponse _) { return const CodeScanningGetCodeqlDatabaseError302(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodeScanningGetCodeqlDatabaseError302; } 
@override int get hashCode { return (CodeScanningGetCodeqlDatabaseError302).hashCode; } 
@override String toString() { return 'CodeScanningGetCodeqlDatabaseError302()'; } 
 }
/// The `403` response.
@immutable final class CodeScanningGetCodeqlDatabaseError403 extends CodeScanningGetCodeqlDatabaseError {const CodeScanningGetCodeqlDatabaseError403(this.data);

factory CodeScanningGetCodeqlDatabaseError403.parse(ApiResponse response) { return CodeScanningGetCodeqlDatabaseError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetCodeqlDatabaseError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningGetCodeqlDatabaseError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodeScanningGetCodeqlDatabaseError404 extends CodeScanningGetCodeqlDatabaseError {const CodeScanningGetCodeqlDatabaseError404(this.data);

factory CodeScanningGetCodeqlDatabaseError404.parse(ApiResponse response) { return CodeScanningGetCodeqlDatabaseError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetCodeqlDatabaseError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningGetCodeqlDatabaseError404($data)'; } 
 }
/// The `503` response.
@immutable final class CodeScanningGetCodeqlDatabaseError503 extends CodeScanningGetCodeqlDatabaseError {const CodeScanningGetCodeqlDatabaseError503(this.data);

factory CodeScanningGetCodeqlDatabaseError503.parse(ApiResponse response) { return CodeScanningGetCodeqlDatabaseError503(CodeScanningGetCodeqlDatabaseResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodeScanningGetCodeqlDatabaseResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetCodeqlDatabaseError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningGetCodeqlDatabaseError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeScanningGetCodeqlDatabaseError$Unknown extends CodeScanningGetCodeqlDatabaseError {const CodeScanningGetCodeqlDatabaseError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetCodeqlDatabaseError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeScanningGetCodeqlDatabaseError.unknown($statusCode)'; } 
 }
