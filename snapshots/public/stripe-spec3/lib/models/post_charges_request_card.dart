// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_payment_source_card.dart';/// A token, like the ones returned by [Stripe.js](https://stripe.com/docs/js).
@immutable
final class PostChargesRequestCard {
  const PostChargesRequestCard({this.customerPaymentSourceCard = const Omittable.absent(),
this.string = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostChargesRequestCard._({required this.rawValue, required this.customerPaymentSourceCard,
required this.string,});
  factory PostChargesRequestCard.fromJson(Object? json) => PostChargesRequestCard._(
    rawValue: Omittable(json),
    customerPaymentSourceCard: parseAnyOfVariant<CustomerPaymentSourceCard>(json, (value) => CustomerPaymentSourceCard.fromJson(value! as Map<String, dynamic>)),
string: parseAnyOfVariant<String>(json, (value) => value! as String),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CustomerPaymentSourceCard> customerPaymentSourceCard;
final Omittable<String> string;

  /// Whether at least one known variant matched.
  bool get isValid => customerPaymentSourceCard.isPresent || string.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (customerPaymentSourceCard.isPresent) customerPaymentSourceCard.value?.toJson(),
if (string.isPresent) string.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostChargesRequestCard && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostChargesRequestCard(${toJson()})';
}
