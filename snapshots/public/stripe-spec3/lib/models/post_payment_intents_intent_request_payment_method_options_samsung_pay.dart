// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param69.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPayVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPayVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPayVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPayVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPayVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPayVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPayVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPayVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPayVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPay {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPay({this.paymentMethodOptionsParam69 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPay._({required this.rawValue, required this.paymentMethodOptionsParam69,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPayVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPay.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam69: parseAnyOfVariant<PaymentMethodOptionsParam69>(json, (value) => PaymentMethodOptionsParam69.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPayVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam69> paymentMethodOptionsParam69;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPayVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam69.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam69.isPresent) paymentMethodOptionsParam69.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPayVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsSamsungPay(${toJson()})';
}
