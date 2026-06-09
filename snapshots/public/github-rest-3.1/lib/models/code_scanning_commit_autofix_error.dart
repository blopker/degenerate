// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_commit_autofix_response503.dart';/// Error responses of `POST /repos/{owner}/{repo}/code-scanning/alerts/{alert_number}/autofix/commits`.
sealed class CodeScanningCommitAutofixError {const CodeScanningCommitAutofixError();

/// Parse the variant matching the response status code.
factory CodeScanningCommitAutofixError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => CodeScanningCommitAutofixError400.parse(response),
  403 => CodeScanningCommitAutofixError403.parse(response),
  404 => CodeScanningCommitAutofixError404.parse(response),
  422 => CodeScanningCommitAutofixError422.parse(response),
  503 => CodeScanningCommitAutofixError503.parse(response),
  _ => CodeScanningCommitAutofixError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class CodeScanningCommitAutofixError400 extends CodeScanningCommitAutofixError {const CodeScanningCommitAutofixError400(this.data);

factory CodeScanningCommitAutofixError400.parse(ApiResponse response) { return CodeScanningCommitAutofixError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningCommitAutofixError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningCommitAutofixError400($data)'; } 
 }
/// The `403` response.
@immutable final class CodeScanningCommitAutofixError403 extends CodeScanningCommitAutofixError {const CodeScanningCommitAutofixError403(this.data);

factory CodeScanningCommitAutofixError403.parse(ApiResponse response) { return CodeScanningCommitAutofixError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningCommitAutofixError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningCommitAutofixError403($data)'; } 
 }
/// The `404` response.
@immutable final class CodeScanningCommitAutofixError404 extends CodeScanningCommitAutofixError {const CodeScanningCommitAutofixError404(this.data);

factory CodeScanningCommitAutofixError404.parse(ApiResponse response) { return CodeScanningCommitAutofixError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningCommitAutofixError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningCommitAutofixError404($data)'; } 
 }
/// The `422` response.
@immutable final class CodeScanningCommitAutofixError422 extends CodeScanningCommitAutofixError {const CodeScanningCommitAutofixError422();

factory CodeScanningCommitAutofixError422.parse(ApiResponse _) { return const CodeScanningCommitAutofixError422(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CodeScanningCommitAutofixError422; } 
@override int get hashCode { return (CodeScanningCommitAutofixError422).hashCode; } 
@override String toString() { return 'CodeScanningCommitAutofixError422()'; } 
 }
/// The `503` response.
@immutable final class CodeScanningCommitAutofixError503 extends CodeScanningCommitAutofixError {const CodeScanningCommitAutofixError503(this.data);

factory CodeScanningCommitAutofixError503.parse(ApiResponse response) { return CodeScanningCommitAutofixError503(CodeScanningCommitAutofixResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodeScanningCommitAutofixResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningCommitAutofixError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningCommitAutofixError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeScanningCommitAutofixError$Unknown extends CodeScanningCommitAutofixError {const CodeScanningCommitAutofixError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningCommitAutofixError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeScanningCommitAutofixError.unknown($statusCode)'; } 
 }
