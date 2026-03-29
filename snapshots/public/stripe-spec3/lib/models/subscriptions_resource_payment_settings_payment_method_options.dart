// GENERATED CODE - DO NOT MODIFY BY HAND

import 'subscriptions_resource_payment_method_options.dart';/// Payment-method-specific configuration to provide to invoices created by the subscription.
final class SubscriptionsResourcePaymentSettingsPaymentMethodOptions {const SubscriptionsResourcePaymentSettingsPaymentMethodOptions({this.subscriptionsResourcePaymentMethodOptions});

factory SubscriptionsResourcePaymentSettingsPaymentMethodOptions.fromJson(Map<String, dynamic> json) { return SubscriptionsResourcePaymentSettingsPaymentMethodOptions(
  subscriptionsResourcePaymentMethodOptions: SubscriptionsResourcePaymentMethodOptions.canParse(json) ? SubscriptionsResourcePaymentMethodOptions.fromJson(json) : null,
); }

final SubscriptionsResourcePaymentMethodOptions? subscriptionsResourcePaymentMethodOptions;

/// At least one variant must be present.
bool get isValid { return subscriptionsResourcePaymentMethodOptions != null; } 
Map<String, dynamic> toJson() { return {
  ...?subscriptionsResourcePaymentMethodOptions?.toJson(),
}; } 
 }
