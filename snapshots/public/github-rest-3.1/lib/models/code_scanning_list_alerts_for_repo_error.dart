// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_list_alerts_for_repo_response503.dart';/// Error responses of `GET /repos/{owner}/{repo}/code-scanning/alerts`.
sealed class CodeScanningListAlertsForRepoError {const CodeScanningListAlertsForRepoError();

/// Parse the variant matching the response status code.
factory CodeScanningListAlertsForRepoError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => CodeScanningListAlertsForRepoError304.parse(response),
  403 => CodeScanningListAlertsForRepoError403.parse(response),
  404 => CodeScanningListAlertsForRepoError404.parse(response),
  503 => CodeScanningListAlertsForRepoError503.parse(response),
  _ => CodeScanningListAlertsForRepoError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class CodeScanningListAlertsForRepoError304 extends CodeScanningListAlertsForRepoError {const CodeScanningListAlertsForRepoError304();

factory CodeScanningListAlertsForRepoError304.parse(ApiResponse _) { return const CodeScanningListAlertsForRepoError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodeScanningListAlertsForRepoError304; } 
@override int get hashCode { return (CodeScanningListAlertsForRepoError304).hashCode; } 
@override String toString() { return 'CodeScanningListAlertsForRepoError304()'; } 
 }
/// The `403` response.
@immutable final class CodeScanningListAlertsForRepoError403 extends CodeScanningListAlertsForRepoError {const CodeScanningListAlertsForRepoError403(this.data);

factory CodeScanningListAlertsForRepoError403.parse(ApiResponse response) { return CodeScanningListAlertsForRepoError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningListAlertsForRepoError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningListAlertsForRepoError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodeScanningListAlertsForRepoError404 extends CodeScanningListAlertsForRepoError {const CodeScanningListAlertsForRepoError404(this.data);

factory CodeScanningListAlertsForRepoError404.parse(ApiResponse response) { return CodeScanningListAlertsForRepoError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningListAlertsForRepoError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningListAlertsForRepoError404($data)'; } 
 }
/// The `503` response.
@immutable final class CodeScanningListAlertsForRepoError503 extends CodeScanningListAlertsForRepoError {const CodeScanningListAlertsForRepoError503(this.data);

factory CodeScanningListAlertsForRepoError503.parse(ApiResponse response) { return CodeScanningListAlertsForRepoError503(CodeScanningListAlertsForRepoResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodeScanningListAlertsForRepoResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningListAlertsForRepoError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningListAlertsForRepoError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeScanningListAlertsForRepoError$Unknown extends CodeScanningListAlertsForRepoError {const CodeScanningListAlertsForRepoError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningListAlertsForRepoError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeScanningListAlertsForRepoError.unknown($statusCode)'; } 
 }
