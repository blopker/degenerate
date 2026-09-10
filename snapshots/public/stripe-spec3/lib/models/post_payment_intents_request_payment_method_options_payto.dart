// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param11.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsPaytoVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsPaytoVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsPaytoVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsPaytoVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsPaytoVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsPaytoVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsPaytoVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsPaytoVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsPaytoVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsPayto {
  const PostPaymentIntentsRequestPaymentMethodOptionsPayto({this.paymentIntentPaymentMethodOptionsParam11 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsPaytoVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsPayto._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam11,
required this.postPaymentIntentsRequestPaymentMethodOptionsPaytoVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsPayto.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsPayto._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam11: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam11>(json, (value) => PaymentIntentPaymentMethodOptionsParam11.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsPaytoVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsPaytoVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsPaytoVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam11> paymentIntentPaymentMethodOptionsParam11;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsPaytoVariant2> postPaymentIntentsRequestPaymentMethodOptionsPaytoVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam11.isPresent || postPaymentIntentsRequestPaymentMethodOptionsPaytoVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam11.isPresent) paymentIntentPaymentMethodOptionsParam11.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsPaytoVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsPaytoVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsPayto && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsPayto(${toJson()})';
}
