// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_delete_codeql_database_response503.dart';/// Error responses of `DELETE /repos/{owner}/{repo}/code-scanning/codeql/databases/{language}`.
sealed class CodeScanningDeleteCodeqlDatabaseError {const CodeScanningDeleteCodeqlDatabaseError();

/// Parse the variant matching the response status code.
factory CodeScanningDeleteCodeqlDatabaseError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => CodeScanningDeleteCodeqlDatabaseError403.parse(response),
  404 => CodeScanningDeleteCodeqlDatabaseError404.parse(response),
  503 => CodeScanningDeleteCodeqlDatabaseError503.parse(response),
  _ => CodeScanningDeleteCodeqlDatabaseError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class CodeScanningDeleteCodeqlDatabaseError403 extends CodeScanningDeleteCodeqlDatabaseError {const CodeScanningDeleteCodeqlDatabaseError403(this.data);

factory CodeScanningDeleteCodeqlDatabaseError403.parse(ApiResponse response) { return CodeScanningDeleteCodeqlDatabaseError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningDeleteCodeqlDatabaseError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningDeleteCodeqlDatabaseError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodeScanningDeleteCodeqlDatabaseError404 extends CodeScanningDeleteCodeqlDatabaseError {const CodeScanningDeleteCodeqlDatabaseError404(this.data);

factory CodeScanningDeleteCodeqlDatabaseError404.parse(ApiResponse response) { return CodeScanningDeleteCodeqlDatabaseError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningDeleteCodeqlDatabaseError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningDeleteCodeqlDatabaseError404($data)'; } 
 }
/// The `503` response.
@immutable final class CodeScanningDeleteCodeqlDatabaseError503 extends CodeScanningDeleteCodeqlDatabaseError {const CodeScanningDeleteCodeqlDatabaseError503(this.data);

factory CodeScanningDeleteCodeqlDatabaseError503.parse(ApiResponse response) { return CodeScanningDeleteCodeqlDatabaseError503(CodeScanningDeleteCodeqlDatabaseResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodeScanningDeleteCodeqlDatabaseResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningDeleteCodeqlDatabaseError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningDeleteCodeqlDatabaseError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeScanningDeleteCodeqlDatabaseError$Unknown extends CodeScanningDeleteCodeqlDatabaseError {const CodeScanningDeleteCodeqlDatabaseError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningDeleteCodeqlDatabaseError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeScanningDeleteCodeqlDatabaseError.unknown($statusCode)'; } 
 }
