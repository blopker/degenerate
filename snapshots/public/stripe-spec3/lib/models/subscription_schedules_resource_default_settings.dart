// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account.dart';import 'invoice_setting_subscription_schedule_setting.dart';import 'payment_method.dart';import 'subscription_billing_thresholds.dart';import 'subscription_schedules_resource_default_settings_automatic_tax.dart';import 'subscription_schedules_resource_default_settings_default_payment_method.dart';import 'subscription_schedules_resource_default_settings_on_behalf_of.dart';import 'subscription_transfer_data.dart';/// Possible values are `phase_start` or `automatic`. If `phase_start` then billing cycle anchor of the subscription is set to the start of the phase when entering the phase. If `automatic` then the billing cycle anchor is automatically modified as needed when entering the phase. For more information, see the billing cycle [documentation](https://docs.stripe.com/billing/subscriptions/billing-cycle).
final class SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor {const SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor._(this.value);

factory SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor.fromJson(String json) { return switch (json) {
  'automatic' => automatic,
  'phase_start' => phaseStart,
  _ => SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor._(json),
}; }

static const SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor automatic = SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor._('automatic');

static const SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor phaseStart = SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor._('phase_start');

static const List<SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor> values = [automatic, phaseStart];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor($value)'; } 
 }
/// Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`.
final class SubscriptionSchedulesResourceDefaultSettingsCollectionMethod {const SubscriptionSchedulesResourceDefaultSettingsCollectionMethod._(this.value);

factory SubscriptionSchedulesResourceDefaultSettingsCollectionMethod.fromJson(String json) { return switch (json) {
  'charge_automatically' => chargeAutomatically,
  'send_invoice' => sendInvoice,
  _ => SubscriptionSchedulesResourceDefaultSettingsCollectionMethod._(json),
}; }

static const SubscriptionSchedulesResourceDefaultSettingsCollectionMethod chargeAutomatically = SubscriptionSchedulesResourceDefaultSettingsCollectionMethod._('charge_automatically');

static const SubscriptionSchedulesResourceDefaultSettingsCollectionMethod sendInvoice = SubscriptionSchedulesResourceDefaultSettingsCollectionMethod._('send_invoice');

static const List<SubscriptionSchedulesResourceDefaultSettingsCollectionMethod> values = [chargeAutomatically, sendInvoice];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SubscriptionSchedulesResourceDefaultSettingsCollectionMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SubscriptionSchedulesResourceDefaultSettingsCollectionMethod($value)'; } 
 }
