// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_create_new_workflow_instance_response400.dart';import 'wor_create_new_workflow_instance_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class WorCreateNewWorkflowInstanceError {const WorCreateNewWorkflowInstanceError();

/// Decodes the payload for its declared status and content type.
static WorCreateNewWorkflowInstanceError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  WorCreateNewWorkflowInstanceError400(WorCreateNewWorkflowInstanceResponse400.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  WorCreateNewWorkflowInstanceError404(WorCreateNewWorkflowInstanceResponse404.fromJson(json as Map<String, dynamic>));default:
return  WorCreateNewWorkflowInstanceErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class WorCreateNewWorkflowInstanceError400 extends WorCreateNewWorkflowInstanceError {const WorCreateNewWorkflowInstanceError400(this.data);

/// The decoded response payload.
final WorCreateNewWorkflowInstanceResponse400 data;

}
/// Response for 404 (application/json).
final class WorCreateNewWorkflowInstanceError404 extends WorCreateNewWorkflowInstanceError {const WorCreateNewWorkflowInstanceError404(this.data);

/// The decoded response payload.
final WorCreateNewWorkflowInstanceResponse404 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class WorCreateNewWorkflowInstanceErrorUnknown extends WorCreateNewWorkflowInstanceError {const WorCreateNewWorkflowInstanceErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
