// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError {const ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError();

/// Decodes the payload for its declared status and content type.
static ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError422(ValidationErrorSimple.fromJson(json as Map<String, dynamic>));
default:
return ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoErrorUnknown(response);
}
}
}
/// Response for 404 (application/json).
final class ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError404 extends ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError {const ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError422 extends ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError {const ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError422(this.data);

/// The decoded response payload.
final ValidationErrorSimple data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoErrorUnknown extends ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoError {const ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
