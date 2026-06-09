// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_batch_terminate_workflow_instances_response400.dart';import 'wor_batch_terminate_workflow_instances_response404.dart';/// Error responses of `POST /accounts/{account_id}/workflows/{workflow_name}/instances/batch/terminate`.
sealed class WorBatchTerminateWorkflowInstancesError {const WorBatchTerminateWorkflowInstancesError();

/// Parse the variant matching the response status code.
factory WorBatchTerminateWorkflowInstancesError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => WorBatchTerminateWorkflowInstancesError400.parse(response),
  404 => WorBatchTerminateWorkflowInstancesError404.parse(response),
  _ => WorBatchTerminateWorkflowInstancesError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class WorBatchTerminateWorkflowInstancesError400 extends WorBatchTerminateWorkflowInstancesError {const WorBatchTerminateWorkflowInstancesError400(this.data);

factory WorBatchTerminateWorkflowInstancesError400.parse(ApiResponse response) { return WorBatchTerminateWorkflowInstancesError400(WorBatchTerminateWorkflowInstancesResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorBatchTerminateWorkflowInstancesResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorBatchTerminateWorkflowInstancesError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorBatchTerminateWorkflowInstancesError400($data)'; } 
 }
/// The `404` response.
@immutable final class WorBatchTerminateWorkflowInstancesError404 extends WorBatchTerminateWorkflowInstancesError {const WorBatchTerminateWorkflowInstancesError404(this.data);

factory WorBatchTerminateWorkflowInstancesError404.parse(ApiResponse response) { return WorBatchTerminateWorkflowInstancesError404(WorBatchTerminateWorkflowInstancesResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorBatchTerminateWorkflowInstancesResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorBatchTerminateWorkflowInstancesError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorBatchTerminateWorkflowInstancesError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class WorBatchTerminateWorkflowInstancesError$Unknown extends WorBatchTerminateWorkflowInstancesError {const WorBatchTerminateWorkflowInstancesError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorBatchTerminateWorkflowInstancesError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'WorBatchTerminateWorkflowInstancesError.unknown($statusCode)'; } 
 }
