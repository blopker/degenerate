// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_cardholder_user_terms_acceptance.dart';/// Information about cardholder acceptance of Celtic [Authorized User Terms](https://stripe.com/docs/issuing/cards#accept-authorized-user-terms). Required for cards backed by a Celtic program.
final class IssuingCardholderCardIssuingUserTermsAcceptance {const IssuingCardholderCardIssuingUserTermsAcceptance({this.issuingCardholderUserTermsAcceptance});

factory IssuingCardholderCardIssuingUserTermsAcceptance.fromJson(Map<String, dynamic> json) { return IssuingCardholderCardIssuingUserTermsAcceptance(
  issuingCardholderUserTermsAcceptance: IssuingCardholderUserTermsAcceptance.canParse(json) ? IssuingCardholderUserTermsAcceptance.fromJson(json) : null,
); }

final IssuingCardholderUserTermsAcceptance? issuingCardholderUserTermsAcceptance;

/// At least one variant must be present.
bool get isValid { return issuingCardholderUserTermsAcceptance != null; } 
Map<String, dynamic> toJson() { return {
  ...?issuingCardholderUserTermsAcceptance?.toJson(),
}; } 
 }
