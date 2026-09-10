// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_payment_source_card5.dart';/// A token, like the ones returned by [Stripe.js](https://stripe.com/docs/js).
@immutable
final class PostCustomersCustomerSourcesRequestCard {
  const PostCustomersCustomerSourcesRequestCard({this.customerPaymentSourceCard5 = const Omittable.absent(),
this.string = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSourcesRequestCard._({required this.rawValue, required this.customerPaymentSourceCard5,
required this.string,});
  factory PostCustomersCustomerSourcesRequestCard.fromJson(Object? json) => PostCustomersCustomerSourcesRequestCard._(
    rawValue: Omittable(json),
    customerPaymentSourceCard5: parseAnyOfVariant<CustomerPaymentSourceCard5>(json, (value) => CustomerPaymentSourceCard5.fromJson(value! as Map<String, dynamic>)),
string: parseAnyOfVariant<String>(json, (value) => value! as String),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CustomerPaymentSourceCard5> customerPaymentSourceCard5;
final Omittable<String> string;

  /// Whether at least one known variant matched.
  bool get isValid => customerPaymentSourceCard5.isPresent || string.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (customerPaymentSourceCard5.isPresent) customerPaymentSourceCard5.value?.toJson(),
if (string.isPresent) string.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSourcesRequestCard && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSourcesRequestCard(${toJson()})';
}
