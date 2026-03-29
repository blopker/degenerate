// GENERATED CODE - DO NOT MODIFY BY HAND

import 'confirmation_tokens_resource_mandate_data.dart';/// Data used for generating a Mandate.
final class ConfirmationTokenMandateData {const ConfirmationTokenMandateData({this.confirmationTokensResourceMandateData});

factory ConfirmationTokenMandateData.fromJson(Map<String, dynamic> json) { return ConfirmationTokenMandateData(
  confirmationTokensResourceMandateData: ConfirmationTokensResourceMandateData.canParse(json) ? ConfirmationTokensResourceMandateData.fromJson(json) : null,
); }

final ConfirmationTokensResourceMandateData? confirmationTokensResourceMandateData;

/// At least one variant must be present.
bool get isValid { return confirmationTokensResourceMandateData != null; } 
Map<String, dynamic> toJson() { return {
  ...?confirmationTokensResourceMandateData?.toJson(),
}; } 
 }
