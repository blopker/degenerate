// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_list_codeql_databases_response503.dart';/// Error responses of `GET /repos/{owner}/{repo}/code-scanning/codeql/databases`.
sealed class CodeScanningListCodeqlDatabasesError {const CodeScanningListCodeqlDatabasesError();

/// Parse the variant matching the response status code.
factory CodeScanningListCodeqlDatabasesError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => CodeScanningListCodeqlDatabasesError403.parse(response),
  404 => CodeScanningListCodeqlDatabasesError404.parse(response),
  503 => CodeScanningListCodeqlDatabasesError503.parse(response),
  _ => CodeScanningListCodeqlDatabasesError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class CodeScanningListCodeqlDatabasesError403 extends CodeScanningListCodeqlDatabasesError {const CodeScanningListCodeqlDatabasesError403(this.data);

factory CodeScanningListCodeqlDatabasesError403.parse(ApiResponse response) { return CodeScanningListCodeqlDatabasesError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningListCodeqlDatabasesError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningListCodeqlDatabasesError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodeScanningListCodeqlDatabasesError404 extends CodeScanningListCodeqlDatabasesError {const CodeScanningListCodeqlDatabasesError404(this.data);

factory CodeScanningListCodeqlDatabasesError404.parse(ApiResponse response) { return CodeScanningListCodeqlDatabasesError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningListCodeqlDatabasesError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningListCodeqlDatabasesError404($data)'; } 
 }
/// The `503` response.
@immutable final class CodeScanningListCodeqlDatabasesError503 extends CodeScanningListCodeqlDatabasesError {const CodeScanningListCodeqlDatabasesError503(this.data);

factory CodeScanningListCodeqlDatabasesError503.parse(ApiResponse response) { return CodeScanningListCodeqlDatabasesError503(CodeScanningListCodeqlDatabasesResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodeScanningListCodeqlDatabasesResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningListCodeqlDatabasesError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningListCodeqlDatabasesError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeScanningListCodeqlDatabasesError$Unknown extends CodeScanningListCodeqlDatabasesError {const CodeScanningListCodeqlDatabasesError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningListCodeqlDatabasesError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeScanningListCodeqlDatabasesError.unknown($statusCode)'; } 
 }
