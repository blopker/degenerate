// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'promotion_code.dart';/// Promotion code attached to the Checkout Session.
@immutable
final class PaymentPagesCheckoutSessionDiscountPromotionCode {
  const PaymentPagesCheckoutSessionDiscountPromotionCode({this.string = const Omittable.absent(),
this.promotionCode = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentPagesCheckoutSessionDiscountPromotionCode._({required this.rawValue, required this.string,
required this.promotionCode,});
  factory PaymentPagesCheckoutSessionDiscountPromotionCode.fromJson(Object? json) => PaymentPagesCheckoutSessionDiscountPromotionCode._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
promotionCode: parseAnyOfVariant<PromotionCode>(json, (value) => PromotionCode.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PromotionCode> promotionCode;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || promotionCode.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (promotionCode.isPresent) promotionCode.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentPagesCheckoutSessionDiscountPromotionCode && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentPagesCheckoutSessionDiscountPromotionCode(${toJson()})';
}
