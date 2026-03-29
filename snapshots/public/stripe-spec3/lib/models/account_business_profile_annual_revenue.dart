// GENERATED CODE - DO NOT MODIFY BY HAND

import 'account_annual_revenue.dart';/// The applicant's gross annual revenue for its preceding fiscal year.
final class AccountBusinessProfileAnnualRevenue {const AccountBusinessProfileAnnualRevenue({this.accountAnnualRevenue});

factory AccountBusinessProfileAnnualRevenue.fromJson(Map<String, dynamic> json) { return AccountBusinessProfileAnnualRevenue(
  accountAnnualRevenue: AccountAnnualRevenue.canParse(json) ? AccountAnnualRevenue.fromJson(json) : null,
); }

final AccountAnnualRevenue? accountAnnualRevenue;

/// At least one variant must be present.
bool get isValid { return accountAnnualRevenue != null; } 
Map<String, dynamic> toJson() { return {
  ...?accountAnnualRevenue?.toJson(),
}; } 
 }
