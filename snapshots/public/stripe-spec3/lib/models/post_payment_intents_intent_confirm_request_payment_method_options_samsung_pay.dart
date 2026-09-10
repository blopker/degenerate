// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param106.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPayVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPayVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPayVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPayVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPayVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPayVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPayVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPayVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPayVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPay {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPay({this.paymentMethodOptionsParam106 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPay._({required this.rawValue, required this.paymentMethodOptionsParam106,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPayVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPay.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam106: parseAnyOfVariant<PaymentMethodOptionsParam106>(json, (value) => PaymentMethodOptionsParam106.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPayVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam106> paymentMethodOptionsParam106;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPayVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam106.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam106.isPresent) paymentMethodOptionsParam106.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPayVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSamsungPay(${toJson()})';
}
