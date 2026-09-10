// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param90.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPayVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPayVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPayVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPayVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPayVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPayVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPayVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPayVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPayVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPay {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPay({this.paymentMethodOptionsParam90 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPay._({required this.rawValue, required this.paymentMethodOptionsParam90,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPayVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPay.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam90: parseAnyOfVariant<PaymentMethodOptionsParam90>(json, (value) => PaymentMethodOptionsParam90.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPayVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam90> paymentMethodOptionsParam90;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPayVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam90.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam90.isPresent) paymentMethodOptionsParam90.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPayVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsKakaoPay(${toJson()})';
}
