// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_shipping_param5.dart';@immutable final class PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShippingVariant2 {const PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShippingVariant2._(this.value);

factory PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShippingVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShippingVariant2._(json),
};}

static const PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShippingVariant2 $empty = PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShippingVariant2._('');

static const List<PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShippingVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShippingVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShippingVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShipping {
  const PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShipping({this.amountDetailsShippingParam5 = const Omittable.absent(),
this.postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShippingVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShipping._({required this.rawValue, required this.amountDetailsShippingParam5,
required this.postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShippingVariant2,});
  factory PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShipping.fromJson(Object? json) => PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShipping._(
    rawValue: Omittable(json),
    amountDetailsShippingParam5: parseAnyOfVariant<AmountDetailsShippingParam5>(json, (value) => AmountDetailsShippingParam5.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShippingVariant2: parseAnyOfVariant<PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShippingVariant2>(json, (value) => PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShippingVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AmountDetailsShippingParam5> amountDetailsShippingParam5;
final Omittable<PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShippingVariant2> postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShippingVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => amountDetailsShippingParam5.isPresent || postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShippingVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (amountDetailsShippingParam5.isPresent) amountDetailsShippingParam5.value?.toJson(),
if (postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShippingVariant2.isPresent) postPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShippingVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShipping && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsShipping(${toJson()})';
}
