// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param87.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpay {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpay({this.paymentMethodOptionsParam87 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpay._({required this.rawValue, required this.paymentMethodOptionsParam87,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpay.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam87: parseAnyOfVariant<PaymentMethodOptionsParam87>(json, (value) => PaymentMethodOptionsParam87.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam87> paymentMethodOptionsParam87;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam87.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam87.isPresent) paymentMethodOptionsParam87.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsGrabpay(${toJson()})';
}
