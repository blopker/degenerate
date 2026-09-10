// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'billing_credit_grant.dart';/// The credit grant associated with this credit balance transaction.
@immutable
final class BillingCreditBalanceTransactionCreditGrant {
  const BillingCreditBalanceTransactionCreditGrant({this.string = const Omittable.absent(),
this.billingCreditGrant = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const BillingCreditBalanceTransactionCreditGrant._({required this.rawValue, required this.string,
required this.billingCreditGrant,});
  factory BillingCreditBalanceTransactionCreditGrant.fromJson(Object? json) => BillingCreditBalanceTransactionCreditGrant._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
billingCreditGrant: parseAnyOfVariant<BillingCreditGrant>(json, (value) => BillingCreditGrant.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<BillingCreditGrant> billingCreditGrant;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || billingCreditGrant.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (billingCreditGrant.isPresent) billingCreditGrant.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is BillingCreditBalanceTransactionCreditGrant && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'BillingCreditBalanceTransactionCreditGrant(${toJson()})';
}
