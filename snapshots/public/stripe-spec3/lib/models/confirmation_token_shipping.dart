// GENERATED CODE - DO NOT MODIFY BY HAND

import 'confirmation_tokens_resource_shipping.dart';/// Shipping information collected on this ConfirmationToken.
final class ConfirmationTokenShipping {const ConfirmationTokenShipping({this.confirmationTokensResourceShipping});

factory ConfirmationTokenShipping.fromJson(Map<String, dynamic> json) { return ConfirmationTokenShipping(
  confirmationTokensResourceShipping: ConfirmationTokensResourceShipping.canParse(json) ? ConfirmationTokensResourceShipping.fromJson(json) : null,
); }

final ConfirmationTokensResourceShipping? confirmationTokensResourceShipping;

/// At least one variant must be present.
bool get isValid { return confirmationTokensResourceShipping != null; } 
Map<String, dynamic> toJson() { return {
  ...?confirmationTokensResourceShipping?.toJson(),
}; } 
 }
