// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error_simple.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActionsAddCustomLabelsToSelfHostedRunnerForOrgError {const ActionsAddCustomLabelsToSelfHostedRunnerForOrgError();

/// Decodes the payload for its declared status and content type.
static ActionsAddCustomLabelsToSelfHostedRunnerForOrgError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return ActionsAddCustomLabelsToSelfHostedRunnerForOrgError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return ActionsAddCustomLabelsToSelfHostedRunnerForOrgError422(ValidationErrorSimple.fromJson(json as Map<String, dynamic>));
default:
return ActionsAddCustomLabelsToSelfHostedRunnerForOrgErrorUnknown(response);
}
}
}
/// Response for 404 (application/json).
final class ActionsAddCustomLabelsToSelfHostedRunnerForOrgError404 extends ActionsAddCustomLabelsToSelfHostedRunnerForOrgError {const ActionsAddCustomLabelsToSelfHostedRunnerForOrgError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class ActionsAddCustomLabelsToSelfHostedRunnerForOrgError422 extends ActionsAddCustomLabelsToSelfHostedRunnerForOrgError {const ActionsAddCustomLabelsToSelfHostedRunnerForOrgError422(this.data);

/// The decoded response payload.
final ValidationErrorSimple data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ActionsAddCustomLabelsToSelfHostedRunnerForOrgErrorUnknown extends ActionsAddCustomLabelsToSelfHostedRunnerForOrgError {const ActionsAddCustomLabelsToSelfHostedRunnerForOrgErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
