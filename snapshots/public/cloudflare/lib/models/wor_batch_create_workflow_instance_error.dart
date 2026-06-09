// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_batch_create_workflow_instance_response400.dart';import 'wor_batch_create_workflow_instance_response404.dart';/// Error responses of `POST /accounts/{account_id}/workflows/{workflow_name}/instances/batch`.
sealed class WorBatchCreateWorkflowInstanceError {const WorBatchCreateWorkflowInstanceError();

/// Parse the variant matching the response status code.
factory WorBatchCreateWorkflowInstanceError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => WorBatchCreateWorkflowInstanceError400.parse(response),
  404 => WorBatchCreateWorkflowInstanceError404.parse(response),
  _ => WorBatchCreateWorkflowInstanceError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class WorBatchCreateWorkflowInstanceError400 extends WorBatchCreateWorkflowInstanceError {const WorBatchCreateWorkflowInstanceError400(this.data);

factory WorBatchCreateWorkflowInstanceError400.parse(ApiResponse response) { return WorBatchCreateWorkflowInstanceError400(WorBatchCreateWorkflowInstanceResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorBatchCreateWorkflowInstanceResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorBatchCreateWorkflowInstanceError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorBatchCreateWorkflowInstanceError400($data)'; } 
 }
/// The `404` response.
@immutable final class WorBatchCreateWorkflowInstanceError404 extends WorBatchCreateWorkflowInstanceError {const WorBatchCreateWorkflowInstanceError404(this.data);

factory WorBatchCreateWorkflowInstanceError404.parse(ApiResponse response) { return WorBatchCreateWorkflowInstanceError404(WorBatchCreateWorkflowInstanceResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorBatchCreateWorkflowInstanceResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorBatchCreateWorkflowInstanceError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorBatchCreateWorkflowInstanceError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class WorBatchCreateWorkflowInstanceError$Unknown extends WorBatchCreateWorkflowInstanceError {const WorBatchCreateWorkflowInstanceError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorBatchCreateWorkflowInstanceError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'WorBatchCreateWorkflowInstanceError.unknown($statusCode)'; } 
 }
