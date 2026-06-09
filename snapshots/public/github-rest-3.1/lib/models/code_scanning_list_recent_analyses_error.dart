// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_list_recent_analyses_response503.dart';/// Error responses of `GET /repos/{owner}/{repo}/code-scanning/analyses`.
sealed class CodeScanningListRecentAnalysesError {const CodeScanningListRecentAnalysesError();

/// Parse the variant matching the response status code.
factory CodeScanningListRecentAnalysesError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => CodeScanningListRecentAnalysesError403.parse(response),
  404 => CodeScanningListRecentAnalysesError404.parse(response),
  503 => CodeScanningListRecentAnalysesError503.parse(response),
  _ => CodeScanningListRecentAnalysesError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class CodeScanningListRecentAnalysesError403 extends CodeScanningListRecentAnalysesError {const CodeScanningListRecentAnalysesError403(this.data);

factory CodeScanningListRecentAnalysesError403.parse(ApiResponse response) { return CodeScanningListRecentAnalysesError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningListRecentAnalysesError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningListRecentAnalysesError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodeScanningListRecentAnalysesError404 extends CodeScanningListRecentAnalysesError {const CodeScanningListRecentAnalysesError404(this.data);

factory CodeScanningListRecentAnalysesError404.parse(ApiResponse response) { return CodeScanningListRecentAnalysesError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningListRecentAnalysesError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningListRecentAnalysesError404($data)'; } 
 }
/// The `503` response.
@immutable final class CodeScanningListRecentAnalysesError503 extends CodeScanningListRecentAnalysesError {const CodeScanningListRecentAnalysesError503(this.data);

factory CodeScanningListRecentAnalysesError503.parse(ApiResponse response) { return CodeScanningListRecentAnalysesError503(CodeScanningListRecentAnalysesResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodeScanningListRecentAnalysesResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningListRecentAnalysesError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningListRecentAnalysesError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeScanningListRecentAnalysesError$Unknown extends CodeScanningListRecentAnalysesError {const CodeScanningListRecentAnalysesError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningListRecentAnalysesError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeScanningListRecentAnalysesError.unknown($statusCode)'; } 
 }
