// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param23.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsNaverPayVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsNaverPayVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsNaverPayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsNaverPayVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsNaverPayVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsNaverPayVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsNaverPayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsNaverPayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsNaverPayVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsNaverPay {
  const PostPaymentIntentsRequestPaymentMethodOptionsNaverPay({this.paymentMethodOptionsParam23 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsNaverPayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsNaverPay._({required this.rawValue, required this.paymentMethodOptionsParam23,
required this.postPaymentIntentsRequestPaymentMethodOptionsNaverPayVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsNaverPay.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsNaverPay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam23: parseAnyOfVariant<PaymentMethodOptionsParam23>(json, (value) => PaymentMethodOptionsParam23.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsNaverPayVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsNaverPayVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsNaverPayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam23> paymentMethodOptionsParam23;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsNaverPayVariant2> postPaymentIntentsRequestPaymentMethodOptionsNaverPayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam23.isPresent || postPaymentIntentsRequestPaymentMethodOptionsNaverPayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam23.isPresent) paymentMethodOptionsParam23.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsNaverPayVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsNaverPayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsNaverPay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsNaverPay(${toJson()})';
}
