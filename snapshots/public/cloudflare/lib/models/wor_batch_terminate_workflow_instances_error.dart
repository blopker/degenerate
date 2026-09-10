// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_batch_terminate_workflow_instances_response400.dart';import 'wor_batch_terminate_workflow_instances_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class WorBatchTerminateWorkflowInstancesError {const WorBatchTerminateWorkflowInstancesError();

/// Decodes the payload for its declared status and content type.
static WorBatchTerminateWorkflowInstancesError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  WorBatchTerminateWorkflowInstancesError400(WorBatchTerminateWorkflowInstancesResponse400.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  WorBatchTerminateWorkflowInstancesError404(WorBatchTerminateWorkflowInstancesResponse404.fromJson(json as Map<String, dynamic>));default:
return  WorBatchTerminateWorkflowInstancesErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class WorBatchTerminateWorkflowInstancesError400 extends WorBatchTerminateWorkflowInstancesError {const WorBatchTerminateWorkflowInstancesError400(this.data);

/// The decoded response payload.
final WorBatchTerminateWorkflowInstancesResponse400 data;

}
/// Response for 404 (application/json).
final class WorBatchTerminateWorkflowInstancesError404 extends WorBatchTerminateWorkflowInstancesError {const WorBatchTerminateWorkflowInstancesError404(this.data);

/// The decoded response payload.
final WorBatchTerminateWorkflowInstancesResponse404 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class WorBatchTerminateWorkflowInstancesErrorUnknown extends WorBatchTerminateWorkflowInstancesError {const WorBatchTerminateWorkflowInstancesErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
