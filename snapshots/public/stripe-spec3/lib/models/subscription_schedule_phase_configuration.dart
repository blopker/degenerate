// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account.dart';import 'invoice_setting_subscription_schedule_phase_setting.dart';import 'payment_method.dart';import 'schedules_phase_automatic_tax.dart';import 'stackable_discount_with_discount_settings_and_discount_end.dart';import 'subscription_billing_thresholds.dart';import 'subscription_schedule_add_invoice_item.dart';import 'subscription_schedule_configuration_item.dart';import 'subscription_schedule_phase_configuration_default_payment_method.dart';import 'subscription_schedule_phase_configuration_on_behalf_of.dart';import 'subscription_transfer_data.dart';import 'tax_rate.dart';/// Possible values are `phase_start` or `automatic`. If `phase_start` then billing cycle anchor of the subscription is set to the start of the phase when entering the phase. If `automatic` then the billing cycle anchor is automatically modified as needed when entering the phase. For more information, see the billing cycle [documentation](https://docs.stripe.com/billing/subscriptions/billing-cycle).
@immutable final class SubscriptionSchedulePhaseConfigurationBillingCycleAnchor {const SubscriptionSchedulePhaseConfigurationBillingCycleAnchor._(this.value);

factory SubscriptionSchedulePhaseConfigurationBillingCycleAnchor.fromJson(String json) { return switch (json) {
  'automatic' => automatic,
  'phase_start' => phaseStart,
  _ => SubscriptionSchedulePhaseConfigurationBillingCycleAnchor._(json),
}; }

static const SubscriptionSchedulePhaseConfigurationBillingCycleAnchor automatic = SubscriptionSchedulePhaseConfigurationBillingCycleAnchor._('automatic');

static const SubscriptionSchedulePhaseConfigurationBillingCycleAnchor phaseStart = SubscriptionSchedulePhaseConfigurationBillingCycleAnchor._('phase_start');

static const List<SubscriptionSchedulePhaseConfigurationBillingCycleAnchor> values = [automatic, phaseStart];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SubscriptionSchedulePhaseConfigurationBillingCycleAnchor && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SubscriptionSchedulePhaseConfigurationBillingCycleAnchor($value)'; } 
 }
/// Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`.
@immutable final class SubscriptionSchedulePhaseConfigurationCollectionMethod {const SubscriptionSchedulePhaseConfigurationCollectionMethod._(this.value);

factory SubscriptionSchedulePhaseConfigurationCollectionMethod.fromJson(String json) { return switch (json) {
  'charge_automatically' => chargeAutomatically,
  'send_invoice' => sendInvoice,
  _ => SubscriptionSchedulePhaseConfigurationCollectionMethod._(json),
}; }

static const SubscriptionSchedulePhaseConfigurationCollectionMethod chargeAutomatically = SubscriptionSchedulePhaseConfigurationCollectionMethod._('charge_automatically');

static const SubscriptionSchedulePhaseConfigurationCollectionMethod sendInvoice = SubscriptionSchedulePhaseConfigurationCollectionMethod._('send_invoice');

static const List<SubscriptionSchedulePhaseConfigurationCollectionMethod> values = [chargeAutomatically, sendInvoice];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SubscriptionSchedulePhaseConfigurationCollectionMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SubscriptionSchedulePhaseConfigurationCollectionMethod($value)'; } 
 }
