// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_authorization_authentication_exemption.dart';/// The exemption applied to this authorization.
final class IssuingAuthorizationVerificationDataAuthenticationExemption {const IssuingAuthorizationVerificationDataAuthenticationExemption({this.issuingAuthorizationAuthenticationExemption});

factory IssuingAuthorizationVerificationDataAuthenticationExemption.fromJson(Map<String, dynamic> json) { return IssuingAuthorizationVerificationDataAuthenticationExemption(
  issuingAuthorizationAuthenticationExemption: IssuingAuthorizationAuthenticationExemption.canParse(json) ? IssuingAuthorizationAuthenticationExemption.fromJson(json) : null,
); }

final IssuingAuthorizationAuthenticationExemption? issuingAuthorizationAuthenticationExemption;

/// At least one variant must be present.
bool get isValid { return issuingAuthorizationAuthenticationExemption != null; } 
Map<String, dynamic> toJson() { return {
  ...?issuingAuthorizationAuthenticationExemption?.toJson(),
}; } 
 }
