// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param40.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipay {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipay({this.paymentMethodOptionsParam40 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipay._({required this.rawValue, required this.paymentMethodOptionsParam40,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipay.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam40: parseAnyOfVariant<PaymentMethodOptionsParam40>(json, (value) => PaymentMethodOptionsParam40.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam40> paymentMethodOptionsParam40;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam40.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam40.isPresent) paymentMethodOptionsParam40.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsAlipayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsAlipay(${toJson()})';
}
