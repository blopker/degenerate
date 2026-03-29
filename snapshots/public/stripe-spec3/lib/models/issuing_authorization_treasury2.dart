// GENERATED CODE - DO NOT MODIFY BY HAND

import 'issuing_authorization_treasury.dart';/// [Treasury](https://docs.stripe.com/api/treasury) details related to this authorization if it was created on a [FinancialAccount](https://docs.stripe.com/api/treasury/financial_accounts).
final class IssuingAuthorizationTreasury2 {const IssuingAuthorizationTreasury2({this.issuingAuthorizationTreasury});

factory IssuingAuthorizationTreasury2.fromJson(Map<String, dynamic> json) { return IssuingAuthorizationTreasury2(
  issuingAuthorizationTreasury: IssuingAuthorizationTreasury.canParse(json) ? IssuingAuthorizationTreasury.fromJson(json) : null,
); }

final IssuingAuthorizationTreasury? issuingAuthorizationTreasury;

/// At least one variant must be present.
bool get isValid { return issuingAuthorizationTreasury != null; } 
Map<String, dynamic> toJson() { return {
  ...?issuingAuthorizationTreasury?.toJson(),
}; } 
 }
