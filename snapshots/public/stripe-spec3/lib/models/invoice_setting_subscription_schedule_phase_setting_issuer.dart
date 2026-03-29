// GENERATED CODE - DO NOT MODIFY BY HAND

import 'connect_account_reference.dart';/// The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
final class InvoiceSettingSubscriptionSchedulePhaseSettingIssuer {const InvoiceSettingSubscriptionSchedulePhaseSettingIssuer({this.connectAccountReference});

factory InvoiceSettingSubscriptionSchedulePhaseSettingIssuer.fromJson(Map<String, dynamic> json) { return InvoiceSettingSubscriptionSchedulePhaseSettingIssuer(
  connectAccountReference: ConnectAccountReference.canParse(json) ? ConnectAccountReference.fromJson(json) : null,
); }

final ConnectAccountReference? connectAccountReference;

/// At least one variant must be present.
bool get isValid { return connectAccountReference != null; } 
Map<String, dynamic> toJson() { return {
  ...?connectAccountReference?.toJson(),
}; } 
 }
