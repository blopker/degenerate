// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'checkout_session.dart';/// The ID of the checkout session (if any) that created the transaction.
@immutable
final class CustomerBalanceTransactionCheckoutSession {
  const CustomerBalanceTransactionCheckoutSession({this.string = const Omittable.absent(),
this.checkoutSession = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CustomerBalanceTransactionCheckoutSession._({required this.rawValue, required this.string,
required this.checkoutSession,});
  factory CustomerBalanceTransactionCheckoutSession.fromJson(Object? json) => CustomerBalanceTransactionCheckoutSession._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
checkoutSession: parseAnyOfVariant<CheckoutSession>(json, (value) => CheckoutSession.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<CheckoutSession> checkoutSession;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || checkoutSession.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (checkoutSession.isPresent) checkoutSession.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CustomerBalanceTransactionCheckoutSession && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CustomerBalanceTransactionCheckoutSession(${toJson()})';
}
