// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_get_variant_analysis_repo_task_response503.dart';/// Error responses of `GET /repos/{owner}/{repo}/code-scanning/codeql/variant-analyses/{codeql_variant_analysis_id}/repos/{repo_owner}/{repo_name}`.
sealed class CodeScanningGetVariantAnalysisRepoTaskError {const CodeScanningGetVariantAnalysisRepoTaskError();

/// Parse the variant matching the response status code.
factory CodeScanningGetVariantAnalysisRepoTaskError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => CodeScanningGetVariantAnalysisRepoTaskError404.parse(response),
  503 => CodeScanningGetVariantAnalysisRepoTaskError503.parse(response),
  _ => CodeScanningGetVariantAnalysisRepoTaskError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class CodeScanningGetVariantAnalysisRepoTaskError404 extends CodeScanningGetVariantAnalysisRepoTaskError {const CodeScanningGetVariantAnalysisRepoTaskError404(this.data);

factory CodeScanningGetVariantAnalysisRepoTaskError404.parse(ApiResponse response) { return CodeScanningGetVariantAnalysisRepoTaskError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetVariantAnalysisRepoTaskError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningGetVariantAnalysisRepoTaskError404($data)'; } 
 }
/// The `503` response.
@immutable final class CodeScanningGetVariantAnalysisRepoTaskError503 extends CodeScanningGetVariantAnalysisRepoTaskError {const CodeScanningGetVariantAnalysisRepoTaskError503(this.data);

factory CodeScanningGetVariantAnalysisRepoTaskError503.parse(ApiResponse response) { return CodeScanningGetVariantAnalysisRepoTaskError503(CodeScanningGetVariantAnalysisRepoTaskResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodeScanningGetVariantAnalysisRepoTaskResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetVariantAnalysisRepoTaskError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningGetVariantAnalysisRepoTaskError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeScanningGetVariantAnalysisRepoTaskError$Unknown extends CodeScanningGetVariantAnalysisRepoTaskError {const CodeScanningGetVariantAnalysisRepoTaskError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningGetVariantAnalysisRepoTaskError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeScanningGetVariantAnalysisRepoTaskError.unknown($statusCode)'; } 
 }