/// 
final class SubscriptionSchedulesResourceDefaultSettings {const SubscriptionSchedulesResourceDefaultSettings({this.applicationFeePercent, this.automaticTax, required this.billingCycleAnchor, this.billingThresholds, this.collectionMethod, this.defaultPaymentMethod, this.description, required this.invoiceSettings, this.onBehalfOf, this.transferData, });

factory SubscriptionSchedulesResourceDefaultSettings.fromJson(Map<String, dynamic> json) { return SubscriptionSchedulesResourceDefaultSettings(
  applicationFeePercent: json['application_fee_percent'] != null ? (json['application_fee_percent'] as num).toDouble() : null,
  automaticTax: json['automatic_tax'] != null ? SubscriptionSchedulesResourceDefaultSettingsAutomaticTax.fromJson(json['automatic_tax'] as Map<String, dynamic>) : null,
  billingCycleAnchor: SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor.fromJson(json['billing_cycle_anchor'] as String),
  billingThresholds: json['billing_thresholds'] != null ? SubscriptionBillingThresholds.fromJson(json['billing_thresholds'] as Map<String, dynamic>) : null,
  collectionMethod: json['collection_method'] != null ? SubscriptionSchedulesResourceDefaultSettingsCollectionMethod.fromJson(json['collection_method'] as String) : null,
  defaultPaymentMethod: json['default_payment_method'] != null ? OneOf2.parse(json['default_payment_method'], fromA: (v) => v as String, fromB: (v) => PaymentMethod.fromJson(v as Map<String, dynamic>),) : null,
  description: json['description'] as String?,
  invoiceSettings: InvoiceSettingSubscriptionScheduleSetting.fromJson(json['invoice_settings'] as Map<String, dynamic>),
  onBehalfOf: json['on_behalf_of'] != null ? OneOf2.parse(json['on_behalf_of'], fromA: (v) => v as String, fromB: (v) => Account.fromJson(v as Map<String, dynamic>),) : null,
  transferData: json['transfer_data'] != null ? SubscriptionTransferData.fromJson(json['transfer_data'] as Map<String, dynamic>) : null,
); }

/// A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account during this phase of the schedule.
final double? applicationFeePercent;

final SubscriptionSchedulesResourceDefaultSettingsAutomaticTax? automaticTax;

/// Possible values are `phase_start` or `automatic`. If `phase_start` then billing cycle anchor of the subscription is set to the start of the phase when entering the phase. If `automatic` then the billing cycle anchor is automatically modified as needed when entering the phase. For more information, see the billing cycle [documentation](https://docs.stripe.com/billing/subscriptions/billing-cycle).
final SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor billingCycleAnchor;

/// Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period
final SubscriptionBillingThresholds? billingThresholds;

/// Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`.
final SubscriptionSchedulesResourceDefaultSettingsCollectionMethod? collectionMethod;

/// ID of the default payment method for the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings.
final SubscriptionSchedulesResourceDefaultSettingsDefaultPaymentMethod? defaultPaymentMethod;

/// Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
final String? description;

final InvoiceSettingSubscriptionScheduleSetting invoiceSettings;

/// The account (if any) the charge was made on behalf of for charges associated with the schedule's subscription. See the Connect documentation for details.
final SubscriptionSchedulesResourceDefaultSettingsOnBehalfOf? onBehalfOf;

/// The account (if any) the associated subscription's payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the subscription's invoices.
final SubscriptionTransferData? transferData;

Map<String, dynamic> toJson() { return {
  'application_fee_percent': ?applicationFeePercent,
  if (automaticTax != null) 'automatic_tax': automaticTax?.toJson(),
  'billing_cycle_anchor': billingCycleAnchor.toJson(),
  if (billingThresholds != null) 'billing_thresholds': billingThresholds?.toJson(),
  if (collectionMethod != null) 'collection_method': collectionMethod?.toJson(),
  if (defaultPaymentMethod != null) 'default_payment_method': defaultPaymentMethod?.toJson(),
  'description': ?description,
  'invoice_settings': invoiceSettings.toJson(),
  if (onBehalfOf != null) 'on_behalf_of': onBehalfOf?.toJson(),
  if (transferData != null) 'transfer_data': transferData?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('billing_cycle_anchor') &&
      json.containsKey('invoice_settings'); } 
SubscriptionSchedulesResourceDefaultSettings copyWith({double? Function()? applicationFeePercent, SubscriptionSchedulesResourceDefaultSettingsAutomaticTax Function()? automaticTax, SubscriptionSchedulesResourceDefaultSettingsBillingCycleAnchor? billingCycleAnchor, SubscriptionBillingThresholds? Function()? billingThresholds, SubscriptionSchedulesResourceDefaultSettingsCollectionMethod? Function()? collectionMethod, SubscriptionSchedulesResourceDefaultSettingsDefaultPaymentMethod? Function()? defaultPaymentMethod, String? Function()? description, InvoiceSettingSubscriptionScheduleSetting? invoiceSettings, SubscriptionSchedulesResourceDefaultSettingsOnBehalfOf? Function()? onBehalfOf, SubscriptionTransferData? Function()? transferData, }) { return SubscriptionSchedulesResourceDefaultSettings(
  applicationFeePercent: applicationFeePercent != null ? applicationFeePercent() : this.applicationFeePercent,
  automaticTax: automaticTax != null ? automaticTax() : this.automaticTax,
  billingCycleAnchor: billingCycleAnchor ?? this.billingCycleAnchor,
  billingThresholds: billingThresholds != null ? billingThresholds() : this.billingThresholds,
  collectionMethod: collectionMethod != null ? collectionMethod() : this.collectionMethod,
  defaultPaymentMethod: defaultPaymentMethod != null ? defaultPaymentMethod() : this.defaultPaymentMethod,
  description: description != null ? description() : this.description,
  invoiceSettings: invoiceSettings ?? this.invoiceSettings,
  onBehalfOf: onBehalfOf != null ? onBehalfOf() : this.onBehalfOf,
  transferData: transferData != null ? transferData() : this.transferData,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SubscriptionSchedulesResourceDefaultSettings &&
          applicationFeePercent == other.applicationFeePercent &&
          automaticTax == other.automaticTax &&
          billingCycleAnchor == other.billingCycleAnchor &&
          billingThresholds == other.billingThresholds &&
          collectionMethod == other.collectionMethod &&
          defaultPaymentMethod == other.defaultPaymentMethod &&
          description == other.description &&
          invoiceSettings == other.invoiceSettings &&
          onBehalfOf == other.onBehalfOf &&
          transferData == other.transferData; } 
@override int get hashCode { return Object.hash(applicationFeePercent, automaticTax, billingCycleAnchor, billingThresholds, collectionMethod, defaultPaymentMethod, description, invoiceSettings, onBehalfOf, transferData); } 
@override String toString() { return 'SubscriptionSchedulesResourceDefaultSettings(applicationFeePercent: $applicationFeePercent, automaticTax: $automaticTax, billingCycleAnchor: $billingCycleAnchor, billingThresholds: $billingThresholds, collectionMethod: $collectionMethod, defaultPaymentMethod: $defaultPaymentMethod, description: $description, invoiceSettings: $invoiceSettings, onBehalfOf: $onBehalfOf, transferData: $transferData)'; } 
 }
