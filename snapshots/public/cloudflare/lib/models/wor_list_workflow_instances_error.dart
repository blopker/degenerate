// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_list_workflow_instances_response400.dart';import 'wor_list_workflow_instances_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class WorListWorkflowInstancesError {const WorListWorkflowInstancesError();

/// Decodes the payload for its declared status and content type.
static WorListWorkflowInstancesError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return WorListWorkflowInstancesError400(WorListWorkflowInstancesResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return WorListWorkflowInstancesError404(WorListWorkflowInstancesResponse404.fromJson(json as Map<String, dynamic>));
default:
return WorListWorkflowInstancesErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class WorListWorkflowInstancesError400 extends WorListWorkflowInstancesError {const WorListWorkflowInstancesError400(this.data);

/// The decoded response payload.
final WorListWorkflowInstancesResponse400 data;

 }
/// Response for 404 (application/json).
final class WorListWorkflowInstancesError404 extends WorListWorkflowInstancesError {const WorListWorkflowInstancesError404(this.data);

/// The decoded response payload.
final WorListWorkflowInstancesResponse404 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class WorListWorkflowInstancesErrorUnknown extends WorListWorkflowInstancesError {const WorListWorkflowInstancesErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
