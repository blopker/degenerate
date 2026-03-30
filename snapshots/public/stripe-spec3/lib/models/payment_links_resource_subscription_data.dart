// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_links_resource_subscription_data_invoice_settings.dart';import 'subscriptions_trials_resource_trial_settings.dart';/// 
final class PaymentLinksResourceSubscriptionData {const PaymentLinksResourceSubscriptionData({this.description, required this.invoiceSettings, required this.metadata, this.trialPeriodDays, this.trialSettings, });

factory PaymentLinksResourceSubscriptionData.fromJson(Map<String, dynamic> json) { return PaymentLinksResourceSubscriptionData(
  description: json['description'] as String?,
  invoiceSettings: PaymentLinksResourceSubscriptionDataInvoiceSettings.fromJson(json['invoice_settings'] as Map<String, dynamic>),
  metadata: (json['metadata'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  trialPeriodDays: json['trial_period_days'] != null ? (json['trial_period_days'] as num).toInt() : null,
  trialSettings: json['trial_settings'] != null ? SubscriptionsTrialsResourceTrialSettings.fromJson(json['trial_settings'] as Map<String, dynamic>) : null,
); }

/// The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
final String? description;

final PaymentLinksResourceSubscriptionDataInvoiceSettings invoiceSettings;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that will set metadata on [Subscriptions](https://docs.stripe.com/api/subscriptions) generated from this payment link.
final Map<String,String> metadata;

/// Integer representing the number of trial period days before the customer is charged for the first time.
final int? trialPeriodDays;

/// Settings related to subscription trials.
final SubscriptionsTrialsResourceTrialSettings? trialSettings;

Map<String, dynamic> toJson() { return {
  'description': ?description,
  'invoice_settings': invoiceSettings.toJson(),
  'metadata': metadata,
  'trial_period_days': ?trialPeriodDays,
  if (trialSettings != null) 'trial_settings': trialSettings?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('invoice_settings') &&
      json.containsKey('metadata'); } 
PaymentLinksResourceSubscriptionData copyWith({String? Function()? description, PaymentLinksResourceSubscriptionDataInvoiceSettings? invoiceSettings, Map<String,String>? metadata, int? Function()? trialPeriodDays, SubscriptionsTrialsResourceTrialSettings? Function()? trialSettings, }) { return PaymentLinksResourceSubscriptionData(
  description: description != null ? description() : this.description,
  invoiceSettings: invoiceSettings ?? this.invoiceSettings,
  metadata: metadata ?? this.metadata,
  trialPeriodDays: trialPeriodDays != null ? trialPeriodDays() : this.trialPeriodDays,
  trialSettings: trialSettings != null ? trialSettings() : this.trialSettings,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentLinksResourceSubscriptionData &&
          description == other.description &&
          invoiceSettings == other.invoiceSettings &&
          metadata == other.metadata &&
          trialPeriodDays == other.trialPeriodDays &&
          trialSettings == other.trialSettings; } 
@override int get hashCode { return Object.hash(description, invoiceSettings, metadata, trialPeriodDays, trialSettings); } 
@override String toString() { return 'PaymentLinksResourceSubscriptionData(description: $description, invoiceSettings: $invoiceSettings, metadata: $metadata, trialPeriodDays: $trialPeriodDays, trialSettings: $trialSettings)'; } 
 }
