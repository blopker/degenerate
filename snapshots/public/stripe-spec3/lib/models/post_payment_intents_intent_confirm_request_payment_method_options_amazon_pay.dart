// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param79.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPayVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPayVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPayVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPayVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPayVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPayVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPayVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPayVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPayVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPay {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPay({this.paymentMethodOptionsParam79 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPay._({required this.rawValue, required this.paymentMethodOptionsParam79,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPayVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPay.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam79: parseAnyOfVariant<PaymentMethodOptionsParam79>(json, (value) => PaymentMethodOptionsParam79.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPayVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam79> paymentMethodOptionsParam79;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPayVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam79.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam79.isPresent) paymentMethodOptionsParam79.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPayVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAmazonPay(${toJson()})';
}
