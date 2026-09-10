// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_balance_transaction.dart';/// Customer balance transaction related to this credit note.
@immutable
final class CreditNoteCustomerBalanceTransaction {
  const CreditNoteCustomerBalanceTransaction({this.string = const Omittable.absent(),
this.customerBalanceTransaction = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CreditNoteCustomerBalanceTransaction._({required this.rawValue, required this.string,
required this.customerBalanceTransaction,});
  factory CreditNoteCustomerBalanceTransaction.fromJson(Object? json) => CreditNoteCustomerBalanceTransaction._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
customerBalanceTransaction: parseAnyOfVariant<CustomerBalanceTransaction>(json, (value) => CustomerBalanceTransaction.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<CustomerBalanceTransaction> customerBalanceTransaction;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || customerBalanceTransaction.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (customerBalanceTransaction.isPresent) customerBalanceTransaction.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CreditNoteCustomerBalanceTransaction && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CreditNoteCustomerBalanceTransaction(${toJson()})';
}
