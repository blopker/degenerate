// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param5.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsAmazonPayVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsAmazonPayVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsAmazonPayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsAmazonPayVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsAmazonPayVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsAmazonPayVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsAmazonPayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsAmazonPayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsAmazonPayVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsAmazonPay {
  const PostPaymentIntentsRequestPaymentMethodOptionsAmazonPay({this.paymentMethodOptionsParam5 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsAmazonPayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsAmazonPay._({required this.rawValue, required this.paymentMethodOptionsParam5,
required this.postPaymentIntentsRequestPaymentMethodOptionsAmazonPayVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsAmazonPay.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsAmazonPay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam5: parseAnyOfVariant<PaymentMethodOptionsParam5>(json, (value) => PaymentMethodOptionsParam5.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsAmazonPayVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsAmazonPayVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsAmazonPayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam5> paymentMethodOptionsParam5;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsAmazonPayVariant2> postPaymentIntentsRequestPaymentMethodOptionsAmazonPayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam5.isPresent || postPaymentIntentsRequestPaymentMethodOptionsAmazonPayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam5.isPresent) paymentMethodOptionsParam5.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsAmazonPayVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsAmazonPayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsAmazonPay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsAmazonPay(${toJson()})';
}
