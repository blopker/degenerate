// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActionsGenerateRunnerJitconfigForOrgError {const ActionsGenerateRunnerJitconfigForOrgError();

/// Decodes the payload for its declared status and content type.
static ActionsGenerateRunnerJitconfigForOrgError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return  ActionsGenerateRunnerJitconfigForOrgError404(BasicError.fromJson(json as Map<String, dynamic>));case 409:
final json = jsonDecode(response.body);
return  ActionsGenerateRunnerJitconfigForOrgError409(BasicError.fromJson(json as Map<String, dynamic>));case 422:
final json = jsonDecode(response.body);
return  ActionsGenerateRunnerJitconfigForOrgError422(ValidationErrorSimple.fromJson(json as Map<String, dynamic>));default:
return  ActionsGenerateRunnerJitconfigForOrgErrorUnknown(response); }}
}
/// Response for 404 (application/json).
final class ActionsGenerateRunnerJitconfigForOrgError404 extends ActionsGenerateRunnerJitconfigForOrgError {const ActionsGenerateRunnerJitconfigForOrgError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 409 (application/json).
final class ActionsGenerateRunnerJitconfigForOrgError409 extends ActionsGenerateRunnerJitconfigForOrgError {const ActionsGenerateRunnerJitconfigForOrgError409(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ActionsGenerateRunnerJitconfigForOrgError422 extends ActionsGenerateRunnerJitconfigForOrgError {const ActionsGenerateRunnerJitconfigForOrgError422(this.data);

/// The decoded response payload.
final ValidationErrorSimple data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActionsGenerateRunnerJitconfigForOrgErrorUnknown extends ActionsGenerateRunnerJitconfigForOrgError {const ActionsGenerateRunnerJitconfigForOrgErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
