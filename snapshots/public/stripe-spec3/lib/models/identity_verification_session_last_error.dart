// GENERATED CODE - DO NOT MODIFY BY HAND

import 'gelato_session_last_error.dart';/// If present, this property tells you the last error encountered when processing the verification.
final class IdentityVerificationSessionLastError {const IdentityVerificationSessionLastError({this.gelatoSessionLastError});

factory IdentityVerificationSessionLastError.fromJson(Map<String, dynamic> json) { return IdentityVerificationSessionLastError(
  gelatoSessionLastError: GelatoSessionLastError.canParse(json) ? GelatoSessionLastError.fromJson(json) : null,
); }

final GelatoSessionLastError? gelatoSessionLastError;

/// At least one variant must be present.
bool get isValid { return gelatoSessionLastError != null; } 
Map<String, dynamic> toJson() { return {
  ...?gelatoSessionLastError?.toJson(),
}; } 
 }
