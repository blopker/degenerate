// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param16.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsKakaoPay {
  const PostPaymentIntentsRequestPaymentMethodOptionsKakaoPay({this.paymentMethodOptionsParam16 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsKakaoPay._({required this.rawValue, required this.paymentMethodOptionsParam16,
required this.postPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsKakaoPay.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsKakaoPay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam16: parseAnyOfVariant<PaymentMethodOptionsParam16>(json, (value) => PaymentMethodOptionsParam16.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam16> paymentMethodOptionsParam16;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2> postPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam16.isPresent || postPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam16.isPresent) paymentMethodOptionsParam16.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsKakaoPay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsKakaoPay(${toJson()})';
}
