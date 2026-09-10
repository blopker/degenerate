// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workflow_dispatch_response.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class ActionsCreateWorkflowDispatchSuccess {const ActionsCreateWorkflowDispatchSuccess();

/// Decodes the payload for its declared status and content type.
static ActionsCreateWorkflowDispatchSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 200:
final json = jsonDecode(response.body);
return ActionsCreateWorkflowDispatchSuccess200(WorkflowDispatchResponse.fromJson(json as Map<String, dynamic>));
case 204:
return const ActionsCreateWorkflowDispatchSuccess204();
default:
return ActionsCreateWorkflowDispatchSuccessUnknown(response);
}
}
}
/// Response for 200 (application/json).
final class ActionsCreateWorkflowDispatchSuccess200 extends ActionsCreateWorkflowDispatchSuccess {const ActionsCreateWorkflowDispatchSuccess200(this.data);

/// The decoded response payload.
final WorkflowDispatchResponse data;

}
/// Response for 204.
final class ActionsCreateWorkflowDispatchSuccess204 extends ActionsCreateWorkflowDispatchSuccess {const ActionsCreateWorkflowDispatchSuccess204();

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActionsCreateWorkflowDispatchSuccessUnknown extends ActionsCreateWorkflowDispatchSuccess {const ActionsCreateWorkflowDispatchSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
