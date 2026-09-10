// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_credit_balance_transaction_credit_grant.dart';import 'billing_credit_balance_transaction_test_clock.dart';import 'billing_credit_grant.dart';import 'billing_credit_grants_resource_balance_credit.dart';import 'billing_credit_grants_resource_balance_debit.dart';import 'test_helpers_test_clock.dart';/// String representing the object's type. Objects of the same type share the same value.
@immutable final class BillingCreditBalanceTransactionObject {const BillingCreditBalanceTransactionObject._(this.value);

factory BillingCreditBalanceTransactionObject.fromJson(String json) { return switch (json) {
  'billing.credit_balance_transaction' => billingCreditBalanceTransaction,
  _ => BillingCreditBalanceTransactionObject._(json),
}; }

static const BillingCreditBalanceTransactionObject billingCreditBalanceTransaction = BillingCreditBalanceTransactionObject._('billing.credit_balance_transaction');

static const List<BillingCreditBalanceTransactionObject> values = [billingCreditBalanceTransaction];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingCreditBalanceTransactionObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BillingCreditBalanceTransactionObject($value)'; } 
 }
/// The type of credit balance transaction (credit or debit).
@immutable final class BillingCreditBalanceTransactionType {const BillingCreditBalanceTransactionType._(this.value);

factory BillingCreditBalanceTransactionType.fromJson(String json) { return switch (json) {
  'credit' => credit,
  'debit' => debit,
  _ => BillingCreditBalanceTransactionType._(json),
}; }

static const BillingCreditBalanceTransactionType credit = BillingCreditBalanceTransactionType._('credit');

static const BillingCreditBalanceTransactionType debit = BillingCreditBalanceTransactionType._('debit');

static const List<BillingCreditBalanceTransactionType> values = [credit, debit];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is BillingCreditBalanceTransactionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'BillingCreditBalanceTransactionType($value)'; } 
 }
/// A credit balance transaction is a resource representing a transaction (either a credit or a debit) against an existing credit grant.
@immutable final class BillingCreditBalanceTransaction {const BillingCreditBalanceTransaction({required this.created, required this.creditGrant, required this.effectiveAt, required this.id, required this.livemode, required this.object, this.credit = const Omittable.absent(), this.debit = const Omittable.absent(), this.testClock = const Omittable.absent(), this.type = const Omittable.absent(), });

factory BillingCreditBalanceTransaction.fromJson(Map<String, dynamic> json) { return BillingCreditBalanceTransaction(
  created: (json['created'] as num).toInt(),
  credit: json.containsKey('credit') ? Omittable(json['credit'] != null ? BillingCreditGrantsResourceBalanceCredit.fromJson(json['credit'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  creditGrant: OneOf2.parse(json['credit_grant'], fromA: (v) => v as String, fromB: (v) => BillingCreditGrant.fromJson(v as Map<String, dynamic>),),
  debit: json.containsKey('debit') ? Omittable(json['debit'] != null ? BillingCreditGrantsResourceBalanceDebit.fromJson(json['debit'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  effectiveAt: (json['effective_at'] as num).toInt(),
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  object: BillingCreditBalanceTransactionObject.fromJson(json['object'] as String),
  testClock: json.containsKey('test_clock') ? Omittable(json['test_clock'] != null ? OneOf2.parse(json['test_clock'], fromA: (v) => v as String, fromB: (v) => TestHelpersTestClock.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  type: json.containsKey('type') ? Omittable(json['type'] != null ? BillingCreditBalanceTransactionType.fromJson(json['type'] as String) : null) : const Omittable.absent(),
); }

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// Credit details for this credit balance transaction. Only present if type is `credit`.
final Omittable<BillingCreditGrantsResourceBalanceCredit?> credit;

/// The credit grant associated with this credit balance transaction.
final BillingCreditBalanceTransactionCreditGrant creditGrant;

/// Debit details for this credit balance transaction. Only present if type is `debit`.
final Omittable<BillingCreditGrantsResourceBalanceDebit?> debit;

/// The effective time of this credit balance transaction.
final int effectiveAt;

/// Unique identifier for the object.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// String representing the object's type. Objects of the same type share the same value.
final BillingCreditBalanceTransactionObject object;

/// ID of the test clock this credit balance transaction belongs to.
final Omittable<BillingCreditBalanceTransactionTestClock?> testClock;

/// The type of credit balance transaction (credit or debit).
final Omittable<BillingCreditBalanceTransactionType?> type;

Map<String, dynamic> toJson() { return {
  'created': created,
  if (credit.isPresent) 'credit': credit.value?.toJson(),
  'credit_grant': creditGrant.toJson(),
  if (debit.isPresent) 'debit': debit.value?.toJson(),
  'effective_at': effectiveAt,
  'id': id,
  'livemode': livemode,
  'object': object.toJson(),
  if (testClock.isPresent) 'test_clock': testClock.value?.toJson(),
  if (type.isPresent) 'type': type.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created') && json['created'] is num &&
      json.containsKey('credit_grant') &&
      json.containsKey('effective_at') && json['effective_at'] is num &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('object'); } 
BillingCreditBalanceTransaction copyWith({int? created, Omittable<BillingCreditGrantsResourceBalanceCredit?>? credit, BillingCreditBalanceTransactionCreditGrant? creditGrant, Omittable<BillingCreditGrantsResourceBalanceDebit?>? debit, int? effectiveAt, String? id, bool? livemode, BillingCreditBalanceTransactionObject? object, Omittable<BillingCreditBalanceTransactionTestClock?>? testClock, Omittable<BillingCreditBalanceTransactionType?>? type, }) { return BillingCreditBalanceTransaction(
  created: created ?? this.created,
  credit: credit ?? this.credit,
  creditGrant: creditGrant ?? this.creditGrant,
  debit: debit ?? this.debit,
  effectiveAt: effectiveAt ?? this.effectiveAt,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  object: object ?? this.object,
  testClock: testClock ?? this.testClock,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingCreditBalanceTransaction &&
          created == other.created &&
          credit == other.credit &&
          creditGrant == other.creditGrant &&
          debit == other.debit &&
          effectiveAt == other.effectiveAt &&
          id == other.id &&
          livemode == other.livemode &&
          object == other.object &&
          testClock == other.testClock &&
          type == other.type; } 
@override int get hashCode { return Object.hash(created, credit, creditGrant, debit, effectiveAt, id, livemode, object, testClock, type); } 
@override String toString() { return 'BillingCreditBalanceTransaction(created: $created, credit: $credit, creditGrant: $creditGrant, debit: $debit, effectiveAt: $effectiveAt, id: $id, livemode: $livemode, object: $object, testClock: $testClock, type: $type)'; } 
 }
