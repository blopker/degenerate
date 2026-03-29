// GENERATED CODE - DO NOT MODIFY BY HAND

import 'bank_connections_resource_transaction_resource_status_transitions.dart';/// String representing the object's type. Objects of the same type share the same value.
final class FinancialConnectionsTransactionObject {const FinancialConnectionsTransactionObject._(this.value);

factory FinancialConnectionsTransactionObject.fromJson(String json) { return switch (json) {
  'financial_connections.transaction' => financialConnectionsTransaction,
  _ => FinancialConnectionsTransactionObject._(json),
}; }

static const FinancialConnectionsTransactionObject financialConnectionsTransaction = FinancialConnectionsTransactionObject._('financial_connections.transaction');

static const List<FinancialConnectionsTransactionObject> values = [financialConnectionsTransaction];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FinancialConnectionsTransactionObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FinancialConnectionsTransactionObject($value)'; } 
 }
/// The status of the transaction.
final class FinancialConnectionsTransactionStatus {const FinancialConnectionsTransactionStatus._(this.value);

factory FinancialConnectionsTransactionStatus.fromJson(String json) { return switch (json) {
  'pending' => pending,
  'posted' => posted,
  'void' => $void,
  _ => FinancialConnectionsTransactionStatus._(json),
}; }

static const FinancialConnectionsTransactionStatus pending = FinancialConnectionsTransactionStatus._('pending');

static const FinancialConnectionsTransactionStatus posted = FinancialConnectionsTransactionStatus._('posted');

static const FinancialConnectionsTransactionStatus $void = FinancialConnectionsTransactionStatus._('void');

static const List<FinancialConnectionsTransactionStatus> values = [pending, posted, $void];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FinancialConnectionsTransactionStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FinancialConnectionsTransactionStatus($value)'; } 
 }
/// A Transaction represents a real transaction that affects a Financial Connections Account balance.
final class FinancialConnectionsTransaction {const FinancialConnectionsTransaction({required this.account, required this.amount, required this.currency, required this.description, required this.id, required this.livemode, required this.object, required this.status, required this.statusTransitions, required this.transactedAt, required this.transactionRefresh, required this.updated, });

factory FinancialConnectionsTransaction.fromJson(Map<String, dynamic> json) { return FinancialConnectionsTransaction(
  account: json['account'] as String,
  amount: (json['amount'] as num).toInt(),
  currency: json['currency'] as String,
  description: json['description'] as String,
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  object: FinancialConnectionsTransactionObject.fromJson(json['object'] as String),
  status: FinancialConnectionsTransactionStatus.fromJson(json['status'] as String),
  statusTransitions: BankConnectionsResourceTransactionResourceStatusTransitions.fromJson(json['status_transitions'] as Map<String, dynamic>),
  transactedAt: (json['transacted_at'] as num).toInt(),
  transactionRefresh: json['transaction_refresh'] as String,
  updated: (json['updated'] as num).toInt(),
); }

/// The ID of the Financial Connections Account this transaction belongs to.
final String account;

/// The amount of this transaction, in cents (or local equivalent).
final int amount;

/// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
final String currency;

/// The description of this transaction.
final String description;

/// Unique identifier for the object.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// String representing the object's type. Objects of the same type share the same value.
final FinancialConnectionsTransactionObject object;

/// The status of the transaction.
final FinancialConnectionsTransactionStatus status;

final BankConnectionsResourceTransactionResourceStatusTransitions statusTransitions;

/// Time at which the transaction was transacted. Measured in seconds since the Unix epoch.
final int transactedAt;

/// The token of the transaction refresh that last updated or created this transaction.
final String transactionRefresh;

/// Time at which the object was last updated. Measured in seconds since the Unix epoch.
final int updated;

Map<String, dynamic> toJson() { return {
  'account': account,
  'amount': amount,
  'currency': currency,
  'description': description,
  'id': id,
  'livemode': livemode,
  'object': object.toJson(),
  'status': status.toJson(),
  'status_transitions': statusTransitions.toJson(),
  'transacted_at': transactedAt,
  'transaction_refresh': transactionRefresh,
  'updated': updated,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account') && json['account'] is String &&
      json.containsKey('amount') && json['amount'] is num &&
      json.containsKey('currency') && json['currency'] is String &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('object') &&
      json.containsKey('status') &&
      json.containsKey('status_transitions') &&
      json.containsKey('transacted_at') && json['transacted_at'] is num &&
      json.containsKey('transaction_refresh') && json['transaction_refresh'] is String &&
      json.containsKey('updated') && json['updated'] is num; } 
FinancialConnectionsTransaction copyWith({String? account, int? amount, String? currency, String? description, String? id, bool? livemode, FinancialConnectionsTransactionObject? object, FinancialConnectionsTransactionStatus? status, BankConnectionsResourceTransactionResourceStatusTransitions? statusTransitions, int? transactedAt, String? transactionRefresh, int? updated, }) { return FinancialConnectionsTransaction(
  account: account ?? this.account,
  amount: amount ?? this.amount,
  currency: currency ?? this.currency,
  description: description ?? this.description,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  object: object ?? this.object,
  status: status ?? this.status,
  statusTransitions: statusTransitions ?? this.statusTransitions,
  transactedAt: transactedAt ?? this.transactedAt,
  transactionRefresh: transactionRefresh ?? this.transactionRefresh,
  updated: updated ?? this.updated,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FinancialConnectionsTransaction &&
          account == other.account &&
          amount == other.amount &&
          currency == other.currency &&
          description == other.description &&
          id == other.id &&
          livemode == other.livemode &&
          object == other.object &&
          status == other.status &&
          statusTransitions == other.statusTransitions &&
          transactedAt == other.transactedAt &&
          transactionRefresh == other.transactionRefresh &&
          updated == other.updated; } 
@override int get hashCode { return Object.hash(account, amount, currency, description, id, livemode, object, status, statusTransitions, transactedAt, transactionRefresh, updated); } 
@override String toString() { return 'FinancialConnectionsTransaction(account: $account, amount: $amount, currency: $currency, description: $description, id: $id, livemode: $livemode, object: $object, status: $status, statusTransitions: $statusTransitions, transactedAt: $transactedAt, transactionRefresh: $transactionRefresh, updated: $updated)'; } 
 }
