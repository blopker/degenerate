// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param3.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsAlipay {
  const PostPaymentIntentsRequestPaymentMethodOptionsAlipay({this.paymentMethodOptionsParam3 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsAlipay._({required this.rawValue, required this.paymentMethodOptionsParam3,
required this.postPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsAlipay.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsAlipay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam3: parseAnyOfVariant<PaymentMethodOptionsParam3>(json, (value) => PaymentMethodOptionsParam3.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam3> paymentMethodOptionsParam3;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2> postPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam3.isPresent || postPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam3.isPresent) paymentMethodOptionsParam3.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsAlipayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsAlipay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsAlipay(${toJson()})';
}
