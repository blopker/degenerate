// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'application_fee.dart';import 'balance_transaction.dart';import 'bank_account.dart';import 'card.dart';import 'deleted_bank_account.dart';import 'deleted_card.dart';import 'payout_application_fee.dart';import 'payout_balance_transaction.dart';import 'payout_destination.dart';import 'payout_failure_balance_transaction.dart';import 'payout_original_payout.dart';import 'payout_reversed_by.dart';import 'payouts_trace_id.dart';/// String representing the object's type. Objects of the same type share the same value.
final class PayoutObject {const PayoutObject._(this.value);

factory PayoutObject.fromJson(String json) { return switch (json) {
  'payout' => payout,
  _ => PayoutObject._(json),
}; }

static const PayoutObject payout = PayoutObject._('payout');

static const List<PayoutObject> values = [payout];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PayoutObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PayoutObject($value)'; } 
 }
/// If `completed`, you can use the [Balance Transactions API](https://docs.stripe.com/api/balance_transactions/list#balance_transaction_list-payout) to list all balance transactions that are paid out in this payout.
final class PayoutReconciliationStatus {const PayoutReconciliationStatus._(this.value);

factory PayoutReconciliationStatus.fromJson(String json) { return switch (json) {
  'completed' => completed,
  'in_progress' => inProgress,
  'not_applicable' => notApplicable,
  _ => PayoutReconciliationStatus._(json),
}; }

static const PayoutReconciliationStatus completed = PayoutReconciliationStatus._('completed');

static const PayoutReconciliationStatus inProgress = PayoutReconciliationStatus._('in_progress');

static const PayoutReconciliationStatus notApplicable = PayoutReconciliationStatus._('not_applicable');

static const List<PayoutReconciliationStatus> values = [completed, inProgress, notApplicable];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PayoutReconciliationStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PayoutReconciliationStatus($value)'; } 
 }
/// Can be `bank_account` or `card`.
final class PayoutType {const PayoutType._(this.value);

factory PayoutType.fromJson(String json) { return switch (json) {
  'bank_account' => bankAccount,
  'card' => card,
  _ => PayoutType._(json),
}; }

static const PayoutType bankAccount = PayoutType._('bank_account');

static const PayoutType card = PayoutType._('card');

static const List<PayoutType> values = [bankAccount, card];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PayoutType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PayoutType($value)'; } 
 }
