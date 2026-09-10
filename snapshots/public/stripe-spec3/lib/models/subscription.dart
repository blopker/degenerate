// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account.dart';import 'application.dart';import 'bank_account.dart';import 'cancellation_details.dart';import 'card.dart';import 'customer.dart';import 'deleted_application.dart';import 'deleted_customer.dart';import 'discount.dart';import 'invoice.dart';import 'payment_method.dart';import 'setup_intent.dart';import 'source.dart';import 'subscription_application.dart';import 'subscription_automatic_tax.dart';import 'subscription_billing_thresholds.dart';import 'subscription_customer.dart';import 'subscription_default_payment_method.dart';import 'subscription_default_source.dart';import 'subscription_discounts.dart';import 'subscription_items.dart';import 'subscription_latest_invoice.dart';import 'subscription_on_behalf_of.dart';import 'subscription_pending_invoice_item_interval.dart';import 'subscription_pending_setup_intent.dart';import 'subscription_schedule.dart';import 'subscription_schedule2.dart';import 'subscription_test_clock.dart';import 'subscription_transfer_data.dart';import 'subscriptions_resource_billing_cycle_anchor_config.dart';import 'subscriptions_resource_billing_mode.dart';import 'subscriptions_resource_pause_collection.dart';import 'subscriptions_resource_payment_settings.dart';import 'subscriptions_resource_pending_update.dart';import 'subscriptions_resource_subscription_invoice_settings.dart';import 'subscriptions_resource_trial_settings_trial_settings.dart';import 'tax_rate.dart';import 'test_helpers_test_clock.dart';/// Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this subscription at the end of the cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`.
@immutable final class SubscriptionCollectionMethod {const SubscriptionCollectionMethod._(this.value);

factory SubscriptionCollectionMethod.fromJson(String json) { return switch (json) {
  'charge_automatically' => chargeAutomatically,
  'send_invoice' => sendInvoice,
  _ => SubscriptionCollectionMethod._(json),
}; }

static const SubscriptionCollectionMethod chargeAutomatically = SubscriptionCollectionMethod._('charge_automatically');

static const SubscriptionCollectionMethod sendInvoice = SubscriptionCollectionMethod._('send_invoice');

static const List<SubscriptionCollectionMethod> values = [chargeAutomatically, sendInvoice];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SubscriptionCollectionMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SubscriptionCollectionMethod($value)'; } 
 }
/// String representing the object's type. Objects of the same type share the same value.
@immutable final class SubscriptionObject {const SubscriptionObject._(this.value);

factory SubscriptionObject.fromJson(String json) { return switch (json) {
  'subscription' => subscription,
  _ => SubscriptionObject._(json),
}; }

static const SubscriptionObject subscription = SubscriptionObject._('subscription');

static const List<SubscriptionObject> values = [subscription];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SubscriptionObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SubscriptionObject($value)'; } 
 }
/// Possible values are `incomplete`, `incomplete_expired`, `trialing`, `active`, `past_due`, `canceled`, `unpaid`, or `paused`.
/// 
/// For `collection_method=charge_automatically` a subscription moves into `incomplete` if the initial payment attempt fails. A subscription in this status can only have metadata and default_source updated. Once the first invoice is paid, the subscription moves into an `active` status. If the first invoice is not paid within 23 hours, the subscription transitions to `incomplete_expired`. This is a terminal status, the open invoice will be voided and no further invoices will be generated.
/// 
/// A subscription that is currently in a trial period is `trialing` and moves to `active` when the trial period is over.
/// 
/// A subscription can only enter a `paused` status [when a trial ends without a payment method](https://docs.stripe.com/billing/subscriptions/trials#create-free-trials-without-payment). A `paused` subscription doesn't generate invoices and can be resumed after your customer adds their payment method. The `paused` status is different from [pausing collection](https://docs.stripe.com/billing/subscriptions/pause-payment), which still generates invoices and leaves the subscription's status unchanged.
/// 
/// If subscription `collection_method=charge_automatically`, it becomes `past_due` when payment is required but cannot be paid (due to failed payment or awaiting additional user actions). Once Stripe has exhausted all payment retry attempts, the subscription will become `canceled` or `unpaid` (depending on your subscriptions settings).
/// 
/// If subscription `collection_method=send_invoice` it becomes `past_due` when its invoice is not paid by the due date, and `canceled` or `unpaid` if it is still not paid by an additional deadline after that. Note that when a subscription has a status of `unpaid`, no subsequent invoices will be attempted (invoices will be created, but then immediately automatically closed). After receiving updated payment information from a customer, you may choose to reopen and pay their closed invoices.
@immutable final class SubscriptionStatus {const SubscriptionStatus._(this.value);

factory SubscriptionStatus.fromJson(String json) { return switch (json) {
  'active' => active,
  'canceled' => canceled,
  'incomplete' => incomplete,
  'incomplete_expired' => incompleteExpired,
  'past_due' => pastDue,
  'paused' => paused,
  'trialing' => trialing,
  'unpaid' => unpaid,
  _ => SubscriptionStatus._(json),
}; }

static const SubscriptionStatus active = SubscriptionStatus._('active');

static const SubscriptionStatus canceled = SubscriptionStatus._('canceled');

static const SubscriptionStatus incomplete = SubscriptionStatus._('incomplete');

static const SubscriptionStatus incompleteExpired = SubscriptionStatus._('incomplete_expired');

static const SubscriptionStatus pastDue = SubscriptionStatus._('past_due');

static const SubscriptionStatus paused = SubscriptionStatus._('paused');

static const SubscriptionStatus trialing = SubscriptionStatus._('trialing');

static const SubscriptionStatus unpaid = SubscriptionStatus._('unpaid');

static const List<SubscriptionStatus> values = [active, canceled, incomplete, incompleteExpired, pastDue, paused, trialing, unpaid];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SubscriptionStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SubscriptionStatus($value)'; } 
 }
