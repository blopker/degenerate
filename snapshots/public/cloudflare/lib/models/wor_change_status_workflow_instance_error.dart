// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_change_status_workflow_instance_response400.dart';import 'wor_change_status_workflow_instance_response404.dart';import 'wor_change_status_workflow_instance_response409.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class WorChangeStatusWorkflowInstanceError {const WorChangeStatusWorkflowInstanceError();

/// Decodes the payload for its declared status and content type.
static WorChangeStatusWorkflowInstanceError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  WorChangeStatusWorkflowInstanceError400(WorChangeStatusWorkflowInstanceResponse400.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  WorChangeStatusWorkflowInstanceError404(WorChangeStatusWorkflowInstanceResponse404.fromJson(json as Map<String, dynamic>));case 409:
final json = jsonDecode(response.body);
return  WorChangeStatusWorkflowInstanceError409(WorChangeStatusWorkflowInstanceResponse409.fromJson(json as Map<String, dynamic>));default:
return  WorChangeStatusWorkflowInstanceErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class WorChangeStatusWorkflowInstanceError400 extends WorChangeStatusWorkflowInstanceError {const WorChangeStatusWorkflowInstanceError400(this.data);

/// The decoded response payload.
final WorChangeStatusWorkflowInstanceResponse400 data;

}
/// Response for 404 (application/json).
final class WorChangeStatusWorkflowInstanceError404 extends WorChangeStatusWorkflowInstanceError {const WorChangeStatusWorkflowInstanceError404(this.data);

/// The decoded response payload.
final WorChangeStatusWorkflowInstanceResponse404 data;

}
/// Response for 409 (application/json).
final class WorChangeStatusWorkflowInstanceError409 extends WorChangeStatusWorkflowInstanceError {const WorChangeStatusWorkflowInstanceError409(this.data);

/// The decoded response payload.
final WorChangeStatusWorkflowInstanceResponse409 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class WorChangeStatusWorkflowInstanceErrorUnknown extends WorChangeStatusWorkflowInstanceError {const WorChangeStatusWorkflowInstanceErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
