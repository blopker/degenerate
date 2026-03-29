// GENERATED CODE - DO NOT MODIFY BY HAND

import 'errors.dart';/// The error encountered during this attempt to confirm the SetupIntent, if any.
final class SetupAttemptSetupError {const SetupAttemptSetupError({this.errors});

factory SetupAttemptSetupError.fromJson(Map<String, dynamic> json) { return SetupAttemptSetupError(
  errors: Errors.canParse(json) ? Errors.fromJson(json) : null,
); }

final Errors? errors;

/// At least one variant must be present.
bool get isValid { return errors != null; } 
Map<String, dynamic> toJson() { return {
  ...?errors?.toJson(),
}; } 
 }
