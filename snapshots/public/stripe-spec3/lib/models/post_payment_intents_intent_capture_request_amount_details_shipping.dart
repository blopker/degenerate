// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_shipping_param3.dart';@immutable final class PostPaymentIntentsIntentCaptureRequestAmountDetailsShippingVariant2 {const PostPaymentIntentsIntentCaptureRequestAmountDetailsShippingVariant2._(this.value);

factory PostPaymentIntentsIntentCaptureRequestAmountDetailsShippingVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentCaptureRequestAmountDetailsShippingVariant2._(json),
}; }

static const PostPaymentIntentsIntentCaptureRequestAmountDetailsShippingVariant2 $empty = PostPaymentIntentsIntentCaptureRequestAmountDetailsShippingVariant2._('');

static const List<PostPaymentIntentsIntentCaptureRequestAmountDetailsShippingVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentCaptureRequestAmountDetailsShippingVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentCaptureRequestAmountDetailsShippingVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentCaptureRequestAmountDetailsShipping {
  const PostPaymentIntentsIntentCaptureRequestAmountDetailsShipping({this.amountDetailsShippingParam3 = const Omittable.absent(),
this.postPaymentIntentsIntentCaptureRequestAmountDetailsShippingVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentCaptureRequestAmountDetailsShipping._({required this.rawValue, required this.amountDetailsShippingParam3,
required this.postPaymentIntentsIntentCaptureRequestAmountDetailsShippingVariant2,});
  factory PostPaymentIntentsIntentCaptureRequestAmountDetailsShipping.fromJson(Object? json) => PostPaymentIntentsIntentCaptureRequestAmountDetailsShipping._(
    rawValue: Omittable(json),
    amountDetailsShippingParam3: parseAnyOfVariant<AmountDetailsShippingParam3>(json, (value) => AmountDetailsShippingParam3.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentCaptureRequestAmountDetailsShippingVariant2: parseAnyOfVariant<PostPaymentIntentsIntentCaptureRequestAmountDetailsShippingVariant2>(json, (value) => PostPaymentIntentsIntentCaptureRequestAmountDetailsShippingVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<AmountDetailsShippingParam3> amountDetailsShippingParam3;
final Omittable<PostPaymentIntentsIntentCaptureRequestAmountDetailsShippingVariant2> postPaymentIntentsIntentCaptureRequestAmountDetailsShippingVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => amountDetailsShippingParam3.isPresent || postPaymentIntentsIntentCaptureRequestAmountDetailsShippingVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (amountDetailsShippingParam3.isPresent) amountDetailsShippingParam3.value?.toJson(),
if (postPaymentIntentsIntentCaptureRequestAmountDetailsShippingVariant2.isPresent) postPaymentIntentsIntentCaptureRequestAmountDetailsShippingVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentCaptureRequestAmountDetailsShipping && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentCaptureRequestAmountDetailsShipping(${toJson()})';
}
