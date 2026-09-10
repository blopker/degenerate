// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_shipping_param.dart';@immutable final class PostPaymentIntentsRequestAmountDetailsShippingVariant2 {const PostPaymentIntentsRequestAmountDetailsShippingVariant2._(this.value);

factory PostPaymentIntentsRequestAmountDetailsShippingVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestAmountDetailsShippingVariant2._(json),
};}

static const PostPaymentIntentsRequestAmountDetailsShippingVariant2 $empty = PostPaymentIntentsRequestAmountDetailsShippingVariant2._('');

static const List<PostPaymentIntentsRequestAmountDetailsShippingVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestAmountDetailsShippingVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestAmountDetailsShippingVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestAmountDetailsShipping {
  const PostPaymentIntentsRequestAmountDetailsShipping({this.amountDetailsShippingParam = const Omittable.absent(),
this.postPaymentIntentsRequestAmountDetailsShippingVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestAmountDetailsShipping._({required this.rawValue, required this.amountDetailsShippingParam,
required this.postPaymentIntentsRequestAmountDetailsShippingVariant2,});
  factory PostPaymentIntentsRequestAmountDetailsShipping.fromJson(Object? json) => PostPaymentIntentsRequestAmountDetailsShipping._(
    rawValue: Omittable(json),
    amountDetailsShippingParam: parseAnyOfVariant<AmountDetailsShippingParam>(json, (value) => AmountDetailsShippingParam.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestAmountDetailsShippingVariant2: parseAnyOfVariant<PostPaymentIntentsRequestAmountDetailsShippingVariant2>(json, (value) => PostPaymentIntentsRequestAmountDetailsShippingVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AmountDetailsShippingParam> amountDetailsShippingParam;
final Omittable<PostPaymentIntentsRequestAmountDetailsShippingVariant2> postPaymentIntentsRequestAmountDetailsShippingVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => amountDetailsShippingParam.isPresent || postPaymentIntentsRequestAmountDetailsShippingVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (amountDetailsShippingParam.isPresent) amountDetailsShippingParam.value?.toJson(),
if (postPaymentIntentsRequestAmountDetailsShippingVariant2.isPresent) postPaymentIntentsRequestAmountDetailsShippingVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestAmountDetailsShipping && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestAmountDetailsShipping(${toJson()})';
}
