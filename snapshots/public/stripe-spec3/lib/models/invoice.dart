// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account.dart';import 'address.dart';import 'application.dart';import 'automatic_tax.dart';import 'bank_account.dart';import 'billing_bill_resource_invoicing_parents_invoice_parent.dart';import 'billing_bill_resource_invoicing_taxes_tax.dart';import 'card.dart';import 'connect_account_reference.dart';import 'customer.dart';import 'deleted_application.dart';import 'deleted_customer.dart';import 'deleted_discount.dart';import 'deleted_tax_id.dart';import 'discount.dart';import 'discounts_resource_discount_amount.dart';import 'errors.dart';import 'invoice_account_tax_ids.dart';import 'invoice_application.dart';import 'invoice_customer.dart';import 'invoice_default_payment_method.dart';import 'invoice_default_source.dart';import 'invoice_discounts.dart';import 'invoice_latest_revision.dart';import 'invoice_lines.dart';import 'invoice_on_behalf_of.dart';import 'invoice_payments.dart';import 'invoice_setting_custom_field.dart';import 'invoice_test_clock.dart';import 'invoice_threshold_reason.dart';import 'invoices_payment_settings.dart';import 'invoices_resource_confirmation_secret.dart';import 'invoices_resource_from_invoice.dart';import 'invoices_resource_invoice_rendering.dart';import 'invoices_resource_invoice_tax_id.dart';import 'invoices_resource_pretax_credit_amount.dart';import 'invoices_resource_shipping_cost.dart';import 'invoices_resource_status_transitions.dart';import 'payment_method.dart';import 'shipping.dart';import 'source.dart';import 'tax_id.dart';import 'tax_rate.dart';import 'test_helpers_test_clock.dart';/// Indicates the reason why the invoice was created.
/// 
/// * `manual`: Unrelated to a subscription, for example, created via the invoice editor.
/// * `subscription`: No longer in use. Applies to subscriptions from before May 2018 where no distinction was made between updates, cycles, and thresholds.
/// * `subscription_create`: A new subscription was created.
/// * `subscription_cycle`: A subscription advanced into a new period.
/// * `subscription_threshold`: A subscription reached a billing threshold.
/// * `subscription_update`: A subscription was updated.
/// * `upcoming`: Reserved for upcoming invoices created through the Create Preview Invoice API or when an `invoice.upcoming` event is generated for an upcoming invoice on a subscription.
final class InvoiceBillingReason {const InvoiceBillingReason._(this.value);

factory InvoiceBillingReason.fromJson(String json) { return switch (json) {
  'automatic_pending_invoice_item_invoice' => automaticPendingInvoiceItemInvoice,
  'manual' => manual,
  'quote_accept' => quoteAccept,
  'subscription' => subscription,
  'subscription_create' => subscriptionCreate,
  'subscription_cycle' => subscriptionCycle,
  'subscription_threshold' => subscriptionThreshold,
  'subscription_update' => subscriptionUpdate,
  'upcoming' => upcoming,
  _ => InvoiceBillingReason._(json),
}; }

static const InvoiceBillingReason automaticPendingInvoiceItemInvoice = InvoiceBillingReason._('automatic_pending_invoice_item_invoice');

static const InvoiceBillingReason manual = InvoiceBillingReason._('manual');

static const InvoiceBillingReason quoteAccept = InvoiceBillingReason._('quote_accept');

static const InvoiceBillingReason subscription = InvoiceBillingReason._('subscription');

static const InvoiceBillingReason subscriptionCreate = InvoiceBillingReason._('subscription_create');

static const InvoiceBillingReason subscriptionCycle = InvoiceBillingReason._('subscription_cycle');

static const InvoiceBillingReason subscriptionThreshold = InvoiceBillingReason._('subscription_threshold');

static const InvoiceBillingReason subscriptionUpdate = InvoiceBillingReason._('subscription_update');

static const InvoiceBillingReason upcoming = InvoiceBillingReason._('upcoming');

static const List<InvoiceBillingReason> values = [automaticPendingInvoiceItemInvoice, manual, quoteAccept, subscription, subscriptionCreate, subscriptionCycle, subscriptionThreshold, subscriptionUpdate, upcoming];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoiceBillingReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoiceBillingReason($value)'; } 
 }
/// Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this invoice using the default source attached to the customer. When sending an invoice, Stripe will email this invoice to the customer with payment instructions.
final class InvoiceCollectionMethod {const InvoiceCollectionMethod._(this.value);

factory InvoiceCollectionMethod.fromJson(String json) { return switch (json) {
  'charge_automatically' => chargeAutomatically,
  'send_invoice' => sendInvoice,
  _ => InvoiceCollectionMethod._(json),
}; }

static const InvoiceCollectionMethod chargeAutomatically = InvoiceCollectionMethod._('charge_automatically');

static const InvoiceCollectionMethod sendInvoice = InvoiceCollectionMethod._('send_invoice');

static const List<InvoiceCollectionMethod> values = [chargeAutomatically, sendInvoice];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoiceCollectionMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoiceCollectionMethod($value)'; } 
 }
/// The customer's tax exempt status. Until the invoice is finalized, this field will equal `customer.tax_exempt`. Once the invoice is finalized, this field will no longer be updated.
final class InvoiceCustomerTaxExempt {const InvoiceCustomerTaxExempt._(this.value);

factory InvoiceCustomerTaxExempt.fromJson(String json) { return switch (json) {
  'exempt' => exempt,
  'none' => none,
  'reverse' => reverse,
  _ => InvoiceCustomerTaxExempt._(json),
}; }

static const InvoiceCustomerTaxExempt exempt = InvoiceCustomerTaxExempt._('exempt');

static const InvoiceCustomerTaxExempt none = InvoiceCustomerTaxExempt._('none');

static const InvoiceCustomerTaxExempt reverse = InvoiceCustomerTaxExempt._('reverse');

static const List<InvoiceCustomerTaxExempt> values = [exempt, none, reverse];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoiceCustomerTaxExempt && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoiceCustomerTaxExempt($value)'; } 
 }
/// String representing the object's type. Objects of the same type share the same value.
final class InvoiceObject {const InvoiceObject._(this.value);

factory InvoiceObject.fromJson(String json) { return switch (json) {
  'invoice' => invoice,
  _ => InvoiceObject._(json),
}; }

static const InvoiceObject invoice = InvoiceObject._('invoice');

static const List<InvoiceObject> values = [invoice];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoiceObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoiceObject($value)'; } 
 }
