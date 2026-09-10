// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param13.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsGrabpay {
  const PostPaymentIntentsRequestPaymentMethodOptionsGrabpay({this.paymentMethodOptionsParam13 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsGrabpay._({required this.rawValue, required this.paymentMethodOptionsParam13,
required this.postPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsGrabpay.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsGrabpay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam13: parseAnyOfVariant<PaymentMethodOptionsParam13>(json, (value) => PaymentMethodOptionsParam13.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam13> paymentMethodOptionsParam13;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2> postPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam13.isPresent || postPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam13.isPresent) paymentMethodOptionsParam13.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsGrabpayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsGrabpay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsGrabpay(${toJson()})';
}
