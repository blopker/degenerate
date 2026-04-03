// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class AccountBacsDebitPaymentsSettings {const AccountBacsDebitPaymentsSettings({this.displayName, this.serviceUserNumber, });

factory AccountBacsDebitPaymentsSettings.fromJson(Map<String, dynamic> json) { return AccountBacsDebitPaymentsSettings(
  displayName: json['display_name'] as String?,
  serviceUserNumber: json['service_user_number'] as String?,
); }

/// The Bacs Direct Debit display name for this account. For payments made with Bacs Direct Debit, this name appears on the mandate as the statement descriptor. Mobile banking apps display it as the name of the business. To use custom branding, set the Bacs Direct Debit Display Name during or right after creation. Custom branding incurs an additional monthly fee for the platform. The fee appears 5 business days after requesting Bacs. If you don't set the display name before requesting Bacs capability, it's automatically set as "Stripe" and the account is onboarded to Stripe branding, which is free.
final String? displayName;

/// The Bacs Direct Debit Service user number for this account. For payments made with Bacs Direct Debit, this number is a unique identifier of the account with our banking partners.
final String? serviceUserNumber;

Map<String, dynamic> toJson() { return {
  'display_name': ?displayName,
  'service_user_number': ?serviceUserNumber,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_name', 'service_user_number'}.contains(key)); } 
AccountBacsDebitPaymentsSettings copyWith({String? Function()? displayName, String? Function()? serviceUserNumber, }) { return AccountBacsDebitPaymentsSettings(
  displayName: displayName != null ? displayName() : this.displayName,
  serviceUserNumber: serviceUserNumber != null ? serviceUserNumber() : this.serviceUserNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountBacsDebitPaymentsSettings &&
          displayName == other.displayName &&
          serviceUserNumber == other.serviceUserNumber; } 
@override int get hashCode { return Object.hash(displayName, serviceUserNumber); } 
@override String toString() { return 'AccountBacsDebitPaymentsSettings(displayName: $displayName, serviceUserNumber: $serviceUserNumber)'; } 
 }
