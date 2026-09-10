// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_get_workflow_details_response400.dart';import 'wor_get_workflow_details_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class WorGetWorkflowDetailsError {const WorGetWorkflowDetailsError();

/// Decodes the payload for its declared status and content type.
static WorGetWorkflowDetailsError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  WorGetWorkflowDetailsError400(WorGetWorkflowDetailsResponse400.fromJson(json as Map<String, dynamic>));case 404:
final json = jsonDecode(response.body);
return  WorGetWorkflowDetailsError404(WorGetWorkflowDetailsResponse404.fromJson(json as Map<String, dynamic>));default:
return  WorGetWorkflowDetailsErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class WorGetWorkflowDetailsError400 extends WorGetWorkflowDetailsError {const WorGetWorkflowDetailsError400(this.data);

/// The decoded response payload.
final WorGetWorkflowDetailsResponse400 data;

}
/// Response for 404 (application/json).
final class WorGetWorkflowDetailsError404 extends WorGetWorkflowDetailsError {const WorGetWorkflowDetailsError404(this.data);

/// The decoded response payload.
final WorGetWorkflowDetailsResponse404 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class WorGetWorkflowDetailsErrorUnknown extends WorGetWorkflowDetailsError {const WorGetWorkflowDetailsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