/// Subscriptions allow you to charge a customer on a recurring basis.
/// 
/// Related guide: [Creating subscriptions](https://docs.stripe.com/billing/subscriptions/creating)
@immutable final class Subscription {const Subscription({required this.status, required this.automaticTax, required this.billingCycleAnchor, required this.billingMode, required this.cancelAtPeriodEnd, required this.collectionMethod, required this.created, required this.currency, required this.customer, required this.discounts, required this.id, required this.invoiceSettings, required this.items, required this.livemode, required this.metadata, required this.object, required this.startDate, this.customerAccount = const Omittable.absent(), this.defaultSource = const Omittable.absent(), this.defaultTaxRates = const Omittable.absent(), this.description = const Omittable.absent(), this.canceledAt = const Omittable.absent(), this.endedAt = const Omittable.absent(), this.cancellationDetails = const Omittable.absent(), this.applicationFeePercent = const Omittable.absent(), this.billingThresholds = const Omittable.absent(), this.latestInvoice = const Omittable.absent(), this.cancelAt = const Omittable.absent(), this.billingCycleAnchorConfig = const Omittable.absent(), this.trialStart = const Omittable.absent(), this.application = const Omittable.absent(), this.onBehalfOf = const Omittable.absent(), this.pauseCollection = const Omittable.absent(), this.paymentSettings = const Omittable.absent(), this.pendingInvoiceItemInterval = const Omittable.absent(), this.pendingSetupIntent = const Omittable.absent(), this.pendingUpdate = const Omittable.absent(), this.schedule = const Omittable.absent(), this.daysUntilDue = const Omittable.absent(), this.defaultPaymentMethod = const Omittable.absent(), this.testClock = const Omittable.absent(), this.transferData = const Omittable.absent(), this.trialEnd = const Omittable.absent(), this.trialSettings = const Omittable.absent(), this.nextPendingInvoiceItemInvoice = const Omittable.absent(), });

factory Subscription.fromJson(Map<String, dynamic> json) { return Subscription(
  application: json.containsKey('application') ? Omittable(json['application'] != null ? OneOf3.parse(json['application'], fromA: (v) => v as String, fromB: (v) => Application.fromJson(v as Map<String, dynamic>), fromC: (v) => DeletedApplication.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  applicationFeePercent: json.containsKey('application_fee_percent') ? Omittable(json['application_fee_percent'] != null ? (json['application_fee_percent'] as num).toDouble() : null) : const Omittable.absent(),
  automaticTax: SubscriptionAutomaticTax.fromJson(json['automatic_tax'] as Map<String, dynamic>),
  billingCycleAnchor: (json['billing_cycle_anchor'] as num).toInt(),
  billingCycleAnchorConfig: json.containsKey('billing_cycle_anchor_config') ? Omittable(json['billing_cycle_anchor_config'] != null ? SubscriptionsResourceBillingCycleAnchorConfig.fromJson(json['billing_cycle_anchor_config'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  billingMode: SubscriptionsResourceBillingMode.fromJson(json['billing_mode'] as Map<String, dynamic>),
  billingThresholds: json.containsKey('billing_thresholds') ? Omittable(json['billing_thresholds'] != null ? SubscriptionBillingThresholds.fromJson(json['billing_thresholds'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  cancelAt: json.containsKey('cancel_at') ? Omittable(json['cancel_at'] != null ? (json['cancel_at'] as num).toInt() : null) : const Omittable.absent(),
  cancelAtPeriodEnd: json['cancel_at_period_end'] as bool,
  canceledAt: json.containsKey('canceled_at') ? Omittable(json['canceled_at'] != null ? (json['canceled_at'] as num).toInt() : null) : const Omittable.absent(),
  cancellationDetails: json.containsKey('cancellation_details') ? Omittable(json['cancellation_details'] != null ? CancellationDetails.fromJson(json['cancellation_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  collectionMethod: SubscriptionCollectionMethod.fromJson(json['collection_method'] as String),
  created: (json['created'] as num).toInt(),
  currency: json['currency'] as String,
  customer: OneOf3.parse(json['customer'], fromA: (v) => v as String, fromB: (v) => Customer.fromJson(v as Map<String, dynamic>), fromC: (v) => DeletedCustomer.fromJson(v as Map<String, dynamic>),),
  customerAccount: json.containsKey('customer_account') ? Omittable(json['customer_account'] as String?) : const Omittable.absent(),
  daysUntilDue: json.containsKey('days_until_due') ? Omittable(json['days_until_due'] != null ? (json['days_until_due'] as num).toInt() : null) : const Omittable.absent(),
  defaultPaymentMethod: json.containsKey('default_payment_method') ? Omittable(json['default_payment_method'] != null ? OneOf2.parse(json['default_payment_method'], fromA: (v) => v as String, fromB: (v) => PaymentMethod.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  defaultSource: json.containsKey('default_source') ? Omittable(json['default_source'] != null ? OneOf4.parse(json['default_source'], fromA: (v) => v as String, fromB: (v) => BankAccount.fromJson(v as Map<String, dynamic>), fromC: (v) => Card.fromJson(v as Map<String, dynamic>), fromD: (v) => Source.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  defaultTaxRates: json.containsKey('default_tax_rates') ? Omittable((json['default_tax_rates'] as List<dynamic>?)?.map((e) => TaxRate.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  discounts: (json['discounts'] as List<dynamic>).map((e) => OneOf2.parse(e, fromA: (v) => v as String, fromB: (v) => Discount.fromJson(v as Map<String, dynamic>),)).toList(),
  endedAt: json.containsKey('ended_at') ? Omittable(json['ended_at'] != null ? (json['ended_at'] as num).toInt() : null) : const Omittable.absent(),
  id: json['id'] as String,
  invoiceSettings: SubscriptionsResourceSubscriptionInvoiceSettings.fromJson(json['invoice_settings'] as Map<String, dynamic>),
  items: SubscriptionItems.fromJson(json['items'] as Map<String, dynamic>),
  latestInvoice: json.containsKey('latest_invoice') ? Omittable(json['latest_invoice'] != null ? OneOf2.parse(json['latest_invoice'], fromA: (v) => v as String, fromB: (v) => Invoice.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  livemode: json['livemode'] as bool,
  metadata: (json['metadata'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  nextPendingInvoiceItemInvoice: json.containsKey('next_pending_invoice_item_invoice') ? Omittable(json['next_pending_invoice_item_invoice'] != null ? (json['next_pending_invoice_item_invoice'] as num).toInt() : null) : const Omittable.absent(),
  object: SubscriptionObject.fromJson(json['object'] as String),
  onBehalfOf: json.containsKey('on_behalf_of') ? Omittable(json['on_behalf_of'] != null ? OneOf2.parse(json['on_behalf_of'], fromA: (v) => v as String, fromB: (v) => Account.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  pauseCollection: json.containsKey('pause_collection') ? Omittable(json['pause_collection'] != null ? SubscriptionsResourcePauseCollection.fromJson(json['pause_collection'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  paymentSettings: json.containsKey('payment_settings') ? Omittable(json['payment_settings'] != null ? SubscriptionsResourcePaymentSettings.fromJson(json['payment_settings'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  pendingInvoiceItemInterval: json.containsKey('pending_invoice_item_interval') ? Omittable(json['pending_invoice_item_interval'] != null ? SubscriptionPendingInvoiceItemInterval.fromJson(json['pending_invoice_item_interval'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  pendingSetupIntent: json.containsKey('pending_setup_intent') ? Omittable(json['pending_setup_intent'] != null ? OneOf2.parse(json['pending_setup_intent'], fromA: (v) => v as String, fromB: (v) => SetupIntent.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  pendingUpdate: json.containsKey('pending_update') ? Omittable(json['pending_update'] != null ? SubscriptionsResourcePendingUpdate.fromJson(json['pending_update'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  schedule: json.containsKey('schedule') ? Omittable(json['schedule'] != null ? OneOf2.parse(json['schedule'], fromA: (v) => v as String, fromB: (v) => SubscriptionSchedule.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  startDate: (json['start_date'] as num).toInt(),
  status: SubscriptionStatus.fromJson(json['status'] as String),
  testClock: json.containsKey('test_clock') ? Omittable(json['test_clock'] != null ? OneOf2.parse(json['test_clock'], fromA: (v) => v as String, fromB: (v) => TestHelpersTestClock.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  transferData: json.containsKey('transfer_data') ? Omittable(json['transfer_data'] != null ? SubscriptionTransferData.fromJson(json['transfer_data'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  trialEnd: json.containsKey('trial_end') ? Omittable(json['trial_end'] != null ? (json['trial_end'] as num).toInt() : null) : const Omittable.absent(),
  trialSettings: json.containsKey('trial_settings') ? Omittable(json['trial_settings'] != null ? SubscriptionsResourceTrialSettingsTrialSettings.fromJson(json['trial_settings'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  trialStart: json.containsKey('trial_start') ? Omittable(json['trial_start'] != null ? (json['trial_start'] as num).toInt() : null) : const Omittable.absent(),
); }

/// ID of the Connect Application that created the subscription.
final Omittable<SubscriptionApplication?> application;

/// A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account.
final Omittable<double?> applicationFeePercent;

final SubscriptionAutomaticTax automaticTax;

/// The reference point that aligns future [billing cycle](https://docs.stripe.com/subscriptions/billing-cycle) dates. It sets the day of week for `week` intervals, the day of month for `month` and `year` intervals, and the month of year for `year` intervals. The timestamp is in UTC format.
final int billingCycleAnchor;

/// The fixed values used to calculate the `billing_cycle_anchor`.
final Omittable<SubscriptionsResourceBillingCycleAnchorConfig?> billingCycleAnchorConfig;

final SubscriptionsResourceBillingMode billingMode;

/// Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period
final Omittable<SubscriptionBillingThresholds?> billingThresholds;

/// A date in the future at which the subscription will automatically get canceled
final Omittable<int?> cancelAt;

/// Whether this subscription will (if `status=active`) or did (if `status=canceled`) cancel at the end of the current billing period.
final bool cancelAtPeriodEnd;

/// If the subscription has been canceled, the date of that cancellation. If the subscription was canceled with `cancel_at_period_end`, `canceled_at` will reflect the time of the most recent update request, not the end of the subscription period when the subscription is automatically moved to a canceled state.
final Omittable<int?> canceledAt;

/// Details about why this subscription was cancelled
final Omittable<CancellationDetails?> cancellationDetails;

/// Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this subscription at the end of the cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`.
final SubscriptionCollectionMethod collectionMethod;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String currency;

/// ID of the customer who owns the subscription.
final SubscriptionCustomer customer;

/// ID of the account representing the customer who owns the subscription.
final Omittable<String?> customerAccount;

/// Number of days a customer has to pay invoices generated by this subscription. This value will be `null` for subscriptions where `collection_method=charge_automatically`.
final Omittable<int?> daysUntilDue;

/// ID of the default payment method for the subscription. It must belong to the customer associated with the subscription. This takes precedence over `default_source`. If neither are set, invoices will use the customer's [invoice_settings.default_payment_method](https://docs.stripe.com/api/customers/object#customer_object-invoice_settings-default_payment_method) or [default_source](https://docs.stripe.com/api/customers/object#customer_object-default_source).
final Omittable<SubscriptionDefaultPaymentMethod?> defaultPaymentMethod;

/// ID of the default payment source for the subscription. It must belong to the customer associated with the subscription and be in a chargeable state. If `default_payment_method` is also set, `default_payment_method` will take precedence. If neither are set, invoices will use the customer's [invoice_settings.default_payment_method](https://docs.stripe.com/api/customers/object#customer_object-invoice_settings-default_payment_method) or [default_source](https://docs.stripe.com/api/customers/object#customer_object-default_source).
final Omittable<SubscriptionDefaultSource?> defaultSource;

/// The tax rates that will apply to any subscription item that does not have `tax_rates` set. Invoices created will have their `default_tax_rates` populated from the subscription.
final Omittable<List<TaxRate>?> defaultTaxRates;

/// The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
final Omittable<String?> description;

/// The discounts applied to the subscription. Subscription item discounts are applied before subscription discounts. Use `expand[]=discounts` to expand each discount.
final List<SubscriptionDiscounts> discounts;

/// If the subscription has ended, the date the subscription ended.
final Omittable<int?> endedAt;

/// Unique identifier for the object.
final String id;

final SubscriptionsResourceSubscriptionInvoiceSettings invoiceSettings;

/// List of subscription items, each with an attached price.
final SubscriptionItems items;

/// The most recent invoice this subscription has generated over its lifecycle (for example, when it cycles or is updated).
final Omittable<SubscriptionLatestInvoice?> latestInvoice;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String> metadata;

/// Specifies the approximate timestamp on which any pending invoice items will be billed according to the schedule provided at `pending_invoice_item_interval`.
final Omittable<int?> nextPendingInvoiceItemInvoice;

/// String representing the object's type. Objects of the same type share the same value.
final SubscriptionObject object;

/// The account (if any) the charge was made on behalf of for charges associated with this subscription. See the [Connect documentation](https://docs.stripe.com/connect/subscriptions#on-behalf-of) for details.
final Omittable<SubscriptionOnBehalfOf?> onBehalfOf;

/// If specified, payment collection for this subscription will be paused. Note that the subscription status will be unchanged and will not be updated to `paused`. Learn more about [pausing collection](https://docs.stripe.com/billing/subscriptions/pause-payment).
final Omittable<SubscriptionsResourcePauseCollection?> pauseCollection;

/// Payment settings passed on to invoices created by the subscription.
final Omittable<SubscriptionsResourcePaymentSettings?> paymentSettings;

/// Specifies an interval for how often to bill for any pending invoice items. It is analogous to calling [Create an invoice](https://docs.stripe.com/api#create_invoice) for the given subscription at the specified interval.
final Omittable<SubscriptionPendingInvoiceItemInterval?> pendingInvoiceItemInterval;

/// You can use this [SetupIntent](https://docs.stripe.com/api/setup_intents) to collect user authentication when creating a subscription without immediate payment or updating a subscription's payment method, allowing you to optimize for off-session payments. Learn more in the [SCA Migration Guide](https://docs.stripe.com/billing/migration/strong-customer-authentication#scenario-2).
final Omittable<SubscriptionPendingSetupIntent?> pendingSetupIntent;

/// If specified, [pending updates](https://docs.stripe.com/billing/subscriptions/pending-updates) that will be applied to the subscription once the `latest_invoice` has been paid.
final Omittable<SubscriptionsResourcePendingUpdate?> pendingUpdate;

/// The schedule attached to the subscription
final Omittable<SubscriptionSchedule2?> schedule;

/// Date when the subscription was first created. The date might differ from the `created` date due to backdating.
final int startDate;

/// Possible values are `incomplete`, `incomplete_expired`, `trialing`, `active`, `past_due`, `canceled`, `unpaid`, or `paused`.
/// 
/// For `collection_method=charge_automatically` a subscription moves into `incomplete` if the initial payment attempt fails. A subscription in this status can only have metadata and default_source updated. Once the first invoice is paid, the subscription moves into an `active` status. If the first invoice is not paid within 23 hours, the subscription transitions to `incomplete_expired`. This is a terminal status, the open invoice will be voided and no further invoices will be generated.
/// 
/// A subscription that is currently in a trial period is `trialing` and moves to `active` when the trial period is over.
/// 
/// A subscription can only enter a `paused` status [when a trial ends without a payment method](https://docs.stripe.com/billing/subscriptions/trials#create-free-trials-without-payment). A `paused` subscription doesn't generate invoices and can be resumed after your customer adds their payment method. The `paused` status is different from [pausing collection](https://docs.stripe.com/billing/subscriptions/pause-payment), which still generates invoices and leaves the subscription's status unchanged.
/// 
/// If subscription `collection_method=charge_automatically`, it becomes `past_due` when payment is required but cannot be paid (due to failed payment or awaiting additional user actions). Once Stripe has exhausted all payment retry attempts, the subscription will become `canceled` or `unpaid` (depending on your subscriptions settings).
/// 
/// If subscription `collection_method=send_invoice` it becomes `past_due` when its invoice is not paid by the due date, and `canceled` or `unpaid` if it is still not paid by an additional deadline after that. Note that when a subscription has a status of `unpaid`, no subsequent invoices will be attempted (invoices will be created, but then immediately automatically closed). After receiving updated payment information from a customer, you may choose to reopen and pay their closed invoices.
final SubscriptionStatus status;

/// ID of the test clock this subscription belongs to.
final Omittable<SubscriptionTestClock?> testClock;

/// The account (if any) the subscription's payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the subscription's invoices.
final Omittable<SubscriptionTransferData?> transferData;

/// If the subscription has a trial, the end of that trial.
final Omittable<int?> trialEnd;

/// Settings related to subscription trials.
final Omittable<SubscriptionsResourceTrialSettingsTrialSettings?> trialSettings;

/// If the subscription has a trial, the beginning of that trial.
final Omittable<int?> trialStart;

Map<String, dynamic> toJson() { return {
  if (application.isPresent) 'application': application.value?.toJson(),
  if (applicationFeePercent.isPresent) 'application_fee_percent': applicationFeePercent.value,
  'automatic_tax': automaticTax.toJson(),
  'billing_cycle_anchor': billingCycleAnchor,
  if (billingCycleAnchorConfig.isPresent) 'billing_cycle_anchor_config': billingCycleAnchorConfig.value?.toJson(),
  'billing_mode': billingMode.toJson(),
  if (billingThresholds.isPresent) 'billing_thresholds': billingThresholds.value?.toJson(),
  if (cancelAt.isPresent) 'cancel_at': cancelAt.value,
  'cancel_at_period_end': cancelAtPeriodEnd,
  if (canceledAt.isPresent) 'canceled_at': canceledAt.value,
  if (cancellationDetails.isPresent) 'cancellation_details': cancellationDetails.value?.toJson(),
  'collection_method': collectionMethod.toJson(),
  'created': created,
  'currency': currency,
  'customer': customer.toJson(),
  if (customerAccount.isPresent) 'customer_account': customerAccount.value,
  if (daysUntilDue.isPresent) 'days_until_due': daysUntilDue.value,
  if (defaultPaymentMethod.isPresent) 'default_payment_method': defaultPaymentMethod.value?.toJson(),
  if (defaultSource.isPresent) 'default_source': defaultSource.value?.toJson(),
  if (defaultTaxRates.isPresent) 'default_tax_rates': defaultTaxRates.value?.map((e) => e.toJson()).toList(),
  if (description.isPresent) 'description': description.value,
  'discounts': discounts.map((e) => e.toJson()).toList(),
  if (endedAt.isPresent) 'ended_at': endedAt.value,
  'id': id,
  'invoice_settings': invoiceSettings.toJson(),
  'items': items.toJson(),
  if (latestInvoice.isPresent) 'latest_invoice': latestInvoice.value?.toJson(),
  'livemode': livemode,
  'metadata': metadata,
  if (nextPendingInvoiceItemInvoice.isPresent) 'next_pending_invoice_item_invoice': nextPendingInvoiceItemInvoice.value,
  'object': object.toJson(),
  if (onBehalfOf.isPresent) 'on_behalf_of': onBehalfOf.value?.toJson(),
  if (pauseCollection.isPresent) 'pause_collection': pauseCollection.value?.toJson(),
  if (paymentSettings.isPresent) 'payment_settings': paymentSettings.value?.toJson(),
  if (pendingInvoiceItemInterval.isPresent) 'pending_invoice_item_interval': pendingInvoiceItemInterval.value?.toJson(),
  if (pendingSetupIntent.isPresent) 'pending_setup_intent': pendingSetupIntent.value?.toJson(),
  if (pendingUpdate.isPresent) 'pending_update': pendingUpdate.value?.toJson(),
  if (schedule.isPresent) 'schedule': schedule.value?.toJson(),
  'start_date': startDate,
  'status': status.toJson(),
  if (testClock.isPresent) 'test_clock': testClock.value?.toJson(),
  if (transferData.isPresent) 'transfer_data': transferData.value?.toJson(),
  if (trialEnd.isPresent) 'trial_end': trialEnd.value,
  if (trialSettings.isPresent) 'trial_settings': trialSettings.value?.toJson(),
  if (trialStart.isPresent) 'trial_start': trialStart.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('automatic_tax') &&
      json.containsKey('billing_cycle_anchor') && json['billing_cycle_anchor'] is num &&
      json.containsKey('billing_mode') &&
      json.containsKey('cancel_at_period_end') && json['cancel_at_period_end'] is bool &&
      json.containsKey('collection_method') &&
      json.containsKey('created') && json['created'] is num &&
      json.containsKey('currency') && json['currency'] is String &&
      json.containsKey('customer') &&
      json.containsKey('discounts') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('invoice_settings') &&
      json.containsKey('items') &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('metadata') &&
      json.containsKey('object') &&
      json.containsKey('start_date') && json['start_date'] is num &&
      json.containsKey('status'); } 
Subscription copyWith({Omittable<SubscriptionApplication?>? application, Omittable<double?>? applicationFeePercent, SubscriptionAutomaticTax? automaticTax, int? billingCycleAnchor, Omittable<SubscriptionsResourceBillingCycleAnchorConfig?>? billingCycleAnchorConfig, SubscriptionsResourceBillingMode? billingMode, Omittable<SubscriptionBillingThresholds?>? billingThresholds, Omittable<int?>? cancelAt, bool? cancelAtPeriodEnd, Omittable<int?>? canceledAt, Omittable<CancellationDetails?>? cancellationDetails, SubscriptionCollectionMethod? collectionMethod, int? created, String? currency, SubscriptionCustomer? customer, Omittable<String?>? customerAccount, Omittable<int?>? daysUntilDue, Omittable<SubscriptionDefaultPaymentMethod?>? defaultPaymentMethod, Omittable<SubscriptionDefaultSource?>? defaultSource, Omittable<List<TaxRate>?>? defaultTaxRates, Omittable<String?>? description, List<SubscriptionDiscounts>? discounts, Omittable<int?>? endedAt, String? id, SubscriptionsResourceSubscriptionInvoiceSettings? invoiceSettings, SubscriptionItems? items, Omittable<SubscriptionLatestInvoice?>? latestInvoice, bool? livemode, Map<String,String>? metadata, Omittable<int?>? nextPendingInvoiceItemInvoice, SubscriptionObject? object, Omittable<SubscriptionOnBehalfOf?>? onBehalfOf, Omittable<SubscriptionsResourcePauseCollection?>? pauseCollection, Omittable<SubscriptionsResourcePaymentSettings?>? paymentSettings, Omittable<SubscriptionPendingInvoiceItemInterval?>? pendingInvoiceItemInterval, Omittable<SubscriptionPendingSetupIntent?>? pendingSetupIntent, Omittable<SubscriptionsResourcePendingUpdate?>? pendingUpdate, Omittable<SubscriptionSchedule2?>? schedule, int? startDate, SubscriptionStatus? status, Omittable<SubscriptionTestClock?>? testClock, Omittable<SubscriptionTransferData?>? transferData, Omittable<int?>? trialEnd, Omittable<SubscriptionsResourceTrialSettingsTrialSettings?>? trialSettings, Omittable<int?>? trialStart, }) { return Subscription(
  application: application ?? this.application,
  applicationFeePercent: applicationFeePercent ?? this.applicationFeePercent,
  automaticTax: automaticTax ?? this.automaticTax,
  billingCycleAnchor: billingCycleAnchor ?? this.billingCycleAnchor,
  billingCycleAnchorConfig: billingCycleAnchorConfig ?? this.billingCycleAnchorConfig,
  billingMode: billingMode ?? this.billingMode,
  billingThresholds: billingThresholds ?? this.billingThresholds,
  cancelAt: cancelAt ?? this.cancelAt,
  cancelAtPeriodEnd: cancelAtPeriodEnd ?? this.cancelAtPeriodEnd,
  canceledAt: canceledAt ?? this.canceledAt,
  cancellationDetails: cancellationDetails ?? this.cancellationDetails,
  collectionMethod: collectionMethod ?? this.collectionMethod,
  created: created ?? this.created,
  currency: currency ?? this.currency,
  customer: customer ?? this.customer,
  customerAccount: customerAccount ?? this.customerAccount,
  daysUntilDue: daysUntilDue ?? this.daysUntilDue,
  defaultPaymentMethod: defaultPaymentMethod ?? this.defaultPaymentMethod,
  defaultSource: defaultSource ?? this.defaultSource,
  defaultTaxRates: defaultTaxRates ?? this.defaultTaxRates,
  description: description ?? this.description,
  discounts: discounts ?? this.discounts,
  endedAt: endedAt ?? this.endedAt,
  id: id ?? this.id,
  invoiceSettings: invoiceSettings ?? this.invoiceSettings,
  items: items ?? this.items,
  latestInvoice: latestInvoice ?? this.latestInvoice,
  livemode: livemode ?? this.livemode,
  metadata: metadata ?? this.metadata,
  nextPendingInvoiceItemInvoice: nextPendingInvoiceItemInvoice ?? this.nextPendingInvoiceItemInvoice,
  object: object ?? this.object,
  onBehalfOf: onBehalfOf ?? this.onBehalfOf,
  pauseCollection: pauseCollection ?? this.pauseCollection,
  paymentSettings: paymentSettings ?? this.paymentSettings,
  pendingInvoiceItemInterval: pendingInvoiceItemInterval ?? this.pendingInvoiceItemInterval,
  pendingSetupIntent: pendingSetupIntent ?? this.pendingSetupIntent,
  pendingUpdate: pendingUpdate ?? this.pendingUpdate,
  schedule: schedule ?? this.schedule,
  startDate: startDate ?? this.startDate,
  status: status ?? this.status,
  testClock: testClock ?? this.testClock,
  transferData: transferData ?? this.transferData,
  trialEnd: trialEnd ?? this.trialEnd,
  trialSettings: trialSettings ?? this.trialSettings,
  trialStart: trialStart ?? this.trialStart,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Subscription &&
          application == other.application &&
          applicationFeePercent == other.applicationFeePercent &&
          automaticTax == other.automaticTax &&
          billingCycleAnchor == other.billingCycleAnchor &&
          billingCycleAnchorConfig == other.billingCycleAnchorConfig &&
          billingMode == other.billingMode &&
          billingThresholds == other.billingThresholds &&
          cancelAt == other.cancelAt &&
          cancelAtPeriodEnd == other.cancelAtPeriodEnd &&
          canceledAt == other.canceledAt &&
          cancellationDetails == other.cancellationDetails &&
          collectionMethod == other.collectionMethod &&
          created == other.created &&
          currency == other.currency &&
          customer == other.customer &&
          customerAccount == other.customerAccount &&
          daysUntilDue == other.daysUntilDue &&
          defaultPaymentMethod == other.defaultPaymentMethod &&
          defaultSource == other.defaultSource &&
          defaultTaxRates.isPresent == other.defaultTaxRates.isPresent &&
          listEquals(defaultTaxRates.value, other.defaultTaxRates.value) &&
          description == other.description &&
          listEquals(discounts, other.discounts) &&
          endedAt == other.endedAt &&
          id == other.id &&
          invoiceSettings == other.invoiceSettings &&
          items == other.items &&
          latestInvoice == other.latestInvoice &&
          livemode == other.livemode &&
          metadata == other.metadata &&
          nextPendingInvoiceItemInvoice == other.nextPendingInvoiceItemInvoice &&
          object == other.object &&
          onBehalfOf == other.onBehalfOf &&
          pauseCollection == other.pauseCollection &&
          paymentSettings == other.paymentSettings &&
          pendingInvoiceItemInterval == other.pendingInvoiceItemInterval &&
          pendingSetupIntent == other.pendingSetupIntent &&
          pendingUpdate == other.pendingUpdate &&
          schedule == other.schedule &&
          startDate == other.startDate &&
          status == other.status &&
          testClock == other.testClock &&
          transferData == other.transferData &&
          trialEnd == other.trialEnd &&
          trialSettings == other.trialSettings &&
          trialStart == other.trialStart; } 
@override int get hashCode { return Object.hashAll([application, applicationFeePercent, automaticTax, billingCycleAnchor, billingCycleAnchorConfig, billingMode, billingThresholds, cancelAt, cancelAtPeriodEnd, canceledAt, cancellationDetails, collectionMethod, created, currency, customer, customerAccount, daysUntilDue, defaultPaymentMethod, defaultSource, Object.hashAll(defaultTaxRates.value ?? const []), description, Object.hashAll(discounts), endedAt, id, invoiceSettings, items, latestInvoice, livemode, metadata, nextPendingInvoiceItemInvoice, object, onBehalfOf, pauseCollection, paymentSettings, pendingInvoiceItemInterval, pendingSetupIntent, pendingUpdate, schedule, startDate, status, testClock, transferData, trialEnd, trialSettings, trialStart]); } 
@override String toString() { return 'Subscription(application: $application, applicationFeePercent: $applicationFeePercent, automaticTax: $automaticTax, billingCycleAnchor: $billingCycleAnchor, billingCycleAnchorConfig: $billingCycleAnchorConfig, billingMode: $billingMode, billingThresholds: $billingThresholds, cancelAt: $cancelAt, cancelAtPeriodEnd: $cancelAtPeriodEnd, canceledAt: $canceledAt, cancellationDetails: $cancellationDetails, collectionMethod: $collectionMethod, created: $created, currency: $currency, customer: $customer, customerAccount: $customerAccount, daysUntilDue: $daysUntilDue, defaultPaymentMethod: $defaultPaymentMethod, defaultSource: $defaultSource, defaultTaxRates: $defaultTaxRates, description: $description, discounts: $discounts, endedAt: $endedAt, id: $id, invoiceSettings: $invoiceSettings, items: $items, latestInvoice: $latestInvoice, livemode: $livemode, metadata: $metadata, nextPendingInvoiceItemInvoice: $nextPendingInvoiceItemInvoice, object: $object, onBehalfOf: $onBehalfOf, pauseCollection: $pauseCollection, paymentSettings: $paymentSettings, pendingInvoiceItemInterval: $pendingInvoiceItemInterval, pendingSetupIntent: $pendingSetupIntent, pendingUpdate: $pendingUpdate, schedule: $schedule, startDate: $startDate, status: $status, testClock: $testClock, transferData: $transferData, trialEnd: $trialEnd, trialSettings: $trialSettings, trialStart: $trialStart)'; } 
 }
