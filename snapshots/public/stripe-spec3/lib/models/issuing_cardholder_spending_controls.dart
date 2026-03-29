// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_cardholder_authorization_controls.dart';/// Rules that control spending across this cardholder's cards. Refer to our [documentation](https://docs.stripe.com/issuing/controls/spending-controls) for more details.
final class IssuingCardholderSpendingControls {const IssuingCardholderSpendingControls({this.issuingCardholderAuthorizationControls});

factory IssuingCardholderSpendingControls.fromJson(Map<String, dynamic> json) { return IssuingCardholderSpendingControls(
  issuingCardholderAuthorizationControls: IssuingCardholderAuthorizationControls.canParse(json) ? IssuingCardholderAuthorizationControls.fromJson(json) : null,
); }

final IssuingCardholderAuthorizationControls? issuingCardholderAuthorizationControls;

/// At least one variant must be present.
bool get isValid { return issuingCardholderAuthorizationControls != null; } 
Map<String, dynamic> toJson() { return {
  ...?issuingCardholderAuthorizationControls?.toJson(),
}; } 
 }
