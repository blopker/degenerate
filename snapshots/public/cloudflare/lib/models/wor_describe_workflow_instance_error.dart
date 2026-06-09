// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_describe_workflow_instance_response400.dart';import 'wor_describe_workflow_instance_response404.dart';/// Error responses of `GET /accounts/{account_id}/workflows/{workflow_name}/instances/{instance_id}`.
sealed class WorDescribeWorkflowInstanceError {const WorDescribeWorkflowInstanceError();

/// Parse the variant matching the response status code.
factory WorDescribeWorkflowInstanceError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => WorDescribeWorkflowInstanceError400.parse(response),
  404 => WorDescribeWorkflowInstanceError404.parse(response),
  _ => WorDescribeWorkflowInstanceError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class WorDescribeWorkflowInstanceError400 extends WorDescribeWorkflowInstanceError {const WorDescribeWorkflowInstanceError400(this.data);

factory WorDescribeWorkflowInstanceError400.parse(ApiResponse response) { return WorDescribeWorkflowInstanceError400(WorDescribeWorkflowInstanceResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorDescribeWorkflowInstanceResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorDescribeWorkflowInstanceError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorDescribeWorkflowInstanceError400($data)'; } 
 }
/// The `404` response.
@immutable final class WorDescribeWorkflowInstanceError404 extends WorDescribeWorkflowInstanceError {const WorDescribeWorkflowInstanceError404(this.data);

factory WorDescribeWorkflowInstanceError404.parse(ApiResponse response) { return WorDescribeWorkflowInstanceError404(WorDescribeWorkflowInstanceResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorDescribeWorkflowInstanceResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorDescribeWorkflowInstanceError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorDescribeWorkflowInstanceError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class WorDescribeWorkflowInstanceError$Unknown extends WorDescribeWorkflowInstanceError {const WorDescribeWorkflowInstanceError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorDescribeWorkflowInstanceError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'WorDescribeWorkflowInstanceError.unknown($statusCode)'; } 
 }
