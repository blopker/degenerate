// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param53.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPay {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPay({this.paymentMethodOptionsParam53 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPay._({required this.rawValue, required this.paymentMethodOptionsParam53,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPay.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam53: parseAnyOfVariant<PaymentMethodOptionsParam53>(json, (value) => PaymentMethodOptionsParam53.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam53> paymentMethodOptionsParam53;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam53.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam53.isPresent) paymentMethodOptionsParam53.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPay(${toJson()})';
}
