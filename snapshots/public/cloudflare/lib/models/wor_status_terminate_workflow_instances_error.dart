// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_status_terminate_workflow_instances_response400.dart';import 'wor_status_terminate_workflow_instances_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class WorStatusTerminateWorkflowInstancesError {const WorStatusTerminateWorkflowInstancesError();

/// Decodes the payload for its declared status and content type.
static WorStatusTerminateWorkflowInstancesError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return WorStatusTerminateWorkflowInstancesError400(WorStatusTerminateWorkflowInstancesResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return WorStatusTerminateWorkflowInstancesError404(WorStatusTerminateWorkflowInstancesResponse404.fromJson(json as Map<String, dynamic>));
default:
return WorStatusTerminateWorkflowInstancesErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class WorStatusTerminateWorkflowInstancesError400 extends WorStatusTerminateWorkflowInstancesError {const WorStatusTerminateWorkflowInstancesError400(this.data);

/// The decoded response payload.
final WorStatusTerminateWorkflowInstancesResponse400 data;

 }
/// Response for 404 (application/json).
final class WorStatusTerminateWorkflowInstancesError404 extends WorStatusTerminateWorkflowInstancesError {const WorStatusTerminateWorkflowInstancesError404(this.data);

/// The decoded response payload.
final WorStatusTerminateWorkflowInstancesResponse404 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class WorStatusTerminateWorkflowInstancesErrorUnknown extends WorStatusTerminateWorkflowInstancesError {const WorStatusTerminateWorkflowInstancesErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
