// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param77.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipay {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipay({this.paymentMethodOptionsParam77 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipay._({required this.rawValue, required this.paymentMethodOptionsParam77,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipay.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam77: parseAnyOfVariant<PaymentMethodOptionsParam77>(json, (value) => PaymentMethodOptionsParam77.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam77> paymentMethodOptionsParam77;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam77.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam77.isPresent) paymentMethodOptionsParam77.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAlipay(${toJson()})';
}
