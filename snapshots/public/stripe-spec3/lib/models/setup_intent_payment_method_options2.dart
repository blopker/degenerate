// GENERATED CODE - DO NOT MODIFY BY HAND

import 'setup_intent_payment_method_options.dart';/// Payment method-specific configuration for this SetupIntent.
final class SetupIntentPaymentMethodOptions2 {const SetupIntentPaymentMethodOptions2({this.setupIntentPaymentMethodOptions});

factory SetupIntentPaymentMethodOptions2.fromJson(Map<String, dynamic> json) { return SetupIntentPaymentMethodOptions2(
  setupIntentPaymentMethodOptions: SetupIntentPaymentMethodOptions.canParse(json) ? SetupIntentPaymentMethodOptions.fromJson(json) : null,
); }

final SetupIntentPaymentMethodOptions? setupIntentPaymentMethodOptions;

/// At least one variant must be present.
bool get isValid { return setupIntentPaymentMethodOptions != null; } 
Map<String, dynamic> toJson() { return {
  ...?setupIntentPaymentMethodOptions?.toJson(),
}; } 
 }
