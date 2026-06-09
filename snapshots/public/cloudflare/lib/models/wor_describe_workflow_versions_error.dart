// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_describe_workflow_versions_response400.dart';import 'wor_describe_workflow_versions_response404.dart';/// Error responses of `GET /accounts/{account_id}/workflows/{workflow_name}/versions/{version_id}`.
sealed class WorDescribeWorkflowVersionsError {const WorDescribeWorkflowVersionsError();

/// Parse the variant matching the response status code.
factory WorDescribeWorkflowVersionsError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => WorDescribeWorkflowVersionsError400.parse(response),
  404 => WorDescribeWorkflowVersionsError404.parse(response),
  _ => WorDescribeWorkflowVersionsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class WorDescribeWorkflowVersionsError400 extends WorDescribeWorkflowVersionsError {const WorDescribeWorkflowVersionsError400(this.data);

factory WorDescribeWorkflowVersionsError400.parse(ApiResponse response) { return WorDescribeWorkflowVersionsError400(WorDescribeWorkflowVersionsResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorDescribeWorkflowVersionsResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorDescribeWorkflowVersionsError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorDescribeWorkflowVersionsError400($data)'; } 
 }
/// The `404` response.
@immutable final class WorDescribeWorkflowVersionsError404 extends WorDescribeWorkflowVersionsError {const WorDescribeWorkflowVersionsError404(this.data);

factory WorDescribeWorkflowVersionsError404.parse(ApiResponse response) { return WorDescribeWorkflowVersionsError404(WorDescribeWorkflowVersionsResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorDescribeWorkflowVersionsResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorDescribeWorkflowVersionsError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorDescribeWorkflowVersionsError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class WorDescribeWorkflowVersionsError$Unknown extends WorDescribeWorkflowVersionsError {const WorDescribeWorkflowVersionsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorDescribeWorkflowVersionsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'WorDescribeWorkflowVersionsError.unknown($statusCode)'; } 
 }
