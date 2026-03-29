// GENERATED CODE - DO NOT MODIFY BY HAND

import 'gelato_verification_session_options.dart';/// A set of options for the session’s verification checks.
final class IdentityVerificationSessionOptions {const IdentityVerificationSessionOptions({this.gelatoVerificationSessionOptions});

factory IdentityVerificationSessionOptions.fromJson(Map<String, dynamic> json) { return IdentityVerificationSessionOptions(
  gelatoVerificationSessionOptions: GelatoVerificationSessionOptions.canParse(json) ? GelatoVerificationSessionOptions.fromJson(json) : null,
); }

final GelatoVerificationSessionOptions? gelatoVerificationSessionOptions;

/// At least one variant must be present.
bool get isValid { return gelatoVerificationSessionOptions != null; } 
Map<String, dynamic> toJson() { return {
  ...?gelatoVerificationSessionOptions?.toJson(),
}; } 
 }
