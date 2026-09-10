// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param28.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsPaypalVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsPaypalVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsPaypalVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsPaypalVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsPaypalVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsPaypalVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsPaypalVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsPaypalVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsPaypalVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsPaypal {
  const PostPaymentIntentsRequestPaymentMethodOptionsPaypal({this.paymentMethodOptionsParam28 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsPaypalVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsPaypal._({required this.rawValue, required this.paymentMethodOptionsParam28,
required this.postPaymentIntentsRequestPaymentMethodOptionsPaypalVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsPaypal.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsPaypal._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam28: parseAnyOfVariant<PaymentMethodOptionsParam28>(json, (value) => PaymentMethodOptionsParam28.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsPaypalVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsPaypalVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsPaypalVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam28> paymentMethodOptionsParam28;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsPaypalVariant2> postPaymentIntentsRequestPaymentMethodOptionsPaypalVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam28.isPresent || postPaymentIntentsRequestPaymentMethodOptionsPaypalVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam28.isPresent) paymentMethodOptionsParam28.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsPaypalVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsPaypalVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsPaypal && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsPaypal(${toJson()})';
}
