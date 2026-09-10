// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account.dart';import 'application.dart';import 'application_fee.dart';import 'balance_transaction.dart';import 'billing_details.dart';import 'charge_application.dart';import 'charge_application_fee.dart';import 'charge_balance_transaction.dart';import 'charge_customer.dart';import 'charge_failure_balance_transaction.dart';import 'charge_fraud_details.dart';import 'charge_on_behalf_of.dart';import 'charge_outcome.dart';import 'charge_payment_intent.dart';import 'charge_refunds.dart';import 'charge_review.dart';import 'charge_source_transfer.dart';import 'charge_transfer.dart';import 'charge_transfer_data.dart';import 'customer.dart';import 'deleted_customer.dart';import 'payment_flows_payment_intent_presentment_details.dart';import 'payment_intent.dart';import 'payment_method_details.dart';import 'radar_radar_options.dart';import 'review.dart';import 'shipping.dart';import 'transfer.dart';/// String representing the object's type. Objects of the same type share the same value.
@immutable final class ChargeObject {const ChargeObject._(this.value);

factory ChargeObject.fromJson(String json) { return switch (json) {
  'charge' => charge,
  _ => ChargeObject._(json),
}; }

static const ChargeObject charge = ChargeObject._('charge');

static const List<ChargeObject> values = [charge];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChargeObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ChargeObject($value)'; } 
 }
/// The status of the payment is either `succeeded`, `pending`, or `failed`.
@immutable final class ChargeStatus {const ChargeStatus._(this.value);

factory ChargeStatus.fromJson(String json) { return switch (json) {
  'failed' => failed,
  'pending' => pending,
  'succeeded' => succeeded,
  _ => ChargeStatus._(json),
}; }

static const ChargeStatus failed = ChargeStatus._('failed');

static const ChargeStatus pending = ChargeStatus._('pending');

static const ChargeStatus succeeded = ChargeStatus._('succeeded');

static const List<ChargeStatus> values = [failed, pending, succeeded];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChargeStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ChargeStatus($value)'; } 
 }
