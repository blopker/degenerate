// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'coupon.dart';/// Coupon attached to the Checkout Session.
@immutable
final class PaymentPagesCheckoutSessionDiscountCoupon {
  const PaymentPagesCheckoutSessionDiscountCoupon({this.string = const Omittable.absent(),
this.coupon = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentPagesCheckoutSessionDiscountCoupon._({required this.rawValue, required this.string,
required this.coupon,});
  factory PaymentPagesCheckoutSessionDiscountCoupon.fromJson(Object? json) => PaymentPagesCheckoutSessionDiscountCoupon._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
coupon: parseAnyOfVariant<Coupon>(json, (value) => Coupon.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Coupon> coupon;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || coupon.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (coupon.isPresent) coupon.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentPagesCheckoutSessionDiscountCoupon && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentPagesCheckoutSessionDiscountCoupon(${toJson()})';
}
