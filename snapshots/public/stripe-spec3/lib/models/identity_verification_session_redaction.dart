// GENERATED CODE - DO NOT MODIFY BY HAND

import 'verification_session_redaction.dart';/// Redaction status of this VerificationSession. If the VerificationSession is not redacted, this field will be null.
final class IdentityVerificationSessionRedaction {const IdentityVerificationSessionRedaction({this.verificationSessionRedaction});

factory IdentityVerificationSessionRedaction.fromJson(Map<String, dynamic> json) { return IdentityVerificationSessionRedaction(
  verificationSessionRedaction: VerificationSessionRedaction.canParse(json) ? VerificationSessionRedaction.fromJson(json) : null,
); }

final VerificationSessionRedaction? verificationSessionRedaction;

/// At least one variant must be present.
bool get isValid { return verificationSessionRedaction != null; } 
Map<String, dynamic> toJson() { return {
  ...?verificationSessionRedaction?.toJson(),
}; } 
 }
