// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_get_variant_analysis_response503.dart';/// Error responses of `GET /repos/{owner}/{repo}/code-scanning/codeql/variant-analyses/{codeql_variant_analysis_id}`.
sealed class CodeScanningGetVariantAnalysisError {const CodeScanningGetVariantAnalysisError();

/// Parse the variant matching the response status code.
factory CodeScanningGetVariantAnalysisError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => CodeScanningGetVariantAnalysisError404.parse(response),
  503 => CodeScanningGetVariantAnalysisError503.parse(response),
  _ => CodeScanningGetVariantAnalysisError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class CodeScanningGetVariantAnalysisError404 extends CodeScanningGetVariantAnalysisError {const CodeScanningGetVariantAnalysisError404(this.data);

factory CodeScanningGetVariantAnalysisError404.parse(ApiResponse response) { return CodeScanningGetVariantAnalysisError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetVariantAnalysisError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningGetVariantAnalysisError404($data)'; } 
 }
/// The `503` response.
@immutable final class CodeScanningGetVariantAnalysisError503 extends CodeScanningGetVariantAnalysisError {const CodeScanningGetVariantAnalysisError503(this.data);

factory CodeScanningGetVariantAnalysisError503.parse(ApiResponse response) { return CodeScanningGetVariantAnalysisError503(CodeScanningGetVariantAnalysisResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodeScanningGetVariantAnalysisResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetVariantAnalysisError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningGetVariantAnalysisError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeScanningGetVariantAnalysisError$Unknown extends CodeScanningGetVariantAnalysisError {const CodeScanningGetVariantAnalysisError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetVariantAnalysisError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeScanningGetVariantAnalysisError.unknown($statusCode)'; } 
 }
