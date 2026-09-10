// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param42.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPayVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPayVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPayVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPayVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPayVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPayVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPayVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPayVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPayVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPay {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPay({this.paymentMethodOptionsParam42 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPay._({required this.rawValue, required this.paymentMethodOptionsParam42,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPayVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPay.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam42: parseAnyOfVariant<PaymentMethodOptionsParam42>(json, (value) => PaymentMethodOptionsParam42.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPayVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam42> paymentMethodOptionsParam42;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPayVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam42.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam42.isPresent) paymentMethodOptionsParam42.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPayVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsAmazonPay(${toJson()})';
}
