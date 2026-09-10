// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param60.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsNaverPayVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsNaverPayVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsNaverPayVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsNaverPayVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsNaverPayVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsNaverPayVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsNaverPayVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsNaverPayVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsNaverPayVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsNaverPay {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsNaverPay({this.paymentMethodOptionsParam60 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsNaverPayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsNaverPay._({required this.rawValue, required this.paymentMethodOptionsParam60,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsNaverPayVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsNaverPay.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsNaverPay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam60: parseAnyOfVariant<PaymentMethodOptionsParam60>(json, (value) => PaymentMethodOptionsParam60.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsNaverPayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsNaverPayVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsNaverPayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam60> paymentMethodOptionsParam60;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsNaverPayVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsNaverPayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam60.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsNaverPayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam60.isPresent) paymentMethodOptionsParam60.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsNaverPayVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsNaverPayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsNaverPay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsNaverPay(${toJson()})';
}