/// The status of the invoice, one of `draft`, `open`, `paid`, `uncollectible`, or `void`. [Learn more](https://docs.stripe.com/billing/invoices/workflow#workflow-overview)
final class InvoiceStatus {const InvoiceStatus._(this.value);

factory InvoiceStatus.fromJson(String json) { return switch (json) {
  'draft' => draft,
  'open' => open,
  'paid' => paid,
  'uncollectible' => uncollectible,
  'void' => $void,
  _ => InvoiceStatus._(json),
}; }

static const InvoiceStatus draft = InvoiceStatus._('draft');

static const InvoiceStatus open = InvoiceStatus._('open');

static const InvoiceStatus paid = InvoiceStatus._('paid');

static const InvoiceStatus uncollectible = InvoiceStatus._('uncollectible');

static const InvoiceStatus $void = InvoiceStatus._('void');

static const List<InvoiceStatus> values = [draft, open, paid, uncollectible, $void];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoiceStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoiceStatus($value)'; } 
 }
/// Invoices are statements of amounts owed by a customer, and are either
/// generated one-off, or generated periodically from a subscription.
/// 
/// They contain [invoice items](https://api.stripe.com#invoiceitems), and proration adjustments
/// that may be caused by subscription upgrades/downgrades (if necessary).
/// 
/// If your invoice is configured to be billed through automatic charges,
/// Stripe automatically finalizes your invoice and attempts payment. Note
/// that finalizing the invoice,
/// [when automatic](https://docs.stripe.com/invoicing/integration/automatic-advancement-collection), does
/// not happen immediately as the invoice is created. Stripe waits
/// until one hour after the last webhook was successfully sent (or the last
/// webhook timed out after failing). If you (and the platforms you may have
/// connected to) have no webhooks configured, Stripe waits one hour after
/// creation to finalize the invoice.
/// 
/// If your invoice is configured to be billed by sending an email, then based on your
/// [email settings](https://dashboard.stripe.com/account/billing/automatic),
/// Stripe will email the invoice to your customer and await payment. These
/// emails can contain a link to a hosted page to pay the invoice.
/// 
/// Stripe applies any customer credit on the account before determining the
/// amount due for the invoice (i.e., the amount that will be actually
/// charged). If the amount due for the invoice is less than Stripe's [minimum allowed charge
/// per currency](/docs/currencies#minimum-and-maximum-charge-amounts), the
/// invoice is automatically marked paid, and we add the amount due to the
/// customer's credit balance which is applied to the next invoice.
/// 
/// More details on the customer's credit balance are
/// [here](https://docs.stripe.com/billing/customer/balance).
/// 
/// Related guide: [Send invoices to customers](https://docs.stripe.com/billing/invoices/sending)
final class Invoice {const Invoice({this.accountCountry, this.accountName, this.accountTaxIds, required this.amountDue, required this.amountOverpaid, required this.amountPaid, required this.amountRemaining, required this.amountShipping, this.application, required this.attemptCount, required this.attempted, required this.autoAdvance, required this.automaticTax, this.automaticallyFinalizesAt, this.billingReason, required this.collectionMethod, this.confirmationSecret, required this.created, required this.currency, this.customFields, required this.customer, this.customerAccount, this.customerAddress, this.customerEmail, this.customerName, this.customerPhone, this.customerShipping, this.customerTaxExempt, this.customerTaxIds, this.defaultPaymentMethod, this.defaultSource, required this.defaultTaxRates, this.description, required this.discounts, this.dueDate, this.effectiveAt, this.endingBalance, this.footer, this.fromInvoice, this.hostedInvoiceUrl, required this.id, this.invoicePdf, required this.issuer, this.lastFinalizationError, this.latestRevision, required this.lines, required this.livemode, this.metadata, this.nextPaymentAttempt, this.number, required this.object, this.onBehalfOf, this.parent, required this.paymentSettings, this.payments, required this.periodEnd, required this.periodStart, required this.postPaymentCreditNotesAmount, required this.prePaymentCreditNotesAmount, this.receiptNumber, this.rendering, this.shippingCost, this.shippingDetails, required this.startingBalance, this.statementDescriptor, this.status, required this.statusTransitions, required this.subtotal, this.subtotalExcludingTax, this.testClock, this.thresholdReason, required this.total, this.totalDiscountAmounts, this.totalExcludingTax, this.totalPretaxCreditAmounts, this.totalTaxes, this.webhooksDeliveredAt, });

factory Invoice.fromJson(Map<String, dynamic> json) { return Invoice(
  accountCountry: json['account_country'] as String?,
  accountName: json['account_name'] as String?,
  accountTaxIds: (json['account_tax_ids'] as List<dynamic>?)?.map((e) => OneOf3.parse(e, fromA: (v) => v as String, fromB: (v) => TaxId.fromJson(v as Map<String, dynamic>), fromC: (v) => DeletedTaxId.fromJson(v as Map<String, dynamic>),)).toList(),
  amountDue: (json['amount_due'] as num).toInt(),
  amountOverpaid: (json['amount_overpaid'] as num).toInt(),
  amountPaid: (json['amount_paid'] as num).toInt(),
  amountRemaining: (json['amount_remaining'] as num).toInt(),
  amountShipping: (json['amount_shipping'] as num).toInt(),
  application: json['application'] != null ? OneOf3.parse(json['application'], fromA: (v) => v as String, fromB: (v) => Application.fromJson(v as Map<String, dynamic>), fromC: (v) => DeletedApplication.fromJson(v as Map<String, dynamic>),) : null,
  attemptCount: (json['attempt_count'] as num).toInt(),
  attempted: json['attempted'] as bool,
  autoAdvance: json['auto_advance'] as bool,
  automaticTax: AutomaticTax.fromJson(json['automatic_tax'] as Map<String, dynamic>),
  automaticallyFinalizesAt: json['automatically_finalizes_at'] != null ? (json['automatically_finalizes_at'] as num).toInt() : null,
  billingReason: json['billing_reason'] != null ? InvoiceBillingReason.fromJson(json['billing_reason'] as String) : null,
  collectionMethod: InvoiceCollectionMethod.fromJson(json['collection_method'] as String),
  confirmationSecret: json['confirmation_secret'] != null ? InvoicesResourceConfirmationSecret.fromJson(json['confirmation_secret'] as Map<String, dynamic>) : null,
  created: (json['created'] as num).toInt(),
  currency: json['currency'] as String,
  customFields: (json['custom_fields'] as List<dynamic>?)?.map((e) => InvoiceSettingCustomField.fromJson(e as Map<String, dynamic>)).toList(),
  customer: OneOf3.parse(json['customer'], fromA: (v) => v as String, fromB: (v) => Customer.fromJson(v as Map<String, dynamic>), fromC: (v) => DeletedCustomer.fromJson(v as Map<String, dynamic>),),
  customerAccount: json['customer_account'] as String?,
  customerAddress: json['customer_address'] != null ? Address.fromJson(json['customer_address'] as Map<String, dynamic>) : null,
  customerEmail: json['customer_email'] as String?,
  customerName: json['customer_name'] as String?,
  customerPhone: json['customer_phone'] as String?,
  customerShipping: json['customer_shipping'] != null ? Shipping.fromJson(json['customer_shipping'] as Map<String, dynamic>) : null,
  customerTaxExempt: json['customer_tax_exempt'] != null ? InvoiceCustomerTaxExempt.fromJson(json['customer_tax_exempt'] as String) : null,
  customerTaxIds: (json['customer_tax_ids'] as List<dynamic>?)?.map((e) => InvoicesResourceInvoiceTaxId.fromJson(e as Map<String, dynamic>)).toList(),
  defaultPaymentMethod: json['default_payment_method'] != null ? OneOf2.parse(json['default_payment_method'], fromA: (v) => v as String, fromB: (v) => PaymentMethod.fromJson(v as Map<String, dynamic>),) : null,
  defaultSource: json['default_source'] != null ? OneOf4.parse(json['default_source'], fromA: (v) => v as String, fromB: (v) => BankAccount.fromJson(v as Map<String, dynamic>), fromC: (v) => Card.fromJson(v as Map<String, dynamic>), fromD: (v) => Source.fromJson(v as Map<String, dynamic>),) : null,
  defaultTaxRates: (json['default_tax_rates'] as List<dynamic>).map((e) => TaxRate.fromJson(e as Map<String, dynamic>)).toList(),
  description: json['description'] as String?,
  discounts: (json['discounts'] as List<dynamic>).map((e) => OneOf3.parse(e, fromA: (v) => v as String, fromB: (v) => Discount.fromJson(v as Map<String, dynamic>), fromC: (v) => DeletedDiscount.fromJson(v as Map<String, dynamic>),)).toList(),
  dueDate: json['due_date'] != null ? (json['due_date'] as num).toInt() : null,
  effectiveAt: json['effective_at'] != null ? (json['effective_at'] as num).toInt() : null,
  endingBalance: json['ending_balance'] != null ? (json['ending_balance'] as num).toInt() : null,
  footer: json['footer'] as String?,
  fromInvoice: json['from_invoice'] != null ? InvoicesResourceFromInvoice.fromJson(json['from_invoice'] as Map<String, dynamic>) : null,
  hostedInvoiceUrl: json['hosted_invoice_url'] as String?,
  id: json['id'] as String,
  invoicePdf: json['invoice_pdf'] as String?,
  issuer: ConnectAccountReference.fromJson(json['issuer'] as Map<String, dynamic>),
  lastFinalizationError: json['last_finalization_error'] != null ? Errors.fromJson(json['last_finalization_error'] as Map<String, dynamic>) : null,
  latestRevision: json['latest_revision'] != null ? OneOf2.parse(json['latest_revision'], fromA: (v) => v as String, fromB: (v) => Invoice.fromJson(v as Map<String, dynamic>),) : null,
  lines: InvoiceLines.fromJson(json['lines'] as Map<String, dynamic>),
  livemode: json['livemode'] as bool,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  nextPaymentAttempt: json['next_payment_attempt'] != null ? (json['next_payment_attempt'] as num).toInt() : null,
  number: json['number'] as String?,
  object: InvoiceObject.fromJson(json['object'] as String),
  onBehalfOf: json['on_behalf_of'] != null ? OneOf2.parse(json['on_behalf_of'], fromA: (v) => v as String, fromB: (v) => Account.fromJson(v as Map<String, dynamic>),) : null,
  parent: json['parent'] != null ? BillingBillResourceInvoicingParentsInvoiceParent.fromJson(json['parent'] as Map<String, dynamic>) : null,
  paymentSettings: InvoicesPaymentSettings.fromJson(json['payment_settings'] as Map<String, dynamic>),
  payments: json['payments'] != null ? InvoicePayments.fromJson(json['payments'] as Map<String, dynamic>) : null,
  periodEnd: (json['period_end'] as num).toInt(),
  periodStart: (json['period_start'] as num).toInt(),
  postPaymentCreditNotesAmount: (json['post_payment_credit_notes_amount'] as num).toInt(),
  prePaymentCreditNotesAmount: (json['pre_payment_credit_notes_amount'] as num).toInt(),
  receiptNumber: json['receipt_number'] as String?,
  rendering: json['rendering'] != null ? InvoicesResourceInvoiceRendering.fromJson(json['rendering'] as Map<String, dynamic>) : null,
  shippingCost: json['shipping_cost'] != null ? InvoicesResourceShippingCost.fromJson(json['shipping_cost'] as Map<String, dynamic>) : null,
  shippingDetails: json['shipping_details'] != null ? Shipping.fromJson(json['shipping_details'] as Map<String, dynamic>) : null,
  startingBalance: (json['starting_balance'] as num).toInt(),
  statementDescriptor: json['statement_descriptor'] as String?,
  status: json['status'] != null ? InvoiceStatus.fromJson(json['status'] as String) : null,
  statusTransitions: InvoicesResourceStatusTransitions.fromJson(json['status_transitions'] as Map<String, dynamic>),
  subtotal: (json['subtotal'] as num).toInt(),
  subtotalExcludingTax: json['subtotal_excluding_tax'] != null ? (json['subtotal_excluding_tax'] as num).toInt() : null,
  testClock: json['test_clock'] != null ? OneOf2.parse(json['test_clock'], fromA: (v) => v as String, fromB: (v) => TestHelpersTestClock.fromJson(v as Map<String, dynamic>),) : null,
  thresholdReason: json['threshold_reason'] != null ? InvoiceThresholdReason.fromJson(json['threshold_reason'] as Map<String, dynamic>) : null,
  total: (json['total'] as num).toInt(),
  totalDiscountAmounts: (json['total_discount_amounts'] as List<dynamic>?)?.map((e) => DiscountsResourceDiscountAmount.fromJson(e as Map<String, dynamic>)).toList(),
  totalExcludingTax: json['total_excluding_tax'] != null ? (json['total_excluding_tax'] as num).toInt() : null,
  totalPretaxCreditAmounts: (json['total_pretax_credit_amounts'] as List<dynamic>?)?.map((e) => InvoicesResourcePretaxCreditAmount.fromJson(e as Map<String, dynamic>)).toList(),
  totalTaxes: (json['total_taxes'] as List<dynamic>?)?.map((e) => BillingBillResourceInvoicingTaxesTax.fromJson(e as Map<String, dynamic>)).toList(),
  webhooksDeliveredAt: json['webhooks_delivered_at'] != null ? (json['webhooks_delivered_at'] as num).toInt() : null,
); }

/// The country of the business associated with this invoice, most often the business creating the invoice.
final String? accountCountry;

/// The public name of the business associated with this invoice, most often the business creating the invoice.
final String? accountName;

/// The account tax IDs associated with the invoice. Only editable when the invoice is a draft.
final List<InvoiceAccountTaxIds>? accountTaxIds;

/// Final amount due at this time for this invoice. If the invoice's total is smaller than the minimum charge amount, for example, or if there is account credit that can be applied to the invoice, the `amount_due` may be 0. If there is a positive `starting_balance` for the invoice (the customer owes money), the `amount_due` will also take that into account. The charge that gets generated for the invoice will be for the amount specified in `amount_due`.
final int amountDue;

/// Amount that was overpaid on the invoice. The amount overpaid is credited to the customer's credit balance.
final int amountOverpaid;

/// The amount, in cents (or local equivalent), that was paid.
final int amountPaid;

/// The difference between amount_due and amount_paid, in cents (or local equivalent).
final int amountRemaining;

/// This is the sum of all the shipping amounts.
final int amountShipping;

/// ID of the Connect Application that created the invoice.
final InvoiceApplication? application;

/// Number of payment attempts made for this invoice, from the perspective of the payment retry schedule. Any payment attempt counts as the first attempt, and subsequently only automatic retries increment the attempt count. In other words, manual payment attempts after the first attempt do not affect the retry schedule. If a failure is returned with a non-retryable return code, the invoice can no longer be retried unless a new payment method is obtained. Retries will continue to be scheduled, and attempt_count will continue to increment, but retries will only be executed if a new payment method is obtained.
final int attemptCount;

/// Whether an attempt has been made to pay the invoice. An invoice is not attempted until 1 hour after the `invoice.created` webhook, for example, so you might not want to display that invoice as unpaid to your users.
final bool attempted;

/// Controls whether Stripe performs [automatic collection](https://docs.stripe.com/invoicing/integration/automatic-advancement-collection) of the invoice. If `false`, the invoice's state doesn't automatically advance without an explicit action.
final bool autoAdvance;

final AutomaticTax automaticTax;

/// The time when this invoice is currently scheduled to be automatically finalized. The field will be `null` if the invoice is not scheduled to finalize in the future. If the invoice is not in the draft state, this field will always be `null` - see `finalized_at` for the time when an already-finalized invoice was finalized.
final int? automaticallyFinalizesAt;

/// Indicates the reason why the invoice was created.
/// 
/// * `manual`: Unrelated to a subscription, for example, created via the invoice editor.
/// * `subscription`: No longer in use. Applies to subscriptions from before May 2018 where no distinction was made between updates, cycles, and thresholds.
/// * `subscription_create`: A new subscription was created.
/// * `subscription_cycle`: A subscription advanced into a new period.
/// * `subscription_threshold`: A subscription reached a billing threshold.
/// * `subscription_update`: A subscription was updated.
/// * `upcoming`: Reserved for upcoming invoices created through the Create Preview Invoice API or when an `invoice.upcoming` event is generated for an upcoming invoice on a subscription.
final InvoiceBillingReason? billingReason;

/// Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this invoice using the default source attached to the customer. When sending an invoice, Stripe will email this invoice to the customer with payment instructions.
final InvoiceCollectionMethod collectionMethod;

/// The confirmation secret associated with this invoice. Currently, this contains the client_secret of the PaymentIntent that Stripe creates during invoice finalization.
final InvoicesResourceConfirmationSecret? confirmationSecret;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String currency;

/// Custom fields displayed on the invoice.
final List<InvoiceSettingCustomField>? customFields;

/// The ID of the customer to bill.
final InvoiceCustomer customer;

/// The ID of the account representing the customer to bill.
final String? customerAccount;

/// The customer's address. Until the invoice is finalized, this field will equal `customer.address`. Once the invoice is finalized, this field will no longer be updated.
final Address? customerAddress;

/// The customer's email. Until the invoice is finalized, this field will equal `customer.email`. Once the invoice is finalized, this field will no longer be updated.
final String? customerEmail;

/// The customer's name. Until the invoice is finalized, this field will equal `customer.name`. Once the invoice is finalized, this field will no longer be updated.
final String? customerName;

/// The customer's phone number. Until the invoice is finalized, this field will equal `customer.phone`. Once the invoice is finalized, this field will no longer be updated.
final String? customerPhone;

/// The customer's shipping information. Until the invoice is finalized, this field will equal `customer.shipping`. Once the invoice is finalized, this field will no longer be updated.
final Shipping? customerShipping;

/// The customer's tax exempt status. Until the invoice is finalized, this field will equal `customer.tax_exempt`. Once the invoice is finalized, this field will no longer be updated.
final InvoiceCustomerTaxExempt? customerTaxExempt;

/// The customer's tax IDs. Until the invoice is finalized, this field will contain the same tax IDs as `customer.tax_ids`. Once the invoice is finalized, this field will no longer be updated.
final List<InvoicesResourceInvoiceTaxId>? customerTaxIds;

/// ID of the default payment method for the invoice. It must belong to the customer associated with the invoice. If not set, defaults to the subscription's default payment method, if any, or to the default payment method in the customer's invoice settings.
final InvoiceDefaultPaymentMethod? defaultPaymentMethod;

/// ID of the default payment source for the invoice. It must belong to the customer associated with the invoice and be in a chargeable state. If not set, defaults to the subscription's default source, if any, or to the customer's default source.
final InvoiceDefaultSource? defaultSource;

/// The tax rates applied to this invoice, if any.
final List<TaxRate> defaultTaxRates;

/// An arbitrary string attached to the object. Often useful for displaying to users. Referenced as 'memo' in the Dashboard.
final String? description;

/// The discounts applied to the invoice. Line item discounts are applied before invoice discounts. Use `expand[]=discounts` to expand each discount.
final List<InvoiceDiscounts> discounts;

/// The date on which payment for this invoice is due. This value will be `null` for invoices where `collection_method=charge_automatically`.
final int? dueDate;

/// The date when this invoice is in effect. Same as `finalized_at` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the invoice PDF and receipt.
final int? effectiveAt;

/// Ending customer balance after the invoice is finalized. Invoices are finalized approximately an hour after successful webhook delivery or when payment collection is attempted for the invoice. If the invoice has not been finalized yet, this will be null.
final int? endingBalance;

/// Footer displayed on the invoice.
final String? footer;

/// Details of the invoice that was cloned. See the [revision documentation](https://docs.stripe.com/invoicing/invoice-revisions) for more details.
final InvoicesResourceFromInvoice? fromInvoice;

/// The URL for the hosted invoice page, which allows customers to view and pay an invoice. If the invoice has not been finalized yet, this will be null.
final String? hostedInvoiceUrl;

/// Unique identifier for the object. For preview invoices created using the [create preview](https://stripe.com/docs/api/invoices/create_preview) endpoint, this id will be prefixed with `upcoming_in`.
final String id;

/// The link to download the PDF for the invoice. If the invoice has not been finalized yet, this will be null.
final String? invoicePdf;

final ConnectAccountReference issuer;

/// The error encountered during the previous attempt to finalize the invoice. This field is cleared when the invoice is successfully finalized.
final Errors? lastFinalizationError;

/// The ID of the most recent non-draft revision of this invoice
final InvoiceLatestRevision? latestRevision;

/// The individual line items that make up the invoice. `lines` is sorted as follows: (1) pending invoice items (including prorations) in reverse chronological order, (2) subscription items in reverse chronological order, and (3) invoice items added after invoice creation in chronological order.
final InvoiceLines lines;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String>? metadata;

/// The time at which payment will next be attempted. This value will be `null` for invoices where `collection_method=send_invoice`.
final int? nextPaymentAttempt;

/// A unique, identifying string that appears on emails sent to the customer for this invoice. This starts with the customer's unique invoice_prefix if it is specified.
final String? number;

/// String representing the object's type. Objects of the same type share the same value.
final InvoiceObject object;

/// The account (if any) for which the funds of the invoice payment are intended. If set, the invoice will be presented with the branding and support information of the specified account. See the [Invoices with Connect](https://docs.stripe.com/billing/invoices/connect) documentation for details.
final InvoiceOnBehalfOf? onBehalfOf;

/// The parent that generated this invoice
final BillingBillResourceInvoicingParentsInvoiceParent? parent;

final InvoicesPaymentSettings paymentSettings;

/// Payments for this invoice. Use [invoice payment](/api/invoice-payment) to get more details.
final InvoicePayments? payments;

/// End of the usage period during which invoice items were added to this invoice. This looks back one period for a subscription invoice. Use the [line item period](/api/invoices/line_item#invoice_line_item_object-period) to get the service period for each price.
final int periodEnd;

/// Start of the usage period during which invoice items were added to this invoice. This looks back one period for a subscription invoice. Use the [line item period](/api/invoices/line_item#invoice_line_item_object-period) to get the service period for each price.
final int periodStart;

/// Total amount of all post-payment credit notes issued for this invoice.
final int postPaymentCreditNotesAmount;

/// Total amount of all pre-payment credit notes issued for this invoice.
final int prePaymentCreditNotesAmount;

/// This is the transaction number that appears on email receipts sent for this invoice.
final String? receiptNumber;

/// The rendering-related settings that control how the invoice is displayed on customer-facing surfaces such as PDF and Hosted Invoice Page.
final InvoicesResourceInvoiceRendering? rendering;

/// The details of the cost of shipping, including the ShippingRate applied on the invoice.
final InvoicesResourceShippingCost? shippingCost;

/// Shipping details for the invoice. The Invoice PDF will use the `shipping_details` value if it is set, otherwise the PDF will render the shipping address from the customer.
final Shipping? shippingDetails;

/// Starting customer balance before the invoice is finalized. If the invoice has not been finalized yet, this will be the current customer balance. For revision invoices, this also includes any customer balance that was applied to the original invoice.
final int startingBalance;

/// Extra information about an invoice for the customer's credit card statement.
final String? statementDescriptor;

/// The status of the invoice, one of `draft`, `open`, `paid`, `uncollectible`, or `void`. [Learn more](https://docs.stripe.com/billing/invoices/workflow#workflow-overview)
final InvoiceStatus? status;

final InvoicesResourceStatusTransitions statusTransitions;

/// Total of all subscriptions, invoice items, and prorations on the invoice before any invoice level discount or exclusive tax is applied. Item discounts are already incorporated
final int subtotal;

/// The integer amount in cents (or local equivalent) representing the subtotal of the invoice before any invoice level discount or tax is applied. Item discounts are already incorporated
final int? subtotalExcludingTax;

/// ID of the test clock this invoice belongs to.
final InvoiceTestClock? testClock;

final InvoiceThresholdReason? thresholdReason;

/// Total after discounts and taxes.
final int total;

/// The aggregate amounts calculated per discount across all line items.
final List<DiscountsResourceDiscountAmount>? totalDiscountAmounts;

/// The integer amount in cents (or local equivalent) representing the total amount of the invoice including all discounts but excluding all tax.
final int? totalExcludingTax;

/// Contains pretax credit amounts (ex: discount, credit grants, etc) that apply to this invoice. This is a combined list of total_pretax_credit_amounts across all invoice line items.
final List<InvoicesResourcePretaxCreditAmount>? totalPretaxCreditAmounts;

/// The aggregate tax information of all line items.
final List<BillingBillResourceInvoicingTaxesTax>? totalTaxes;

/// Invoices are automatically paid or sent 1 hour after webhooks are delivered, or until all webhook delivery attempts have [been exhausted](https://docs.stripe.com/billing/webhooks#understand). This field tracks the time when webhooks for this invoice were successfully delivered. If the invoice had no webhooks to deliver, this will be set while the invoice is being created.
final int? webhooksDeliveredAt;

Map<String, dynamic> toJson() { return {
  'account_country': ?accountCountry,
  'account_name': ?accountName,
  if (accountTaxIds != null) 'account_tax_ids': accountTaxIds?.map((e) => e.toJson()).toList(),
  'amount_due': amountDue,
  'amount_overpaid': amountOverpaid,
  'amount_paid': amountPaid,
  'amount_remaining': amountRemaining,
  'amount_shipping': amountShipping,
  if (application != null) 'application': application?.toJson(),
  'attempt_count': attemptCount,
  'attempted': attempted,
  'auto_advance': autoAdvance,
  'automatic_tax': automaticTax.toJson(),
  'automatically_finalizes_at': ?automaticallyFinalizesAt,
  if (billingReason != null) 'billing_reason': billingReason?.toJson(),
  'collection_method': collectionMethod.toJson(),
  if (confirmationSecret != null) 'confirmation_secret': confirmationSecret?.toJson(),
  'created': created,
  'currency': currency,
  if (customFields != null) 'custom_fields': customFields?.map((e) => e.toJson()).toList(),
  'customer': customer.toJson(),
  'customer_account': ?customerAccount,
  if (customerAddress != null) 'customer_address': customerAddress?.toJson(),
  'customer_email': ?customerEmail,
  'customer_name': ?customerName,
  'customer_phone': ?customerPhone,
  if (customerShipping != null) 'customer_shipping': customerShipping?.toJson(),
  if (customerTaxExempt != null) 'customer_tax_exempt': customerTaxExempt?.toJson(),
  if (customerTaxIds != null) 'customer_tax_ids': customerTaxIds?.map((e) => e.toJson()).toList(),
  if (defaultPaymentMethod != null) 'default_payment_method': defaultPaymentMethod?.toJson(),
  if (defaultSource != null) 'default_source': defaultSource?.toJson(),
  'default_tax_rates': defaultTaxRates.map((e) => e.toJson()).toList(),
  'description': ?description,
  'discounts': discounts.map((e) => e.toJson()).toList(),
  'due_date': ?dueDate,
  'effective_at': ?effectiveAt,
  'ending_balance': ?endingBalance,
  'footer': ?footer,
  if (fromInvoice != null) 'from_invoice': fromInvoice?.toJson(),
  'hosted_invoice_url': ?hostedInvoiceUrl,
  'id': id,
  'invoice_pdf': ?invoicePdf,
  'issuer': issuer.toJson(),
  if (lastFinalizationError != null) 'last_finalization_error': lastFinalizationError?.toJson(),
  if (latestRevision != null) 'latest_revision': latestRevision?.toJson(),
  'lines': lines.toJson(),
  'livemode': livemode,
  'metadata': ?metadata,
  'next_payment_attempt': ?nextPaymentAttempt,
  'number': ?number,
  'object': object.toJson(),
  if (onBehalfOf != null) 'on_behalf_of': onBehalfOf?.toJson(),
  if (parent != null) 'parent': parent?.toJson(),
  'payment_settings': paymentSettings.toJson(),
  if (payments != null) 'payments': payments?.toJson(),
  'period_end': periodEnd,
  'period_start': periodStart,
  'post_payment_credit_notes_amount': postPaymentCreditNotesAmount,
  'pre_payment_credit_notes_amount': prePaymentCreditNotesAmount,
  'receipt_number': ?receiptNumber,
  if (rendering != null) 'rendering': rendering?.toJson(),
  if (shippingCost != null) 'shipping_cost': shippingCost?.toJson(),
  if (shippingDetails != null) 'shipping_details': shippingDetails?.toJson(),
  'starting_balance': startingBalance,
  'statement_descriptor': ?statementDescriptor,
  if (status != null) 'status': status?.toJson(),
  'status_transitions': statusTransitions.toJson(),
  'subtotal': subtotal,
  'subtotal_excluding_tax': ?subtotalExcludingTax,
  if (testClock != null) 'test_clock': testClock?.toJson(),
  if (thresholdReason != null) 'threshold_reason': thresholdReason?.toJson(),
  'total': total,
  if (totalDiscountAmounts != null) 'total_discount_amounts': totalDiscountAmounts?.map((e) => e.toJson()).toList(),
  'total_excluding_tax': ?totalExcludingTax,
  if (totalPretaxCreditAmounts != null) 'total_pretax_credit_amounts': totalPretaxCreditAmounts?.map((e) => e.toJson()).toList(),
  if (totalTaxes != null) 'total_taxes': totalTaxes?.map((e) => e.toJson()).toList(),
  'webhooks_delivered_at': ?webhooksDeliveredAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount_due') && json['amount_due'] is num &&
      json.containsKey('amount_overpaid') && json['amount_overpaid'] is num &&
      json.containsKey('amount_paid') && json['amount_paid'] is num &&
      json.containsKey('amount_remaining') && json['amount_remaining'] is num &&
      json.containsKey('amount_shipping') && json['amount_shipping'] is num &&
      json.containsKey('attempt_count') && json['attempt_count'] is num &&
      json.containsKey('attempted') && json['attempted'] is bool &&
      json.containsKey('auto_advance') && json['auto_advance'] is bool &&
      json.containsKey('automatic_tax') &&
      json.containsKey('collection_method') &&
      json.containsKey('created') && json['created'] is num &&
      json.containsKey('currency') && json['currency'] is String &&
      json.containsKey('customer') &&
      json.containsKey('default_tax_rates') &&
      json.containsKey('discounts') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('issuer') &&
      json.containsKey('lines') &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('object') &&
      json.containsKey('payment_settings') &&
      json.containsKey('period_end') && json['period_end'] is num &&
      json.containsKey('period_start') && json['period_start'] is num &&
      json.containsKey('post_payment_credit_notes_amount') && json['post_payment_credit_notes_amount'] is num &&
      json.containsKey('pre_payment_credit_notes_amount') && json['pre_payment_credit_notes_amount'] is num &&
      json.containsKey('starting_balance') && json['starting_balance'] is num &&
      json.containsKey('status_transitions') &&
      json.containsKey('subtotal') && json['subtotal'] is num &&
      json.containsKey('total') && json['total'] is num; } 
Invoice copyWith({String? Function()? accountCountry, String? Function()? accountName, List<InvoiceAccountTaxIds>? Function()? accountTaxIds, int? amountDue, int? amountOverpaid, int? amountPaid, int? amountRemaining, int? amountShipping, InvoiceApplication? Function()? application, int? attemptCount, bool? attempted, bool? autoAdvance, AutomaticTax? automaticTax, int? Function()? automaticallyFinalizesAt, InvoiceBillingReason? Function()? billingReason, InvoiceCollectionMethod? collectionMethod, InvoicesResourceConfirmationSecret? Function()? confirmationSecret, int? created, String? currency, List<InvoiceSettingCustomField>? Function()? customFields, InvoiceCustomer? customer, String? Function()? customerAccount, Address? Function()? customerAddress, String? Function()? customerEmail, String? Function()? customerName, String? Function()? customerPhone, Shipping? Function()? customerShipping, InvoiceCustomerTaxExempt? Function()? customerTaxExempt, List<InvoicesResourceInvoiceTaxId>? Function()? customerTaxIds, InvoiceDefaultPaymentMethod? Function()? defaultPaymentMethod, InvoiceDefaultSource? Function()? defaultSource, List<TaxRate>? defaultTaxRates, String? Function()? description, List<InvoiceDiscounts>? discounts, int? Function()? dueDate, int? Function()? effectiveAt, int? Function()? endingBalance, String? Function()? footer, InvoicesResourceFromInvoice? Function()? fromInvoice, String? Function()? hostedInvoiceUrl, String? id, String? Function()? invoicePdf, ConnectAccountReference? issuer, Errors? Function()? lastFinalizationError, InvoiceLatestRevision? Function()? latestRevision, InvoiceLines? lines, bool? livemode, Map<String, String>? Function()? metadata, int? Function()? nextPaymentAttempt, String? Function()? number, InvoiceObject? object, InvoiceOnBehalfOf? Function()? onBehalfOf, BillingBillResourceInvoicingParentsInvoiceParent? Function()? parent, InvoicesPaymentSettings? paymentSettings, InvoicePayments Function()? payments, int? periodEnd, int? periodStart, int? postPaymentCreditNotesAmount, int? prePaymentCreditNotesAmount, String? Function()? receiptNumber, InvoicesResourceInvoiceRendering? Function()? rendering, InvoicesResourceShippingCost? Function()? shippingCost, Shipping? Function()? shippingDetails, int? startingBalance, String? Function()? statementDescriptor, InvoiceStatus? Function()? status, InvoicesResourceStatusTransitions? statusTransitions, int? subtotal, int? Function()? subtotalExcludingTax, InvoiceTestClock? Function()? testClock, InvoiceThresholdReason Function()? thresholdReason, int? total, List<DiscountsResourceDiscountAmount>? Function()? totalDiscountAmounts, int? Function()? totalExcludingTax, List<InvoicesResourcePretaxCreditAmount>? Function()? totalPretaxCreditAmounts, List<BillingBillResourceInvoicingTaxesTax>? Function()? totalTaxes, int? Function()? webhooksDeliveredAt, }) { return Invoice(
  accountCountry: accountCountry != null ? accountCountry() : this.accountCountry,
  accountName: accountName != null ? accountName() : this.accountName,
  accountTaxIds: accountTaxIds != null ? accountTaxIds() : this.accountTaxIds,
  amountDue: amountDue ?? this.amountDue,
  amountOverpaid: amountOverpaid ?? this.amountOverpaid,
  amountPaid: amountPaid ?? this.amountPaid,
  amountRemaining: amountRemaining ?? this.amountRemaining,
  amountShipping: amountShipping ?? this.amountShipping,
  application: application != null ? application() : this.application,
  attemptCount: attemptCount ?? this.attemptCount,
  attempted: attempted ?? this.attempted,
  autoAdvance: autoAdvance ?? this.autoAdvance,
  automaticTax: automaticTax ?? this.automaticTax,
  automaticallyFinalizesAt: automaticallyFinalizesAt != null ? automaticallyFinalizesAt() : this.automaticallyFinalizesAt,
  billingReason: billingReason != null ? billingReason() : this.billingReason,
  collectionMethod: collectionMethod ?? this.collectionMethod,
  confirmationSecret: confirmationSecret != null ? confirmationSecret() : this.confirmationSecret,
  created: created ?? this.created,
  currency: currency ?? this.currency,
  customFields: customFields != null ? customFields() : this.customFields,
  customer: customer ?? this.customer,
  customerAccount: customerAccount != null ? customerAccount() : this.customerAccount,
  customerAddress: customerAddress != null ? customerAddress() : this.customerAddress,
  customerEmail: customerEmail != null ? customerEmail() : this.customerEmail,
  customerName: customerName != null ? customerName() : this.customerName,
  customerPhone: customerPhone != null ? customerPhone() : this.customerPhone,
  customerShipping: customerShipping != null ? customerShipping() : this.customerShipping,
  customerTaxExempt: customerTaxExempt != null ? customerTaxExempt() : this.customerTaxExempt,
  customerTaxIds: customerTaxIds != null ? customerTaxIds() : this.customerTaxIds,
  defaultPaymentMethod: defaultPaymentMethod != null ? defaultPaymentMethod() : this.defaultPaymentMethod,
  defaultSource: defaultSource != null ? defaultSource() : this.defaultSource,
  defaultTaxRates: defaultTaxRates ?? this.defaultTaxRates,
  description: description != null ? description() : this.description,
  discounts: discounts ?? this.discounts,
  dueDate: dueDate != null ? dueDate() : this.dueDate,
  effectiveAt: effectiveAt != null ? effectiveAt() : this.effectiveAt,
  endingBalance: endingBalance != null ? endingBalance() : this.endingBalance,
  footer: footer != null ? footer() : this.footer,
  fromInvoice: fromInvoice != null ? fromInvoice() : this.fromInvoice,
  hostedInvoiceUrl: hostedInvoiceUrl != null ? hostedInvoiceUrl() : this.hostedInvoiceUrl,
  id: id ?? this.id,
  invoicePdf: invoicePdf != null ? invoicePdf() : this.invoicePdf,
  issuer: issuer ?? this.issuer,
  lastFinalizationError: lastFinalizationError != null ? lastFinalizationError() : this.lastFinalizationError,
  latestRevision: latestRevision != null ? latestRevision() : this.latestRevision,
  lines: lines ?? this.lines,
  livemode: livemode ?? this.livemode,
  metadata: metadata != null ? metadata() : this.metadata,
  nextPaymentAttempt: nextPaymentAttempt != null ? nextPaymentAttempt() : this.nextPaymentAttempt,
  number: number != null ? number() : this.number,
  object: object ?? this.object,
  onBehalfOf: onBehalfOf != null ? onBehalfOf() : this.onBehalfOf,
  parent: parent != null ? parent() : this.parent,
  paymentSettings: paymentSettings ?? this.paymentSettings,
  payments: payments != null ? payments() : this.payments,
  periodEnd: periodEnd ?? this.periodEnd,
  periodStart: periodStart ?? this.periodStart,
  postPaymentCreditNotesAmount: postPaymentCreditNotesAmount ?? this.postPaymentCreditNotesAmount,
  prePaymentCreditNotesAmount: prePaymentCreditNotesAmount ?? this.prePaymentCreditNotesAmount,
  receiptNumber: receiptNumber != null ? receiptNumber() : this.receiptNumber,
  rendering: rendering != null ? rendering() : this.rendering,
  shippingCost: shippingCost != null ? shippingCost() : this.shippingCost,
  shippingDetails: shippingDetails != null ? shippingDetails() : this.shippingDetails,
  startingBalance: startingBalance ?? this.startingBalance,
  statementDescriptor: statementDescriptor != null ? statementDescriptor() : this.statementDescriptor,
  status: status != null ? status() : this.status,
  statusTransitions: statusTransitions ?? this.statusTransitions,
  subtotal: subtotal ?? this.subtotal,
  subtotalExcludingTax: subtotalExcludingTax != null ? subtotalExcludingTax() : this.subtotalExcludingTax,
  testClock: testClock != null ? testClock() : this.testClock,
  thresholdReason: thresholdReason != null ? thresholdReason() : this.thresholdReason,
  total: total ?? this.total,
  totalDiscountAmounts: totalDiscountAmounts != null ? totalDiscountAmounts() : this.totalDiscountAmounts,
  totalExcludingTax: totalExcludingTax != null ? totalExcludingTax() : this.totalExcludingTax,
  totalPretaxCreditAmounts: totalPretaxCreditAmounts != null ? totalPretaxCreditAmounts() : this.totalPretaxCreditAmounts,
  totalTaxes: totalTaxes != null ? totalTaxes() : this.totalTaxes,
  webhooksDeliveredAt: webhooksDeliveredAt != null ? webhooksDeliveredAt() : this.webhooksDeliveredAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Invoice &&
          accountCountry == other.accountCountry &&
          accountName == other.accountName &&
          listEquals(accountTaxIds, other.accountTaxIds) &&
          amountDue == other.amountDue &&
          amountOverpaid == other.amountOverpaid &&
          amountPaid == other.amountPaid &&
          amountRemaining == other.amountRemaining &&
          amountShipping == other.amountShipping &&
          application == other.application &&
          attemptCount == other.attemptCount &&
          attempted == other.attempted &&
          autoAdvance == other.autoAdvance &&
          automaticTax == other.automaticTax &&
          automaticallyFinalizesAt == other.automaticallyFinalizesAt &&
          billingReason == other.billingReason &&
          collectionMethod == other.collectionMethod &&
          confirmationSecret == other.confirmationSecret &&
          created == other.created &&
          currency == other.currency &&
          listEquals(customFields, other.customFields) &&
          customer == other.customer &&
          customerAccount == other.customerAccount &&
          customerAddress == other.customerAddress &&
          customerEmail == other.customerEmail &&
          customerName == other.customerName &&
          customerPhone == other.customerPhone &&
          customerShipping == other.customerShipping &&
          customerTaxExempt == other.customerTaxExempt &&
          listEquals(customerTaxIds, other.customerTaxIds) &&
          defaultPaymentMethod == other.defaultPaymentMethod &&
          defaultSource == other.defaultSource &&
          listEquals(defaultTaxRates, other.defaultTaxRates) &&
          description == other.description &&
          listEquals(discounts, other.discounts) &&
          dueDate == other.dueDate &&
          effectiveAt == other.effectiveAt &&
          endingBalance == other.endingBalance &&
          footer == other.footer &&
          fromInvoice == other.fromInvoice &&
          hostedInvoiceUrl == other.hostedInvoiceUrl &&
          id == other.id &&
          invoicePdf == other.invoicePdf &&
          issuer == other.issuer &&
          lastFinalizationError == other.lastFinalizationError &&
          latestRevision == other.latestRevision &&
          lines == other.lines &&
          livemode == other.livemode &&
          metadata == other.metadata &&
          nextPaymentAttempt == other.nextPaymentAttempt &&
          number == other.number &&
          object == other.object &&
          onBehalfOf == other.onBehalfOf &&
          parent == other.parent &&
          paymentSettings == other.paymentSettings &&
          payments == other.payments &&
          periodEnd == other.periodEnd &&
          periodStart == other.periodStart &&
          postPaymentCreditNotesAmount == other.postPaymentCreditNotesAmount &&
          prePaymentCreditNotesAmount == other.prePaymentCreditNotesAmount &&
          receiptNumber == other.receiptNumber &&
          rendering == other.rendering &&
          shippingCost == other.shippingCost &&
          shippingDetails == other.shippingDetails &&
          startingBalance == other.startingBalance &&
          statementDescriptor == other.statementDescriptor &&
          status == other.status &&
          statusTransitions == other.statusTransitions &&
          subtotal == other.subtotal &&
          subtotalExcludingTax == other.subtotalExcludingTax &&
          testClock == other.testClock &&
          thresholdReason == other.thresholdReason &&
          total == other.total &&
          listEquals(totalDiscountAmounts, other.totalDiscountAmounts) &&
          totalExcludingTax == other.totalExcludingTax &&
          listEquals(totalPretaxCreditAmounts, other.totalPretaxCreditAmounts) &&
          listEquals(totalTaxes, other.totalTaxes) &&
          webhooksDeliveredAt == other.webhooksDeliveredAt; } 
@override int get hashCode { return Object.hashAll([accountCountry, accountName, Object.hashAll(accountTaxIds ?? const []), amountDue, amountOverpaid, amountPaid, amountRemaining, amountShipping, application, attemptCount, attempted, autoAdvance, automaticTax, automaticallyFinalizesAt, billingReason, collectionMethod, confirmationSecret, created, currency, Object.hashAll(customFields ?? const []), customer, customerAccount, customerAddress, customerEmail, customerName, customerPhone, customerShipping, customerTaxExempt, Object.hashAll(customerTaxIds ?? const []), defaultPaymentMethod, defaultSource, Object.hashAll(defaultTaxRates), description, Object.hashAll(discounts), dueDate, effectiveAt, endingBalance, footer, fromInvoice, hostedInvoiceUrl, id, invoicePdf, issuer, lastFinalizationError, latestRevision, lines, livemode, metadata, nextPaymentAttempt, number, object, onBehalfOf, parent, paymentSettings, payments, periodEnd, periodStart, postPaymentCreditNotesAmount, prePaymentCreditNotesAmount, receiptNumber, rendering, shippingCost, shippingDetails, startingBalance, statementDescriptor, status, statusTransitions, subtotal, subtotalExcludingTax, testClock, thresholdReason, total, Object.hashAll(totalDiscountAmounts ?? const []), totalExcludingTax, Object.hashAll(totalPretaxCreditAmounts ?? const []), Object.hashAll(totalTaxes ?? const []), webhooksDeliveredAt]); } 
@override String toString() { return 'Invoice(accountCountry: $accountCountry, accountName: $accountName, accountTaxIds: $accountTaxIds, amountDue: $amountDue, amountOverpaid: $amountOverpaid, amountPaid: $amountPaid, amountRemaining: $amountRemaining, amountShipping: $amountShipping, application: $application, attemptCount: $attemptCount, attempted: $attempted, autoAdvance: $autoAdvance, automaticTax: $automaticTax, automaticallyFinalizesAt: $automaticallyFinalizesAt, billingReason: $billingReason, collectionMethod: $collectionMethod, confirmationSecret: $confirmationSecret, created: $created, currency: $currency, customFields: $customFields, customer: $customer, customerAccount: $customerAccount, customerAddress: $customerAddress, customerEmail: $customerEmail, customerName: $customerName, customerPhone: $customerPhone, customerShipping: $customerShipping, customerTaxExempt: $customerTaxExempt, customerTaxIds: $customerTaxIds, defaultPaymentMethod: $defaultPaymentMethod, defaultSource: $defaultSource, defaultTaxRates: $defaultTaxRates, description: $description, discounts: $discounts, dueDate: $dueDate, effectiveAt: $effectiveAt, endingBalance: $endingBalance, footer: $footer, fromInvoice: $fromInvoice, hostedInvoiceUrl: $hostedInvoiceUrl, id: $id, invoicePdf: $invoicePdf, issuer: $issuer, lastFinalizationError: $lastFinalizationError, latestRevision: $latestRevision, lines: $lines, livemode: $livemode, metadata: $metadata, nextPaymentAttempt: $nextPaymentAttempt, number: $number, object: $object, onBehalfOf: $onBehalfOf, parent: $parent, paymentSettings: $paymentSettings, payments: $payments, periodEnd: $periodEnd, periodStart: $periodStart, postPaymentCreditNotesAmount: $postPaymentCreditNotesAmount, prePaymentCreditNotesAmount: $prePaymentCreditNotesAmount, receiptNumber: $receiptNumber, rendering: $rendering, shippingCost: $shippingCost, shippingDetails: $shippingDetails, startingBalance: $startingBalance, statementDescriptor: $statementDescriptor, status: $status, statusTransitions: $statusTransitions, subtotal: $subtotal, subtotalExcludingTax: $subtotalExcludingTax, testClock: $testClock, thresholdReason: $thresholdReason, total: $total, totalDiscountAmounts: $totalDiscountAmounts, totalExcludingTax: $totalExcludingTax, totalPretaxCreditAmounts: $totalPretaxCreditAmounts, totalTaxes: $totalTaxes, webhooksDeliveredAt: $webhooksDeliveredAt)'; } 
 }
