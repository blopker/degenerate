// GENERATED CODE - DO NOT MODIFY BY HAND

import 'connect_account_reference.dart';/// The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
final class SchedulesPhaseAutomaticTaxLiability {const SchedulesPhaseAutomaticTaxLiability({this.connectAccountReference});

factory SchedulesPhaseAutomaticTaxLiability.fromJson(Map<String, dynamic> json) { return SchedulesPhaseAutomaticTaxLiability(
  connectAccountReference: ConnectAccountReference.canParse(json) ? ConnectAccountReference.fromJson(json) : null,
); }

final ConnectAccountReference? connectAccountReference;

/// At least one variant must be present.
bool get isValid { return connectAccountReference != null; } 
Map<String, dynamic> toJson() { return {
  ...?connectAccountReference?.toJson(),
}; } 
 }
