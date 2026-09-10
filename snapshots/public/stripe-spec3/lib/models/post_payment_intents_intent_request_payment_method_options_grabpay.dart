// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param50.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsGrabpayVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsGrabpayVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsGrabpayVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsGrabpayVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsGrabpayVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsGrabpayVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsGrabpayVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsGrabpayVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsGrabpayVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsGrabpay {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsGrabpay({this.paymentMethodOptionsParam50 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsGrabpayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsGrabpay._({required this.rawValue, required this.paymentMethodOptionsParam50,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsGrabpayVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsGrabpay.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsGrabpay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam50: parseAnyOfVariant<PaymentMethodOptionsParam50>(json, (value) => PaymentMethodOptionsParam50.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsGrabpayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsGrabpayVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsGrabpayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam50> paymentMethodOptionsParam50;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsGrabpayVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsGrabpayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam50.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsGrabpayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam50.isPresent) paymentMethodOptionsParam50.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsGrabpayVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsGrabpayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsGrabpay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsGrabpay(${toJson()})';
}
