// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_payment_source_card4.dart';/// A token, like the ones returned by [Stripe.js](https://stripe.com/docs/js).
@immutable
final class PostCustomersCustomerCardsRequestCard {
  const PostCustomersCustomerCardsRequestCard({this.customerPaymentSourceCard4 = const Omittable.absent(),
this.string = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerCardsRequestCard._({required this.rawValue, required this.customerPaymentSourceCard4,
required this.string,});
  factory PostCustomersCustomerCardsRequestCard.fromJson(Object? json) => PostCustomersCustomerCardsRequestCard._(
    rawValue: Omittable(json),
    customerPaymentSourceCard4: parseAnyOfVariant<CustomerPaymentSourceCard4>(json, (value) => CustomerPaymentSourceCard4.fromJson(value! as Map<String, dynamic>)),
string: parseAnyOfVariant<String>(json, (value) => value! as String),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CustomerPaymentSourceCard4> customerPaymentSourceCard4;
final Omittable<String> string;

  /// Whether at least one known variant matched.
  bool get isValid => customerPaymentSourceCard4.isPresent || string.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (customerPaymentSourceCard4.isPresent) customerPaymentSourceCard4.value?.toJson(),
if (string.isPresent) string.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerCardsRequestCard && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerCardsRequestCard(${toJson()})';
}
