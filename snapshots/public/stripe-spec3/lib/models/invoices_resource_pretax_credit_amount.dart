// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_credit_balance_transaction.dart';import 'deleted_discount.dart';import 'discount.dart';import 'invoices_resource_pretax_credit_amount_credit_balance_transaction.dart';import 'invoices_resource_pretax_credit_amount_discount.dart';/// Type of the pretax credit amount referenced.
@immutable final class InvoicesResourcePretaxCreditAmountType {const InvoicesResourcePretaxCreditAmountType._(this.value);

factory InvoicesResourcePretaxCreditAmountType.fromJson(String json) { return switch (json) {
  'credit_balance_transaction' => creditBalanceTransaction,
  'discount' => discount,
  _ => InvoicesResourcePretaxCreditAmountType._(json),
}; }

static const InvoicesResourcePretaxCreditAmountType creditBalanceTransaction = InvoicesResourcePretaxCreditAmountType._('credit_balance_transaction');

static const InvoicesResourcePretaxCreditAmountType discount = InvoicesResourcePretaxCreditAmountType._('discount');

static const List<InvoicesResourcePretaxCreditAmountType> values = [creditBalanceTransaction, discount];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is InvoicesResourcePretaxCreditAmountType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'InvoicesResourcePretaxCreditAmountType($value)'; } 
 }
/// 
@immutable final class InvoicesResourcePretaxCreditAmount {const InvoicesResourcePretaxCreditAmount({required this.amount, required this.type, this.creditBalanceTransaction, this.discount, });

factory InvoicesResourcePretaxCreditAmount.fromJson(Map<String, dynamic> json) { return InvoicesResourcePretaxCreditAmount(
  amount: (json['amount'] as num).toInt(),
  creditBalanceTransaction: json['credit_balance_transaction'] != null ? OneOf2.parse(json['credit_balance_transaction'], fromA: (v) => v as String, fromB: (v) => BillingCreditBalanceTransaction.fromJson(v as Map<String, dynamic>),) : null,
  discount: json['discount'] != null ? OneOf3.parse(json['discount'], fromA: (v) => v as String, fromB: (v) => Discount.fromJson(v as Map<String, dynamic>), fromC: (v) => DeletedDiscount.fromJson(v as Map<String, dynamic>),) : null,
  type: InvoicesResourcePretaxCreditAmountType.fromJson(json['type'] as String),
); }

/// The amount, in cents (or local equivalent), of the pretax credit amount.
final int amount;

/// The credit balance transaction that was applied to get this pretax credit amount.
final InvoicesResourcePretaxCreditAmountCreditBalanceTransaction? creditBalanceTransaction;

/// The discount that was applied to get this pretax credit amount.
final InvoicesResourcePretaxCreditAmountDiscount? discount;

/// Type of the pretax credit amount referenced.
final InvoicesResourcePretaxCreditAmountType type;

Map<String, dynamic> toJson() { return {
  'amount': amount,
  if (creditBalanceTransaction != null) 'credit_balance_transaction': creditBalanceTransaction?.toJson(),
  if (discount != null) 'discount': discount?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') && json['amount'] is num &&
      json.containsKey('type'); } 
InvoicesResourcePretaxCreditAmount copyWith({int? amount, InvoicesResourcePretaxCreditAmountCreditBalanceTransaction? Function()? creditBalanceTransaction, InvoicesResourcePretaxCreditAmountDiscount Function()? discount, InvoicesResourcePretaxCreditAmountType? type, }) { return InvoicesResourcePretaxCreditAmount(
  amount: amount ?? this.amount,
  creditBalanceTransaction: creditBalanceTransaction != null ? creditBalanceTransaction() : this.creditBalanceTransaction,
  discount: discount != null ? discount() : this.discount,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InvoicesResourcePretaxCreditAmount &&
          amount == other.amount &&
          creditBalanceTransaction == other.creditBalanceTransaction &&
          discount == other.discount &&
          type == other.type; } 
@override int get hashCode { return Object.hash(amount, creditBalanceTransaction, discount, type); } 
@override String toString() { return 'InvoicesResourcePretaxCreditAmount(amount: $amount, creditBalanceTransaction: $creditBalanceTransaction, discount: $discount, type: $type)'; } 
 }
