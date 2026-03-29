// GENERATED CODE - DO NOT MODIFY BY HAND

import 'errors.dart';/// The error encountered in the previous SetupIntent confirmation.
final class SetupIntentLastSetupError {const SetupIntentLastSetupError({this.errors});

factory SetupIntentLastSetupError.fromJson(Map<String, dynamic> json) { return SetupIntentLastSetupError(
  errors: Errors.canParse(json) ? Errors.fromJson(json) : null,
); }

final Errors? errors;

/// At least one variant must be present.
bool get isValid { return errors != null; } 
Map<String, dynamic> toJson() { return {
  ...?errors?.toJson(),
}; } 
 }