/// The `Charge` object represents a single attempt to move money into your Stripe account.
/// PaymentIntent confirmation is the most common way to create Charges, but [Account Debits](https://docs.stripe.com/connect/account-debits) may also create Charges.
/// Some legacy payment flows create Charges directly, which is not recommended for new integrations.
@immutable final class Charge {const Charge({required this.object, required this.amountCaptured, required this.amountRefunded, required this.billingDetails, required this.captured, required this.created, required this.currency, required this.disputed, required this.livemode, required this.refunded, required this.paid, required this.metadata, required this.id, required this.amount, required this.status, this.description = const Omittable.absent(), this.failureCode = const Omittable.absent(), this.failureMessage = const Omittable.absent(), this.fraudDetails = const Omittable.absent(), this.customer = const Omittable.absent(), this.calculatedStatementDescriptor = const Omittable.absent(), this.balanceTransaction = const Omittable.absent(), this.failureBalanceTransaction = const Omittable.absent(), this.onBehalfOf = const Omittable.absent(), this.outcome = const Omittable.absent(), this.applicationFeeAmount = const Omittable.absent(), this.paymentIntent = const Omittable.absent(), this.paymentMethod = const Omittable.absent(), this.paymentMethodDetails = const Omittable.absent(), this.transferGroup = const Omittable.absent(), this.radarOptions, this.receiptEmail = const Omittable.absent(), this.receiptNumber = const Omittable.absent(), this.receiptUrl = const Omittable.absent(), this.applicationFee = const Omittable.absent(), this.refunds = const Omittable.absent(), this.review = const Omittable.absent(), this.shipping = const Omittable.absent(), this.sourceTransfer = const Omittable.absent(), this.statementDescriptor = const Omittable.absent(), this.statementDescriptorSuffix = const Omittable.absent(), this.application = const Omittable.absent(), this.transfer, this.transferData = const Omittable.absent(), this.presentmentDetails, });

factory Charge.fromJson(Map<String, dynamic> json) { return Charge(
  amount: (json['amount'] as num).toInt(),
  amountCaptured: (json['amount_captured'] as num).toInt(),
  amountRefunded: (json['amount_refunded'] as num).toInt(),
  application: json.containsKey('application') ? Omittable(json['application'] != null ? OneOf2.parse(json['application'], fromA: (v) => v as String, fromB: (v) => Application.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  applicationFee: json.containsKey('application_fee') ? Omittable(json['application_fee'] != null ? OneOf2.parse(json['application_fee'], fromA: (v) => v as String, fromB: (v) => ApplicationFee.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  applicationFeeAmount: json.containsKey('application_fee_amount') ? Omittable(json['application_fee_amount'] != null ? (json['application_fee_amount'] as num).toInt() : null) : const Omittable.absent(),
  balanceTransaction: json.containsKey('balance_transaction') ? Omittable(json['balance_transaction'] != null ? OneOf2.parse(json['balance_transaction'], fromA: (v) => v as String, fromB: (v) => BalanceTransaction.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  billingDetails: BillingDetails.fromJson(json['billing_details'] as Map<String, dynamic>),
  calculatedStatementDescriptor: json.containsKey('calculated_statement_descriptor') ? Omittable(json['calculated_statement_descriptor'] as String?) : const Omittable.absent(),
  captured: json['captured'] as bool,
  created: (json['created'] as num).toInt(),
  currency: json['currency'] as String,
  customer: json.containsKey('customer') ? Omittable(json['customer'] != null ? OneOf3.parse(json['customer'], fromA: (v) => v as String, fromB: (v) => Customer.fromJson(v as Map<String, dynamic>), fromC: (v) => DeletedCustomer.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  disputed: json['disputed'] as bool,
  failureBalanceTransaction: json.containsKey('failure_balance_transaction') ? Omittable(json['failure_balance_transaction'] != null ? OneOf2.parse(json['failure_balance_transaction'], fromA: (v) => v as String, fromB: (v) => BalanceTransaction.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  failureCode: json.containsKey('failure_code') ? Omittable(json['failure_code'] as String?) : const Omittable.absent(),
  failureMessage: json.containsKey('failure_message') ? Omittable(json['failure_message'] as String?) : const Omittable.absent(),
  fraudDetails: json.containsKey('fraud_details') ? Omittable(json['fraud_details'] != null ? ChargeFraudDetails.fromJson(json['fraud_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  metadata: (json['metadata'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  object: ChargeObject.fromJson(json['object'] as String),
  onBehalfOf: json.containsKey('on_behalf_of') ? Omittable(json['on_behalf_of'] != null ? OneOf2.parse(json['on_behalf_of'], fromA: (v) => v as String, fromB: (v) => Account.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  outcome: json.containsKey('outcome') ? Omittable(json['outcome'] != null ? ChargeOutcome.fromJson(json['outcome'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  paid: json['paid'] as bool,
  paymentIntent: json.containsKey('payment_intent') ? Omittable(json['payment_intent'] != null ? OneOf2.parse(json['payment_intent'], fromA: (v) => v as String, fromB: (v) => PaymentIntent.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  paymentMethod: json.containsKey('payment_method') ? Omittable(json['payment_method'] as String?) : const Omittable.absent(),
  paymentMethodDetails: json.containsKey('payment_method_details') ? Omittable(json['payment_method_details'] != null ? PaymentMethodDetails.fromJson(json['payment_method_details'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  presentmentDetails: json['presentment_details'] != null ? PaymentFlowsPaymentIntentPresentmentDetails.fromJson(json['presentment_details'] as Map<String, dynamic>) : null,
  radarOptions: json['radar_options'] != null ? RadarRadarOptions.fromJson(json['radar_options'] as Map<String, dynamic>) : null,
  receiptEmail: json.containsKey('receipt_email') ? Omittable(json['receipt_email'] as String?) : const Omittable.absent(),
  receiptNumber: json.containsKey('receipt_number') ? Omittable(json['receipt_number'] as String?) : const Omittable.absent(),
  receiptUrl: json.containsKey('receipt_url') ? Omittable(json['receipt_url'] as String?) : const Omittable.absent(),
  refunded: json['refunded'] as bool,
  refunds: json.containsKey('refunds') ? Omittable(json['refunds'] != null ? ChargeRefunds.fromJson(json['refunds'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  review: json.containsKey('review') ? Omittable(json['review'] != null ? OneOf2.parse(json['review'], fromA: (v) => v as String, fromB: (v) => Review.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  shipping: json.containsKey('shipping') ? Omittable(json['shipping'] != null ? Shipping.fromJson(json['shipping'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  sourceTransfer: json.containsKey('source_transfer') ? Omittable(json['source_transfer'] != null ? OneOf2.parse(json['source_transfer'], fromA: (v) => v as String, fromB: (v) => Transfer.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  statementDescriptor: json.containsKey('statement_descriptor') ? Omittable(json['statement_descriptor'] as String?) : const Omittable.absent(),
  statementDescriptorSuffix: json.containsKey('statement_descriptor_suffix') ? Omittable(json['statement_descriptor_suffix'] as String?) : const Omittable.absent(),
  status: ChargeStatus.fromJson(json['status'] as String),
  transfer: json['transfer'] != null ? OneOf2.parse(json['transfer'], fromA: (v) => v as String, fromB: (v) => Transfer.fromJson(v as Map<String, dynamic>),) : null,
  transferData: json.containsKey('transfer_data') ? Omittable(json['transfer_data'] != null ? ChargeTransferData.fromJson(json['transfer_data'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  transferGroup: json.containsKey('transfer_group') ? Omittable(json['transfer_group'] as String?) : const Omittable.absent(),
); }

/// Amount intended to be collected by this payment. A positive integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://docs.stripe.com/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
final int amount;

/// Amount in cents (or local equivalent) captured (can be less than the amount attribute on the charge if a partial capture was made).
final int amountCaptured;

/// Amount in cents (or local equivalent) refunded (can be less than the amount attribute on the charge if a partial refund was issued).
final int amountRefunded;

/// ID of the Connect application that created the charge.
final Omittable<ChargeApplication?> application;

/// The application fee (if any) for the charge. [See the Connect documentation](https://docs.stripe.com/connect/direct-charges#collect-fees) for details.
final Omittable<ChargeApplicationFee?> applicationFee;

/// The amount of the application fee (if any) requested for the charge. [See the Connect documentation](https://docs.stripe.com/connect/direct-charges#collect-fees) for details.
final Omittable<int?> applicationFeeAmount;

/// ID of the balance transaction that describes the impact of this charge on your account balance (not including refunds or disputes).
final Omittable<ChargeBalanceTransaction?> balanceTransaction;

final BillingDetails billingDetails;

/// The full statement descriptor that is passed to card networks, and that is displayed on your customers' credit card and bank statements. Allows you to see what the statement descriptor looks like after the static and dynamic portions are combined. This value only exists for card payments.
final Omittable<String?> calculatedStatementDescriptor;

/// If the charge was created without capturing, this Boolean represents whether it is still uncaptured or has since been captured.
final bool captured;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String currency;

/// ID of the customer this charge is for if one exists.
final Omittable<ChargeCustomer?> customer;

/// An arbitrary string attached to the object. Often useful for displaying to users.
final Omittable<String?> description;

/// Whether the charge has been disputed.
final bool disputed;

/// ID of the balance transaction that describes the reversal of the balance on your account due to payment failure.
final Omittable<ChargeFailureBalanceTransaction?> failureBalanceTransaction;

/// Error code explaining reason for charge failure if available (see [the errors section](https://docs.stripe.com/error-codes) for a list of codes).
final Omittable<String?> failureCode;

/// Message to user further explaining reason for charge failure if available.
final Omittable<String?> failureMessage;

/// Information on fraud assessments for the charge.
final Omittable<ChargeFraudDetails?> fraudDetails;

/// Unique identifier for the object.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String> metadata;

/// String representing the object's type. Objects of the same type share the same value.
final ChargeObject object;

/// The account (if any) the charge was made on behalf of without triggering an automatic transfer. See the [Connect documentation](https://docs.stripe.com/connect/separate-charges-and-transfers) for details.
final Omittable<ChargeOnBehalfOf?> onBehalfOf;

/// Details about whether the payment was accepted, and why. See [understanding declines](https://docs.stripe.com/declines) for details.
final Omittable<ChargeOutcome?> outcome;

/// `true` if the charge succeeded, or was successfully authorized for later capture.
final bool paid;

/// ID of the PaymentIntent associated with this charge, if one exists.
final Omittable<ChargePaymentIntent?> paymentIntent;

/// ID of the payment method used in this charge.
final Omittable<String?> paymentMethod;

/// Details about the payment method at the time of the transaction.
final Omittable<PaymentMethodDetails?> paymentMethodDetails;

final PaymentFlowsPaymentIntentPresentmentDetails? presentmentDetails;

final RadarRadarOptions? radarOptions;

/// This is the email address that the receipt for this charge was sent to.
final Omittable<String?> receiptEmail;

/// This is the transaction number that appears on email receipts sent for this charge. This attribute will be `null` until a receipt has been sent.
final Omittable<String?> receiptNumber;

/// This is the URL to view the receipt for this charge. The receipt is kept up-to-date to the latest state of the charge, including any refunds. If the charge is for an Invoice, the receipt will be stylized as an Invoice receipt.
final Omittable<String?> receiptUrl;

/// Whether the charge has been fully refunded. If the charge is only partially refunded, this attribute will still be false.
final bool refunded;

/// A list of refunds that have been applied to the charge.
final Omittable<ChargeRefunds?> refunds;

/// ID of the review associated with this charge if one exists.
final Omittable<ChargeReview?> review;

/// Shipping information for the charge.
final Omittable<Shipping?> shipping;

/// The transfer ID which created this charge. Only present if the charge came from another Stripe account. [See the Connect documentation](https://docs.stripe.com/connect/destination-charges) for details.
final Omittable<ChargeSourceTransfer?> sourceTransfer;

/// For a non-card charge, text that appears on the customer's statement as the statement descriptor. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
/// 
/// For a card charge, this value is ignored unless you don't specify a `statement_descriptor_suffix`, in which case this value is used as the suffix.
final Omittable<String?> statementDescriptor;

/// Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement. If the account has no prefix value, the suffix is concatenated to the account's statement descriptor.
final Omittable<String?> statementDescriptorSuffix;

/// The status of the payment is either `succeeded`, `pending`, or `failed`.
final ChargeStatus status;

/// ID of the transfer to the `destination` account (only applicable if the charge was created using the `destination` parameter).
final ChargeTransfer? transfer;

/// An optional dictionary including the account to automatically transfer to as part of a destination charge. [See the Connect documentation](https://docs.stripe.com/connect/destination-charges) for details.
final Omittable<ChargeTransferData?> transferData;

/// A string that identifies this transaction as part of a group. See the [Connect documentation](https://docs.stripe.com/connect/separate-charges-and-transfers#transfer-options) for details.
final Omittable<String?> transferGroup;

Map<String, dynamic> toJson() { return {
  'amount': amount,
  'amount_captured': amountCaptured,
  'amount_refunded': amountRefunded,
  if (application.isPresent) 'application': application.value?.toJson(),
  if (applicationFee.isPresent) 'application_fee': applicationFee.value?.toJson(),
  if (applicationFeeAmount.isPresent) 'application_fee_amount': applicationFeeAmount.value,
  if (balanceTransaction.isPresent) 'balance_transaction': balanceTransaction.value?.toJson(),
  'billing_details': billingDetails.toJson(),
  if (calculatedStatementDescriptor.isPresent) 'calculated_statement_descriptor': calculatedStatementDescriptor.value,
  'captured': captured,
  'created': created,
  'currency': currency,
  if (customer.isPresent) 'customer': customer.value?.toJson(),
  if (description.isPresent) 'description': description.value,
  'disputed': disputed,
  if (failureBalanceTransaction.isPresent) 'failure_balance_transaction': failureBalanceTransaction.value?.toJson(),
  if (failureCode.isPresent) 'failure_code': failureCode.value,
  if (failureMessage.isPresent) 'failure_message': failureMessage.value,
  if (fraudDetails.isPresent) 'fraud_details': fraudDetails.value?.toJson(),
  'id': id,
  'livemode': livemode,
  'metadata': metadata,
  'object': object.toJson(),
  if (onBehalfOf.isPresent) 'on_behalf_of': onBehalfOf.value?.toJson(),
  if (outcome.isPresent) 'outcome': outcome.value?.toJson(),
  'paid': paid,
  if (paymentIntent.isPresent) 'payment_intent': paymentIntent.value?.toJson(),
  if (paymentMethod.isPresent) 'payment_method': paymentMethod.value,
  if (paymentMethodDetails.isPresent) 'payment_method_details': paymentMethodDetails.value?.toJson(),
  if (presentmentDetails != null) 'presentment_details': presentmentDetails?.toJson(),
  if (radarOptions != null) 'radar_options': radarOptions?.toJson(),
  if (receiptEmail.isPresent) 'receipt_email': receiptEmail.value,
  if (receiptNumber.isPresent) 'receipt_number': receiptNumber.value,
  if (receiptUrl.isPresent) 'receipt_url': receiptUrl.value,
  'refunded': refunded,
  if (refunds.isPresent) 'refunds': refunds.value?.toJson(),
  if (review.isPresent) 'review': review.value?.toJson(),
  if (shipping.isPresent) 'shipping': shipping.value?.toJson(),
  if (sourceTransfer.isPresent) 'source_transfer': sourceTransfer.value?.toJson(),
  if (statementDescriptor.isPresent) 'statement_descriptor': statementDescriptor.value,
  if (statementDescriptorSuffix.isPresent) 'statement_descriptor_suffix': statementDescriptorSuffix.value,
  'status': status.toJson(),
  if (transfer != null) 'transfer': transfer?.toJson(),
  if (transferData.isPresent) 'transfer_data': transferData.value?.toJson(),
  if (transferGroup.isPresent) 'transfer_group': transferGroup.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') && json['amount'] is num &&
      json.containsKey('amount_captured') && json['amount_captured'] is num &&
      json.containsKey('amount_refunded') && json['amount_refunded'] is num &&
      json.containsKey('billing_details') &&
      json.containsKey('captured') && json['captured'] is bool &&
      json.containsKey('created') && json['created'] is num &&
      json.containsKey('currency') && json['currency'] is String &&
      json.containsKey('disputed') && json['disputed'] is bool &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('metadata') &&
      json.containsKey('object') &&
      json.containsKey('paid') && json['paid'] is bool &&
      json.containsKey('refunded') && json['refunded'] is bool &&
      json.containsKey('status'); } 
Charge copyWith({int? amount, int? amountCaptured, int? amountRefunded, Omittable<ChargeApplication?>? application, Omittable<ChargeApplicationFee?>? applicationFee, Omittable<int?>? applicationFeeAmount, Omittable<ChargeBalanceTransaction?>? balanceTransaction, BillingDetails? billingDetails, Omittable<String?>? calculatedStatementDescriptor, bool? captured, int? created, String? currency, Omittable<ChargeCustomer?>? customer, Omittable<String?>? description, bool? disputed, Omittable<ChargeFailureBalanceTransaction?>? failureBalanceTransaction, Omittable<String?>? failureCode, Omittable<String?>? failureMessage, Omittable<ChargeFraudDetails?>? fraudDetails, String? id, bool? livemode, Map<String,String>? metadata, ChargeObject? object, Omittable<ChargeOnBehalfOf?>? onBehalfOf, Omittable<ChargeOutcome?>? outcome, bool? paid, Omittable<ChargePaymentIntent?>? paymentIntent, Omittable<String?>? paymentMethod, Omittable<PaymentMethodDetails?>? paymentMethodDetails, PaymentFlowsPaymentIntentPresentmentDetails? Function()? presentmentDetails, RadarRadarOptions? Function()? radarOptions, Omittable<String?>? receiptEmail, Omittable<String?>? receiptNumber, Omittable<String?>? receiptUrl, bool? refunded, Omittable<ChargeRefunds?>? refunds, Omittable<ChargeReview?>? review, Omittable<Shipping?>? shipping, Omittable<ChargeSourceTransfer?>? sourceTransfer, Omittable<String?>? statementDescriptor, Omittable<String?>? statementDescriptorSuffix, ChargeStatus? status, ChargeTransfer? Function()? transfer, Omittable<ChargeTransferData?>? transferData, Omittable<String?>? transferGroup, }) { return Charge(
  amount: amount ?? this.amount,
  amountCaptured: amountCaptured ?? this.amountCaptured,
  amountRefunded: amountRefunded ?? this.amountRefunded,
  application: application ?? this.application,
  applicationFee: applicationFee ?? this.applicationFee,
  applicationFeeAmount: applicationFeeAmount ?? this.applicationFeeAmount,
  balanceTransaction: balanceTransaction ?? this.balanceTransaction,
  billingDetails: billingDetails ?? this.billingDetails,
  calculatedStatementDescriptor: calculatedStatementDescriptor ?? this.calculatedStatementDescriptor,
  captured: captured ?? this.captured,
  created: created ?? this.created,
  currency: currency ?? this.currency,
  customer: customer ?? this.customer,
  description: description ?? this.description,
  disputed: disputed ?? this.disputed,
  failureBalanceTransaction: failureBalanceTransaction ?? this.failureBalanceTransaction,
  failureCode: failureCode ?? this.failureCode,
  failureMessage: failureMessage ?? this.failureMessage,
  fraudDetails: fraudDetails ?? this.fraudDetails,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  metadata: metadata ?? this.metadata,
  object: object ?? this.object,
  onBehalfOf: onBehalfOf ?? this.onBehalfOf,
  outcome: outcome ?? this.outcome,
  paid: paid ?? this.paid,
  paymentIntent: paymentIntent ?? this.paymentIntent,
  paymentMethod: paymentMethod ?? this.paymentMethod,
  paymentMethodDetails: paymentMethodDetails ?? this.paymentMethodDetails,
  presentmentDetails: presentmentDetails != null ? presentmentDetails() : this.presentmentDetails,
  radarOptions: radarOptions != null ? radarOptions() : this.radarOptions,
  receiptEmail: receiptEmail ?? this.receiptEmail,
  receiptNumber: receiptNumber ?? this.receiptNumber,
  receiptUrl: receiptUrl ?? this.receiptUrl,
  refunded: refunded ?? this.refunded,
  refunds: refunds ?? this.refunds,
  review: review ?? this.review,
  shipping: shipping ?? this.shipping,
  sourceTransfer: sourceTransfer ?? this.sourceTransfer,
  statementDescriptor: statementDescriptor ?? this.statementDescriptor,
  statementDescriptorSuffix: statementDescriptorSuffix ?? this.statementDescriptorSuffix,
  status: status ?? this.status,
  transfer: transfer != null ? transfer() : this.transfer,
  transferData: transferData ?? this.transferData,
  transferGroup: transferGroup ?? this.transferGroup,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Charge &&
          amount == other.amount &&
          amountCaptured == other.amountCaptured &&
          amountRefunded == other.amountRefunded &&
          application == other.application &&
          applicationFee == other.applicationFee &&
          applicationFeeAmount == other.applicationFeeAmount &&
          balanceTransaction == other.balanceTransaction &&
          billingDetails == other.billingDetails &&
          calculatedStatementDescriptor == other.calculatedStatementDescriptor &&
          captured == other.captured &&
          created == other.created &&
          currency == other.currency &&
          customer == other.customer &&
          description == other.description &&
          disputed == other.disputed &&
          failureBalanceTransaction == other.failureBalanceTransaction &&
          failureCode == other.failureCode &&
          failureMessage == other.failureMessage &&
          fraudDetails == other.fraudDetails &&
          id == other.id &&
          livemode == other.livemode &&
          metadata == other.metadata &&
          object == other.object &&
          onBehalfOf == other.onBehalfOf &&
          outcome == other.outcome &&
          paid == other.paid &&
          paymentIntent == other.paymentIntent &&
          paymentMethod == other.paymentMethod &&
          paymentMethodDetails == other.paymentMethodDetails &&
          presentmentDetails == other.presentmentDetails &&
          radarOptions == other.radarOptions &&
          receiptEmail == other.receiptEmail &&
          receiptNumber == other.receiptNumber &&
          receiptUrl == other.receiptUrl &&
          refunded == other.refunded &&
          refunds == other.refunds &&
          review == other.review &&
          shipping == other.shipping &&
          sourceTransfer == other.sourceTransfer &&
          statementDescriptor == other.statementDescriptor &&
          statementDescriptorSuffix == other.statementDescriptorSuffix &&
          status == other.status &&
          transfer == other.transfer &&
          transferData == other.transferData &&
          transferGroup == other.transferGroup; } 
@override int get hashCode { return Object.hashAll([amount, amountCaptured, amountRefunded, application, applicationFee, applicationFeeAmount, balanceTransaction, billingDetails, calculatedStatementDescriptor, captured, created, currency, customer, description, disputed, failureBalanceTransaction, failureCode, failureMessage, fraudDetails, id, livemode, metadata, object, onBehalfOf, outcome, paid, paymentIntent, paymentMethod, paymentMethodDetails, presentmentDetails, radarOptions, receiptEmail, receiptNumber, receiptUrl, refunded, refunds, review, shipping, sourceTransfer, statementDescriptor, statementDescriptorSuffix, status, transfer, transferData, transferGroup]); } 
@override String toString() { return 'Charge(amount: $amount, amountCaptured: $amountCaptured, amountRefunded: $amountRefunded, application: $application, applicationFee: $applicationFee, applicationFeeAmount: $applicationFeeAmount, balanceTransaction: $balanceTransaction, billingDetails: $billingDetails, calculatedStatementDescriptor: $calculatedStatementDescriptor, captured: $captured, created: $created, currency: $currency, customer: $customer, description: $description, disputed: $disputed, failureBalanceTransaction: $failureBalanceTransaction, failureCode: $failureCode, failureMessage: $failureMessage, fraudDetails: $fraudDetails, id: $id, livemode: $livemode, metadata: $metadata, object: $object, onBehalfOf: $onBehalfOf, outcome: $outcome, paid: $paid, paymentIntent: $paymentIntent, paymentMethod: $paymentMethod, paymentMethodDetails: $paymentMethodDetails, presentmentDetails: $presentmentDetails, radarOptions: $radarOptions, receiptEmail: $receiptEmail, receiptNumber: $receiptNumber, receiptUrl: $receiptUrl, refunded: $refunded, refunds: $refunds, review: $review, shipping: $shipping, sourceTransfer: $sourceTransfer, statementDescriptor: $statementDescriptor, statementDescriptorSuffix: $statementDescriptorSuffix, status: $status, transfer: $transfer, transferData: $transferData, transferGroup: $transferGroup)'; } 
 }
