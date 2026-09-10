// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param32.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsSamsungPayVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsSamsungPayVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsSamsungPayVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsSamsungPayVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsSamsungPayVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsSamsungPayVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsSamsungPayVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsSamsungPayVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsSamsungPayVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsSamsungPay {
  const PostPaymentIntentsRequestPaymentMethodOptionsSamsungPay({this.paymentMethodOptionsParam32 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsSamsungPayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsSamsungPay._({required this.rawValue, required this.paymentMethodOptionsParam32,
required this.postPaymentIntentsRequestPaymentMethodOptionsSamsungPayVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsSamsungPay.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsSamsungPay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam32: parseAnyOfVariant<PaymentMethodOptionsParam32>(json, (value) => PaymentMethodOptionsParam32.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsSamsungPayVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsSamsungPayVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsSamsungPayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam32> paymentMethodOptionsParam32;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsSamsungPayVariant2> postPaymentIntentsRequestPaymentMethodOptionsSamsungPayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam32.isPresent || postPaymentIntentsRequestPaymentMethodOptionsSamsungPayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam32.isPresent) paymentMethodOptionsParam32.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsSamsungPayVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsSamsungPayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsSamsungPay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsSamsungPay(${toJson()})';
}
