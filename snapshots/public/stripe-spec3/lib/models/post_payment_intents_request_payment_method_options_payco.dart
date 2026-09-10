// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param26.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsPaycoVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsPaycoVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsPaycoVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsPaycoVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsPaycoVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsPaycoVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsPaycoVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsPaycoVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsPaycoVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsPayco {
  const PostPaymentIntentsRequestPaymentMethodOptionsPayco({this.paymentMethodOptionsParam26 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsPaycoVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsPayco._({required this.rawValue, required this.paymentMethodOptionsParam26,
required this.postPaymentIntentsRequestPaymentMethodOptionsPaycoVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsPayco.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsPayco._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam26: parseAnyOfVariant<PaymentMethodOptionsParam26>(json, (value) => PaymentMethodOptionsParam26.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsPaycoVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsPaycoVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsPaycoVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam26> paymentMethodOptionsParam26;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsPaycoVariant2> postPaymentIntentsRequestPaymentMethodOptionsPaycoVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam26.isPresent || postPaymentIntentsRequestPaymentMethodOptionsPaycoVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam26.isPresent) paymentMethodOptionsParam26.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsPaycoVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsPaycoVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsPayco && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsPayco(${toJson()})';
}
