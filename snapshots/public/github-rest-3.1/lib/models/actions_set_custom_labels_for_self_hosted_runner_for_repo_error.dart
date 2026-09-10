// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActionsSetCustomLabelsForSelfHostedRunnerForRepoError {const ActionsSetCustomLabelsForSelfHostedRunnerForRepoError();

/// Decodes the payload for its declared status and content type.
static ActionsSetCustomLabelsForSelfHostedRunnerForRepoError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return ActionsSetCustomLabelsForSelfHostedRunnerForRepoError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ActionsSetCustomLabelsForSelfHostedRunnerForRepoError422(ValidationErrorSimple.fromJson(json as Map<String, dynamic>));
default:
return ActionsSetCustomLabelsForSelfHostedRunnerForRepoErrorUnknown(response);
}
}
}
/// Response for 404 (application/json).
final class ActionsSetCustomLabelsForSelfHostedRunnerForRepoError404 extends ActionsSetCustomLabelsForSelfHostedRunnerForRepoError {const ActionsSetCustomLabelsForSelfHostedRunnerForRepoError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ActionsSetCustomLabelsForSelfHostedRunnerForRepoError422 extends ActionsSetCustomLabelsForSelfHostedRunnerForRepoError {const ActionsSetCustomLabelsForSelfHostedRunnerForRepoError422(this.data);

/// The decoded response payload.
final ValidationErrorSimple data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActionsSetCustomLabelsForSelfHostedRunnerForRepoErrorUnknown extends ActionsSetCustomLabelsForSelfHostedRunnerForRepoError {const ActionsSetCustomLabelsForSelfHostedRunnerForRepoErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