/// When transitioning phases, controls how prorations are handled (if any). Possible values are `create_prorations`, `none`, and `always_invoice`.
@immutable final class SubscriptionSchedulePhaseConfigurationProrationBehavior {const SubscriptionSchedulePhaseConfigurationProrationBehavior._(this.value);

factory SubscriptionSchedulePhaseConfigurationProrationBehavior.fromJson(String json) { return switch (json) {
  'always_invoice' => alwaysInvoice,
  'create_prorations' => createProrations,
  'none' => none,
  _ => SubscriptionSchedulePhaseConfigurationProrationBehavior._(json),
}; }

static const SubscriptionSchedulePhaseConfigurationProrationBehavior alwaysInvoice = SubscriptionSchedulePhaseConfigurationProrationBehavior._('always_invoice');

static const SubscriptionSchedulePhaseConfigurationProrationBehavior createProrations = SubscriptionSchedulePhaseConfigurationProrationBehavior._('create_prorations');

static const SubscriptionSchedulePhaseConfigurationProrationBehavior none = SubscriptionSchedulePhaseConfigurationProrationBehavior._('none');

static const List<SubscriptionSchedulePhaseConfigurationProrationBehavior> values = [alwaysInvoice, createProrations, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SubscriptionSchedulePhaseConfigurationProrationBehavior && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SubscriptionSchedulePhaseConfigurationProrationBehavior($value)'; } 
 }
/// A phase describes the plans, coupon, and trialing status of a subscription for a predefined time period.
@immutable final class SubscriptionSchedulePhaseConfiguration {const SubscriptionSchedulePhaseConfiguration({required this.addInvoiceItems, required this.currency, required this.discounts, required this.endDate, required this.items, required this.prorationBehavior, required this.startDate, this.applicationFeePercent = const Omittable.absent(), this.automaticTax, this.billingCycleAnchor = const Omittable.absent(), this.billingThresholds = const Omittable.absent(), this.collectionMethod = const Omittable.absent(), this.defaultPaymentMethod = const Omittable.absent(), this.defaultTaxRates = const Omittable.absent(), this.description = const Omittable.absent(), this.invoiceSettings = const Omittable.absent(), this.metadata = const Omittable.absent(), this.onBehalfOf = const Omittable.absent(), this.transferData = const Omittable.absent(), this.trialEnd = const Omittable.absent(), });

factory SubscriptionSchedulePhaseConfiguration.fromJson(Map<String, dynamic> json) { return SubscriptionSchedulePhaseConfiguration(
  addInvoiceItems: (json['add_invoice_items'] as List<dynamic>).map((e) => SubscriptionScheduleAddInvoiceItem.fromJson(e as Map<String, dynamic>)).toList(),
  applicationFeePercent: json.containsKey('application_fee_percent') ? Omittable(json['application_fee_percent'] != null ? (json['application_fee_percent'] as num).toDouble() : null) : const Omittable.absent(),
  automaticTax: json['automatic_tax'] != null ? SchedulesPhaseAutomaticTax.fromJson(json['automatic_tax'] as Map<String, dynamic>) : null,
  billingCycleAnchor: json.containsKey('billing_cycle_anchor') ? Omittable(json['billing_cycle_anchor'] != null ? SubscriptionSchedulePhaseConfigurationBillingCycleAnchor.fromJson(json['billing_cycle_anchor'] as String) : null) : const Omittable.absent(),
  billingThresholds: json.containsKey('billing_thresholds') ? Omittable(json['billing_thresholds'] != null ? SubscriptionBillingThresholds.fromJson(json['billing_thresholds'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  collectionMethod: json.containsKey('collection_method') ? Omittable(json['collection_method'] != null ? SubscriptionSchedulePhaseConfigurationCollectionMethod.fromJson(json['collection_method'] as String) : null) : const Omittable.absent(),
  currency: json['currency'] as String,
  defaultPaymentMethod: json.containsKey('default_payment_method') ? Omittable(json['default_payment_method'] != null ? OneOf2.parse(json['default_payment_method'], fromA: (v) => v as String, fromB: (v) => PaymentMethod.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  defaultTaxRates: json.containsKey('default_tax_rates') ? Omittable((json['default_tax_rates'] as List<dynamic>?)?.map((e) => TaxRate.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  discounts: (json['discounts'] as List<dynamic>).map((e) => StackableDiscountWithDiscountSettingsAndDiscountEnd.fromJson(e as Map<String, dynamic>)).toList(),
  endDate: (json['end_date'] as num).toInt(),
  invoiceSettings: json.containsKey('invoice_settings') ? Omittable(json['invoice_settings'] != null ? InvoiceSettingSubscriptionSchedulePhaseSetting.fromJson(json['invoice_settings'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  items: (json['items'] as List<dynamic>).map((e) => SubscriptionScheduleConfigurationItem.fromJson(e as Map<String, dynamic>)).toList(),
  metadata: json.containsKey('metadata') ? Omittable((json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String))) : const Omittable.absent(),
  onBehalfOf: json.containsKey('on_behalf_of') ? Omittable(json['on_behalf_of'] != null ? OneOf2.parse(json['on_behalf_of'], fromA: (v) => v as String, fromB: (v) => Account.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  prorationBehavior: SubscriptionSchedulePhaseConfigurationProrationBehavior.fromJson(json['proration_behavior'] as String),
  startDate: (json['start_date'] as num).toInt(),
  transferData: json.containsKey('transfer_data') ? Omittable(json['transfer_data'] != null ? SubscriptionTransferData.fromJson(json['transfer_data'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  trialEnd: json.containsKey('trial_end') ? Omittable(json['trial_end'] != null ? (json['trial_end'] as num).toInt() : null) : const Omittable.absent(),
); }

/// A list of prices and quantities that will generate invoice items appended to the next invoice for this phase.
final List<SubscriptionScheduleAddInvoiceItem> addInvoiceItems;

/// A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account during this phase of the schedule.
final Omittable<double?> applicationFeePercent;

final SchedulesPhaseAutomaticTax? automaticTax;

/// Possible values are `phase_start` or `automatic`. If `phase_start` then billing cycle anchor of the subscription is set to the start of the phase when entering the phase. If `automatic` then the billing cycle anchor is automatically modified as needed when entering the phase. For more information, see the billing cycle [documentation](https://docs.stripe.com/billing/subscriptions/billing-cycle).
final Omittable<SubscriptionSchedulePhaseConfigurationBillingCycleAnchor?> billingCycleAnchor;

/// Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period
final Omittable<SubscriptionBillingThresholds?> billingThresholds;

/// Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`.
final Omittable<SubscriptionSchedulePhaseConfigurationCollectionMethod?> collectionMethod;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String currency;

/// ID of the default payment method for the subscription schedule. It must belong to the customer associated with the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings.
final Omittable<SubscriptionSchedulePhaseConfigurationDefaultPaymentMethod?> defaultPaymentMethod;

/// The default tax rates to apply to the subscription during this phase of the subscription schedule.
final Omittable<List<TaxRate>?> defaultTaxRates;

/// Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
final Omittable<String?> description;

/// The stackable discounts that will be applied to the subscription on this phase. Subscription item discounts are applied before subscription discounts.
final List<StackableDiscountWithDiscountSettingsAndDiscountEnd> discounts;

/// The end of this phase of the subscription schedule.
final int endDate;

/// The invoice settings applicable during this phase.
final Omittable<InvoiceSettingSubscriptionSchedulePhaseSetting?> invoiceSettings;

/// Subscription items to configure the subscription to during this phase of the subscription schedule.
final List<SubscriptionScheduleConfigurationItem> items;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to a phase. Metadata on a schedule's phase will update the underlying subscription's `metadata` when the phase is entered. Updating the underlying subscription's `metadata` directly will not affect the current phase's `metadata`.
final Omittable<Map<String,String>?> metadata;

/// The account (if any) the charge was made on behalf of for charges associated with the schedule's subscription. See the Connect documentation for details.
final Omittable<SubscriptionSchedulePhaseConfigurationOnBehalfOf?> onBehalfOf;

/// When transitioning phases, controls how prorations are handled (if any). Possible values are `create_prorations`, `none`, and `always_invoice`.
final SubscriptionSchedulePhaseConfigurationProrationBehavior prorationBehavior;

/// The start of this phase of the subscription schedule.
final int startDate;

/// The account (if any) the associated subscription's payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the subscription's invoices.
final Omittable<SubscriptionTransferData?> transferData;

/// When the trial ends within the phase.
final Omittable<int?> trialEnd;

Map<String, dynamic> toJson() { return {
  'add_invoice_items': addInvoiceItems.map((e) => e.toJson()).toList(),
  if (applicationFeePercent.isPresent) 'application_fee_percent': applicationFeePercent.value,
  if (automaticTax != null) 'automatic_tax': automaticTax?.toJson(),
  if (billingCycleAnchor.isPresent) 'billing_cycle_anchor': billingCycleAnchor.value?.toJson(),
  if (billingThresholds.isPresent) 'billing_thresholds': billingThresholds.value?.toJson(),
  if (collectionMethod.isPresent) 'collection_method': collectionMethod.value?.toJson(),
  'currency': currency,
  if (defaultPaymentMethod.isPresent) 'default_payment_method': defaultPaymentMethod.value?.toJson(),
  if (defaultTaxRates.isPresent) 'default_tax_rates': defaultTaxRates.value?.map((e) => e.toJson()).toList(),
  if (description.isPresent) 'description': description.value,
  'discounts': discounts.map((e) => e.toJson()).toList(),
  'end_date': endDate,
  if (invoiceSettings.isPresent) 'invoice_settings': invoiceSettings.value?.toJson(),
  'items': items.map((e) => e.toJson()).toList(),
  if (metadata.isPresent) 'metadata': metadata.value,
  if (onBehalfOf.isPresent) 'on_behalf_of': onBehalfOf.value?.toJson(),
  'proration_behavior': prorationBehavior.toJson(),
  'start_date': startDate,
  if (transferData.isPresent) 'transfer_data': transferData.value?.toJson(),
  if (trialEnd.isPresent) 'trial_end': trialEnd.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('add_invoice_items') &&
      json.containsKey('currency') && json['currency'] is String &&
      json.containsKey('discounts') &&
      json.containsKey('end_date') && json['end_date'] is num &&
      json.containsKey('items') &&
      json.containsKey('proration_behavior') &&
      json.containsKey('start_date') && json['start_date'] is num; } 
SubscriptionSchedulePhaseConfiguration copyWith({List<SubscriptionScheduleAddInvoiceItem>? addInvoiceItems, Omittable<double?>? applicationFeePercent, SchedulesPhaseAutomaticTax? Function()? automaticTax, Omittable<SubscriptionSchedulePhaseConfigurationBillingCycleAnchor?>? billingCycleAnchor, Omittable<SubscriptionBillingThresholds?>? billingThresholds, Omittable<SubscriptionSchedulePhaseConfigurationCollectionMethod?>? collectionMethod, String? currency, Omittable<SubscriptionSchedulePhaseConfigurationDefaultPaymentMethod?>? defaultPaymentMethod, Omittable<List<TaxRate>?>? defaultTaxRates, Omittable<String?>? description, List<StackableDiscountWithDiscountSettingsAndDiscountEnd>? discounts, int? endDate, Omittable<InvoiceSettingSubscriptionSchedulePhaseSetting?>? invoiceSettings, List<SubscriptionScheduleConfigurationItem>? items, Omittable<Map<String,String>?>? metadata, Omittable<SubscriptionSchedulePhaseConfigurationOnBehalfOf?>? onBehalfOf, SubscriptionSchedulePhaseConfigurationProrationBehavior? prorationBehavior, int? startDate, Omittable<SubscriptionTransferData?>? transferData, Omittable<int?>? trialEnd, }) { return SubscriptionSchedulePhaseConfiguration(
  addInvoiceItems: addInvoiceItems ?? this.addInvoiceItems,
  applicationFeePercent: applicationFeePercent ?? this.applicationFeePercent,
  automaticTax: automaticTax != null ? automaticTax() : this.automaticTax,
  billingCycleAnchor: billingCycleAnchor ?? this.billingCycleAnchor,
  billingThresholds: billingThresholds ?? this.billingThresholds,
  collectionMethod: collectionMethod ?? this.collectionMethod,
  currency: currency ?? this.currency,
  defaultPaymentMethod: defaultPaymentMethod ?? this.defaultPaymentMethod,
  defaultTaxRates: defaultTaxRates ?? this.defaultTaxRates,
  description: description ?? this.description,
  discounts: discounts ?? this.discounts,
  endDate: endDate ?? this.endDate,
  invoiceSettings: invoiceSettings ?? this.invoiceSettings,
  items: items ?? this.items,
  metadata: metadata ?? this.metadata,
  onBehalfOf: onBehalfOf ?? this.onBehalfOf,
  prorationBehavior: prorationBehavior ?? this.prorationBehavior,
  startDate: startDate ?? this.startDate,
  transferData: transferData ?? this.transferData,
  trialEnd: trialEnd ?? this.trialEnd,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SubscriptionSchedulePhaseConfiguration &&
          listEquals(addInvoiceItems, other.addInvoiceItems) &&
          applicationFeePercent == other.applicationFeePercent &&
          automaticTax == other.automaticTax &&
          billingCycleAnchor == other.billingCycleAnchor &&
          billingThresholds == other.billingThresholds &&
          collectionMethod == other.collectionMethod &&
          currency == other.currency &&
          defaultPaymentMethod == other.defaultPaymentMethod &&
          defaultTaxRates.isPresent == other.defaultTaxRates.isPresent &&
          listEquals(defaultTaxRates.value, other.defaultTaxRates.value) &&
          description == other.description &&
          listEquals(discounts, other.discounts) &&
          endDate == other.endDate &&
          invoiceSettings == other.invoiceSettings &&
          listEquals(items, other.items) &&
          metadata == other.metadata &&
          onBehalfOf == other.onBehalfOf &&
          prorationBehavior == other.prorationBehavior &&
          startDate == other.startDate &&
          transferData == other.transferData &&
          trialEnd == other.trialEnd; } 
@override int get hashCode { return Object.hash(Object.hashAll(addInvoiceItems), applicationFeePercent, automaticTax, billingCycleAnchor, billingThresholds, collectionMethod, currency, defaultPaymentMethod, Object.hashAll(defaultTaxRates.value ?? const []), description, Object.hashAll(discounts), endDate, invoiceSettings, Object.hashAll(items), metadata, onBehalfOf, prorationBehavior, startDate, transferData, trialEnd); } 
@override String toString() { return 'SubscriptionSchedulePhaseConfiguration(addInvoiceItems: $addInvoiceItems, applicationFeePercent: $applicationFeePercent, automaticTax: $automaticTax, billingCycleAnchor: $billingCycleAnchor, billingThresholds: $billingThresholds, collectionMethod: $collectionMethod, currency: $currency, defaultPaymentMethod: $defaultPaymentMethod, defaultTaxRates: $defaultTaxRates, description: $description, discounts: $discounts, endDate: $endDate, invoiceSettings: $invoiceSettings, items: $items, metadata: $metadata, onBehalfOf: $onBehalfOf, prorationBehavior: $prorationBehavior, startDate: $startDate, transferData: $transferData, trialEnd: $trialEnd)'; } 
 }