/// A `Payout` object is created when you receive funds from Stripe, or when you
/// initiate a payout to either a bank account or debit card of a [connected
/// Stripe account](/docs/connect/bank-debit-card-payouts). You can retrieve individual payouts,
/// and list all payouts. Payouts are made on [varying
/// schedules](/docs/connect/manage-payout-schedule), depending on your country and
/// industry.
/// 
/// Related guide: [Receiving payouts](https://docs.stripe.com/payouts)
final class Payout {const Payout({required this.amount, this.applicationFee, this.applicationFeeAmount, required this.arrivalDate, required this.automatic, this.balanceTransaction, required this.created, required this.currency, this.description, this.destination, this.failureBalanceTransaction, this.failureCode, this.failureMessage, required this.id, required this.livemode, this.metadata, required this.method, required this.object, this.originalPayout, this.payoutMethod, required this.reconciliationStatus, this.reversedBy, required this.sourceType, this.statementDescriptor, required this.status, this.traceId, required this.type, });

factory Payout.fromJson(Map<String, dynamic> json) { return Payout(
  amount: (json['amount'] as num).toInt(),
  applicationFee: json['application_fee'] != null ? OneOf2.parse(json['application_fee'], fromA: (v) => v as String, fromB: (v) => ApplicationFee.fromJson(v as Map<String, dynamic>),) : null,
  applicationFeeAmount: json['application_fee_amount'] != null ? (json['application_fee_amount'] as num).toInt() : null,
  arrivalDate: (json['arrival_date'] as num).toInt(),
  automatic: json['automatic'] as bool,
  balanceTransaction: json['balance_transaction'] != null ? OneOf2.parse(json['balance_transaction'], fromA: (v) => v as String, fromB: (v) => BalanceTransaction.fromJson(v as Map<String, dynamic>),) : null,
  created: (json['created'] as num).toInt(),
  currency: json['currency'] as String,
  description: json['description'] as String?,
  destination: json['destination'] != null ? OneOf5.parse(json['destination'], fromA: (v) => v as String, fromB: (v) => BankAccount.fromJson(v as Map<String, dynamic>), fromC: (v) => Card.fromJson(v as Map<String, dynamic>), fromD: (v) => DeletedBankAccount.fromJson(v as Map<String, dynamic>), fromE: (v) => DeletedCard.fromJson(v as Map<String, dynamic>),) : null,
  failureBalanceTransaction: json['failure_balance_transaction'] != null ? OneOf2.parse(json['failure_balance_transaction'], fromA: (v) => v as String, fromB: (v) => BalanceTransaction.fromJson(v as Map<String, dynamic>),) : null,
  failureCode: json['failure_code'] as String?,
  failureMessage: json['failure_message'] as String?,
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  method: json['method'] as String,
  object: PayoutObject.fromJson(json['object'] as String),
  originalPayout: json['original_payout'] != null ? OneOf2.parse(json['original_payout'], fromA: (v) => v as String, fromB: (v) => Payout.fromJson(v as Map<String, dynamic>),) : null,
  payoutMethod: json['payout_method'] as String?,
  reconciliationStatus: PayoutReconciliationStatus.fromJson(json['reconciliation_status'] as String),
  reversedBy: json['reversed_by'] != null ? OneOf2.parse(json['reversed_by'], fromA: (v) => v as String, fromB: (v) => Payout.fromJson(v as Map<String, dynamic>),) : null,
  sourceType: json['source_type'] as String,
  statementDescriptor: json['statement_descriptor'] as String?,
  status: json['status'] as String,
  traceId: json['trace_id'] != null ? PayoutsTraceId.fromJson(json['trace_id'] as Map<String, dynamic>) : null,
  type: PayoutType.fromJson(json['type'] as String),
); }

/// The amount (in cents (or local equivalent)) that transfers to your bank account or debit card.
final int amount;

/// The application fee (if any) for the payout. [See the Connect documentation](https://docs.stripe.com/connect/instant-payouts#monetization-and-fees) for details.
final PayoutApplicationFee? applicationFee;

/// The amount of the application fee (if any) requested for the payout. [See the Connect documentation](https://docs.stripe.com/connect/instant-payouts#monetization-and-fees) for details.
final int? applicationFeeAmount;

/// Date that you can expect the payout to arrive in the bank. This factors in delays to account for weekends or bank holidays.
final int arrivalDate;

/// Returns `true` if the payout is created by an [automated payout schedule](https://docs.stripe.com/payouts#payout-schedule) and `false` if it's [requested manually](https://stripe.com/docs/payouts#manual-payouts).
final bool automatic;

/// ID of the balance transaction that describes the impact of this payout on your account balance.
final PayoutBalanceTransaction? balanceTransaction;

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String currency;

/// An arbitrary string attached to the object. Often useful for displaying to users.
final String? description;

/// ID of the bank account or card the payout is sent to.
final PayoutDestination? destination;

/// If the payout fails or cancels, this is the ID of the balance transaction that reverses the initial balance transaction and returns the funds from the failed payout back in your balance.
final PayoutFailureBalanceTransaction? failureBalanceTransaction;

/// Error code that provides a reason for a payout failure, if available. View our [list of failure codes](https://docs.stripe.com/api#payout_failures).
final String? failureCode;

/// Message that provides the reason for a payout failure, if available.
final String? failureMessage;

/// Unique identifier for the object.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
final Map<String,String>? metadata;

/// The method used to send this payout, which can be `standard` or `instant`. `instant` is supported for payouts to debit cards and bank accounts in certain countries. Learn more about [bank support for Instant Payouts](https://stripe.com/docs/payouts/instant-payouts-banks).
final String method;

/// String representing the object's type. Objects of the same type share the same value.
final PayoutObject object;

/// If the payout reverses another, this is the ID of the original payout.
final PayoutOriginalPayout? originalPayout;

/// ID of the v2 FinancialAccount the funds are sent to.
final String? payoutMethod;

/// If `completed`, you can use the [Balance Transactions API](https://docs.stripe.com/api/balance_transactions/list#balance_transaction_list-payout) to list all balance transactions that are paid out in this payout.
final PayoutReconciliationStatus reconciliationStatus;

/// If the payout reverses, this is the ID of the payout that reverses this payout.
final PayoutReversedBy? reversedBy;

/// The source balance this payout came from, which can be one of the following: `card`, `fpx`, or `bank_account`.
final String sourceType;

/// Extra information about a payout that displays on the user's bank statement.
final String? statementDescriptor;

/// Current status of the payout: `paid`, `pending`, `in_transit`, `canceled` or `failed`. A payout is `pending` until it's submitted to the bank, when it becomes `in_transit`. The status changes to `paid` if the transaction succeeds, or to `failed` or `canceled` (within 5 business days). Some payouts that fail might initially show as `paid`, then change to `failed`.
final String status;

/// A value that generates from the beneficiary's bank that allows users to track payouts with their bank. Banks might call this a "reference number" or something similar.
final PayoutsTraceId? traceId;

/// Can be `bank_account` or `card`.
final PayoutType type;

Map<String, dynamic> toJson() { return {
  'amount': amount,
  if (applicationFee != null) 'application_fee': applicationFee?.toJson(),
  'application_fee_amount': ?applicationFeeAmount,
  'arrival_date': arrivalDate,
  'automatic': automatic,
  if (balanceTransaction != null) 'balance_transaction': balanceTransaction?.toJson(),
  'created': created,
  'currency': currency,
  'description': ?description,
  if (destination != null) 'destination': destination?.toJson(),
  if (failureBalanceTransaction != null) 'failure_balance_transaction': failureBalanceTransaction?.toJson(),
  'failure_code': ?failureCode,
  'failure_message': ?failureMessage,
  'id': id,
  'livemode': livemode,
  'metadata': ?metadata,
  'method': method,
  'object': object.toJson(),
  if (originalPayout != null) 'original_payout': originalPayout?.toJson(),
  'payout_method': ?payoutMethod,
  'reconciliation_status': reconciliationStatus.toJson(),
  if (reversedBy != null) 'reversed_by': reversedBy?.toJson(),
  'source_type': sourceType,
  'statement_descriptor': ?statementDescriptor,
  'status': status,
  if (traceId != null) 'trace_id': traceId?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') && json['amount'] is num &&
      json.containsKey('arrival_date') && json['arrival_date'] is num &&
      json.containsKey('automatic') && json['automatic'] is bool &&
      json.containsKey('created') && json['created'] is num &&
      json.containsKey('currency') && json['currency'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('method') && json['method'] is String &&
      json.containsKey('object') &&
      json.containsKey('reconciliation_status') &&
      json.containsKey('source_type') && json['source_type'] is String &&
      json.containsKey('status') && json['status'] is String &&
      json.containsKey('type'); } 
Payout copyWith({int? amount, PayoutApplicationFee? Function()? applicationFee, int? Function()? applicationFeeAmount, int? arrivalDate, bool? automatic, PayoutBalanceTransaction? Function()? balanceTransaction, int? created, String? currency, String? Function()? description, PayoutDestination? Function()? destination, PayoutFailureBalanceTransaction? Function()? failureBalanceTransaction, String? Function()? failureCode, String? Function()? failureMessage, String? id, bool? livemode, Map<String, String>? Function()? metadata, String? method, PayoutObject? object, PayoutOriginalPayout? Function()? originalPayout, String? Function()? payoutMethod, PayoutReconciliationStatus? reconciliationStatus, PayoutReversedBy? Function()? reversedBy, String? sourceType, String? Function()? statementDescriptor, String? status, PayoutsTraceId? Function()? traceId, PayoutType? type, }) { return Payout(
  amount: amount ?? this.amount,
  applicationFee: applicationFee != null ? applicationFee() : this.applicationFee,
  applicationFeeAmount: applicationFeeAmount != null ? applicationFeeAmount() : this.applicationFeeAmount,
  arrivalDate: arrivalDate ?? this.arrivalDate,
  automatic: automatic ?? this.automatic,
  balanceTransaction: balanceTransaction != null ? balanceTransaction() : this.balanceTransaction,
  created: created ?? this.created,
  currency: currency ?? this.currency,
  description: description != null ? description() : this.description,
  destination: destination != null ? destination() : this.destination,
  failureBalanceTransaction: failureBalanceTransaction != null ? failureBalanceTransaction() : this.failureBalanceTransaction,
  failureCode: failureCode != null ? failureCode() : this.failureCode,
  failureMessage: failureMessage != null ? failureMessage() : this.failureMessage,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  metadata: metadata != null ? metadata() : this.metadata,
  method: method ?? this.method,
  object: object ?? this.object,
  originalPayout: originalPayout != null ? originalPayout() : this.originalPayout,
  payoutMethod: payoutMethod != null ? payoutMethod() : this.payoutMethod,
  reconciliationStatus: reconciliationStatus ?? this.reconciliationStatus,
  reversedBy: reversedBy != null ? reversedBy() : this.reversedBy,
  sourceType: sourceType ?? this.sourceType,
  statementDescriptor: statementDescriptor != null ? statementDescriptor() : this.statementDescriptor,
  status: status ?? this.status,
  traceId: traceId != null ? traceId() : this.traceId,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Payout &&
          amount == other.amount &&
          applicationFee == other.applicationFee &&
          applicationFeeAmount == other.applicationFeeAmount &&
          arrivalDate == other.arrivalDate &&
          automatic == other.automatic &&
          balanceTransaction == other.balanceTransaction &&
          created == other.created &&
          currency == other.currency &&
          description == other.description &&
          destination == other.destination &&
          failureBalanceTransaction == other.failureBalanceTransaction &&
          failureCode == other.failureCode &&
          failureMessage == other.failureMessage &&
          id == other.id &&
          livemode == other.livemode &&
          metadata == other.metadata &&
          method == other.method &&
          object == other.object &&
          originalPayout == other.originalPayout &&
          payoutMethod == other.payoutMethod &&
          reconciliationStatus == other.reconciliationStatus &&
          reversedBy == other.reversedBy &&
          sourceType == other.sourceType &&
          statementDescriptor == other.statementDescriptor &&
          status == other.status &&
          traceId == other.traceId &&
          type == other.type; } 
@override int get hashCode { return Object.hashAll([amount, applicationFee, applicationFeeAmount, arrivalDate, automatic, balanceTransaction, created, currency, description, destination, failureBalanceTransaction, failureCode, failureMessage, id, livemode, metadata, method, object, originalPayout, payoutMethod, reconciliationStatus, reversedBy, sourceType, statementDescriptor, status, traceId, type]); } 
@override String toString() { return 'Payout(amount: $amount, applicationFee: $applicationFee, applicationFeeAmount: $applicationFeeAmount, arrivalDate: $arrivalDate, automatic: $automatic, balanceTransaction: $balanceTransaction, created: $created, currency: $currency, description: $description, destination: $destination, failureBalanceTransaction: $failureBalanceTransaction, failureCode: $failureCode, failureMessage: $failureMessage, id: $id, livemode: $livemode, metadata: $metadata, method: $method, object: $object, originalPayout: $originalPayout, payoutMethod: $payoutMethod, reconciliationStatus: $reconciliationStatus, reversedBy: $reversedBy, sourceType: $sourceType, statementDescriptor: $statementDescriptor, status: $status, traceId: $traceId, type: $type)'; } 
 }
