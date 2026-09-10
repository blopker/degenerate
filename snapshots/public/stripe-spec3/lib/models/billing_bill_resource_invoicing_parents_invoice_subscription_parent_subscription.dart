// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'subscription.dart';/// The subscription that generated this invoice
@immutable
final class BillingBillResourceInvoicingParentsInvoiceSubscriptionParentSubscription {
  const BillingBillResourceInvoicingParentsInvoiceSubscriptionParentSubscription({this.string = const Omittable.absent(),
this.subscription = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const BillingBillResourceInvoicingParentsInvoiceSubscriptionParentSubscription._({required this.rawValue, required this.string,
required this.subscription,});
  factory BillingBillResourceInvoicingParentsInvoiceSubscriptionParentSubscription.fromJson(Object? json) => BillingBillResourceInvoicingParentsInvoiceSubscriptionParentSubscription._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
subscription: parseAnyOfVariant<Subscription>(json, (value) => Subscription.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Subscription> subscription;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || subscription.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (subscription.isPresent) subscription.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is BillingBillResourceInvoicingParentsInvoiceSubscriptionParentSubscription && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'BillingBillResourceInvoicingParentsInvoiceSubscriptionParentSubscription(${toJson()})';
}
