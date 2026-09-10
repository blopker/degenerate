// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActionsGenerateRunnerJitconfigForRepoError {const ActionsGenerateRunnerJitconfigForRepoError();

/// Decodes the payload for its declared status and content type.
static ActionsGenerateRunnerJitconfigForRepoError parse(ApiResponse response) { switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return ActionsGenerateRunnerJitconfigForRepoError404(BasicError.fromJson(json as Map<String, dynamic>));
case 409:
final json = jsonDecode(response.body);
return ActionsGenerateRunnerJitconfigForRepoError409(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ActionsGenerateRunnerJitconfigForRepoError422(ValidationErrorSimple.fromJson(json as Map<String, dynamic>));
default:
return ActionsGenerateRunnerJitconfigForRepoErrorUnknown(response);
}
 } 
 }
/// Response for 404 (application/json).
final class ActionsGenerateRunnerJitconfigForRepoError404 extends ActionsGenerateRunnerJitconfigForRepoError {const ActionsGenerateRunnerJitconfigForRepoError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 409 (application/json).
final class ActionsGenerateRunnerJitconfigForRepoError409 extends ActionsGenerateRunnerJitconfigForRepoError {const ActionsGenerateRunnerJitconfigForRepoError409(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class ActionsGenerateRunnerJitconfigForRepoError422 extends ActionsGenerateRunnerJitconfigForRepoError {const ActionsGenerateRunnerJitconfigForRepoError422(this.data);

/// The decoded response payload.
final ValidationErrorSimple data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ActionsGenerateRunnerJitconfigForRepoErrorUnknown extends ActionsGenerateRunnerJitconfigForRepoError {const ActionsGenerateRunnerJitconfigForRepoErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
