// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param39.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayto {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayto({this.paymentIntentPaymentMethodOptionsParam39 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayto._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam39,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayto.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayto._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam39: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam39>(json, (value) => PaymentIntentPaymentMethodOptionsParam39.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam39> paymentIntentPaymentMethodOptionsParam39;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam39.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam39.isPresent) paymentIntentPaymentMethodOptionsParam39.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaytoVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayto && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayto(${toJson()})';
}
