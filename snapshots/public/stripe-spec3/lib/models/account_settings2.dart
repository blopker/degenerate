// GENERATED CODE - DO NOT MODIFY BY HAND

import 'account_settings.dart';/// Options for customizing how the account functions within Stripe.
final class AccountSettings2 {const AccountSettings2({this.accountSettings});

factory AccountSettings2.fromJson(Map<String, dynamic> json) { return AccountSettings2(
  accountSettings: AccountSettings.canParse(json) ? AccountSettings.fromJson(json) : null,
); }

final AccountSettings? accountSettings;

/// At least one variant must be present.
bool get isValid { return accountSettings != null; } 
Map<String, dynamic> toJson() { return {
  ...?accountSettings?.toJson(),
}; } 
 }
