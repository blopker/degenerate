// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'code_scanning_list_alerts_for_org_response503.dart';/// Error responses of `GET /orgs/{org}/code-scanning/alerts`.
sealed class CodeScanningListAlertsForOrgError {const CodeScanningListAlertsForOrgError();

/// Parse the variant matching the response status code.
factory CodeScanningListAlertsForOrgError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => CodeScanningListAlertsForOrgError404.parse(response),
  503 => CodeScanningListAlertsForOrgError503.parse(response),
  _ => CodeScanningListAlertsForOrgError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class CodeScanningListAlertsForOrgError404 extends CodeScanningListAlertsForOrgError {const CodeScanningListAlertsForOrgError404(this.data);

factory CodeScanningListAlertsForOrgError404.parse(ApiResponse response) { return CodeScanningListAlertsForOrgError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningListAlertsForOrgError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningListAlertsForOrgError404($data)'; } 
 }
/// The `503` response.
@immutable final class CodeScanningListAlertsForOrgError503 extends CodeScanningListAlertsForOrgError {const CodeScanningListAlertsForOrgError503(this.data);

factory CodeScanningListAlertsForOrgError503.parse(ApiResponse response) { return CodeScanningListAlertsForOrgError503(CodeScanningListAlertsForOrgResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CodeScanningListAlertsForOrgResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningListAlertsForOrgError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CodeScanningListAlertsForOrgError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CodeScanningListAlertsForOrgError$Unknown extends CodeScanningListAlertsForOrgError {const CodeScanningListAlertsForOrgError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CodeScanningListAlertsForOrgError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CodeScanningListAlertsForOrgError.unknown($statusCode)'; } 
 }
