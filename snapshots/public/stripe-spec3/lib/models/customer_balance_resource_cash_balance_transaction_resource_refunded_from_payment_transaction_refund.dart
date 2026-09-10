// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'refund.dart';/// The [Refund](https://docs.stripe.com/api/refunds/object) that moved these funds into the customer's cash balance.
@immutable
final class CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransactionRefund {
  const CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransactionRefund({this.string = const Omittable.absent(),
this.refund = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransactionRefund._({required this.rawValue, required this.string,
required this.refund,});
  factory CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransactionRefund.fromJson(Object? json) => CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransactionRefund._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
refund: parseAnyOfVariant<Refund>(json, (value) => Refund.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Refund> refund;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || refund.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (refund.isPresent) refund.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransactionRefund && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransactionRefund(${toJson()})';
}
