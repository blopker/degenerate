// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_create_variant_analysis_response503.dart';/// Error responses of `POST /repos/{owner}/{repo}/code-scanning/codeql/variant-analyses`.
sealed class CodeScanningCreateVariantAnalysisError {const CodeScanningCreateVariantAnalysisError();

/// Parse the variant matching the response status code.
factory CodeScanningCreateVariantAnalysisError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => CodeScanningCreateVariantAnalysisError404.parse(response),
  422 => CodeScanningCreateVariantAnalysisError422.parse(response),
  503 => CodeScanningCreateVariantAnalysisError503.parse(response),
  _ => CodeScanningCreateVariantAnalysisError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class CodeScanningCreateVariantAnalysisError404 extends CodeScanningCreateVariantAnalysisError {const CodeScanningCreateVariantAnalysisError404(this.data);

factory CodeScanningCreateVariantAnalysisError404.parse(ApiResponse response) { return CodeScanningCreateVariantAnalysisError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningCreateVariantAnalysisError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningCreateVariantAnalysisError404($data)'; } 
 }
/// The `422` response.
@immutable final class CodeScanningCreateVariantAnalysisError422 extends CodeScanningCreateVariantAnalysisError {const CodeScanningCreateVariantAnalysisError422(this.data);

factory CodeScanningCreateVariantAnalysisError422.parse(ApiResponse response) { return CodeScanningCreateVariantAnalysisError422(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningCreateVariantAnalysisError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningCreateVariantAnalysisError422($data)'; } 
 }
/// The `503` response.
@immutable final class CodeScanningCreateVariantAnalysisError503 extends CodeScanningCreateVariantAnalysisError {const CodeScanningCreateVariantAnalysisError503(this.data);

factory CodeScanningCreateVariantAnalysisError503.parse(ApiResponse response) { return CodeScanningCreateVariantAnalysisError503(CodeScanningCreateVariantAnalysisResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodeScanningCreateVariantAnalysisResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningCreateVariantAnalysisError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningCreateVariantAnalysisError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeScanningCreateVariantAnalysisError$Unknown extends CodeScanningCreateVariantAnalysisError {const CodeScanningCreateVariantAnalysisError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningCreateVariantAnalysisError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeScanningCreateVariantAnalysisError.unknown($statusCode)'; } 
 }
