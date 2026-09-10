// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'card_details_params.dart';import 'token_params.dart';/// If this is a `card` PaymentMethod, this hash contains the user's card details. For backwards compatibility, you can alternatively provide a Stripe token (e.g., for Apple Pay, Amex Express Checkout, or legacy Checkout) into the card hash with format `card: {token: "tok_visa"}`. When providing a card number, you must meet the requirements for [PCI compliance](https://stripe.com/docs/security#validating-pci-compliance). We strongly recommend using Stripe.js instead of interacting with this API directly.
@immutable
final class PostPaymentMethodsRequestCard {
  const PostPaymentMethodsRequestCard({this.cardDetailsParams = const Omittable.absent(),
this.tokenParams = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentMethodsRequestCard._({required this.rawValue, required this.cardDetailsParams,
required this.tokenParams,});
  factory PostPaymentMethodsRequestCard.fromJson(Object? json) => PostPaymentMethodsRequestCard._(
    rawValue: Omittable(json),
    cardDetailsParams: parseAnyOfVariant<CardDetailsParams>(json, (value) => CardDetailsParams.fromJson(value! as Map<String, dynamic>)),
tokenParams: parseAnyOfVariant<TokenParams>(json, (value) => TokenParams.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CardDetailsParams> cardDetailsParams;
final Omittable<TokenParams> tokenParams;

  /// Whether at least one known variant matched.
  bool get isValid => cardDetailsParams.isPresent || tokenParams.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (cardDetailsParams.isPresent) cardDetailsParams.value?.toJson(),
if (tokenParams.isPresent) tokenParams.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentMethodsRequestCard && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentMethodsRequestCard(${toJson()})';
}
