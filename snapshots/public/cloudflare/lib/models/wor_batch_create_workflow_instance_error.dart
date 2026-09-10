// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_batch_create_workflow_instance_response400.dart';import 'wor_batch_create_workflow_instance_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class WorBatchCreateWorkflowInstanceError {const WorBatchCreateWorkflowInstanceError();

/// Decodes the payload for its declared status and content type.
static WorBatchCreateWorkflowInstanceError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return WorBatchCreateWorkflowInstanceError400(WorBatchCreateWorkflowInstanceResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return WorBatchCreateWorkflowInstanceError404(WorBatchCreateWorkflowInstanceResponse404.fromJson(json as Map<String, dynamic>));
default:
return WorBatchCreateWorkflowInstanceErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class WorBatchCreateWorkflowInstanceError400 extends WorBatchCreateWorkflowInstanceError {const WorBatchCreateWorkflowInstanceError400(this.data);

/// The decoded response payload.
final WorBatchCreateWorkflowInstanceResponse400 data;

}
/// Response for 404 (application/json).
final class WorBatchCreateWorkflowInstanceError404 extends WorBatchCreateWorkflowInstanceError {const WorBatchCreateWorkflowInstanceError404(this.data);

/// The decoded response payload.
final WorBatchCreateWorkflowInstanceResponse404 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class WorBatchCreateWorkflowInstanceErrorUnknown extends WorBatchCreateWorkflowInstanceError {const WorBatchCreateWorkflowInstanceErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
