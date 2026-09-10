// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param19.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsCashappVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsCashappVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsCashappVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsCashappVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsCashappVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsCashappVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsCashappVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsCashappVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsCashappVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsCashapp {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsCashapp({this.paymentIntentPaymentMethodOptionsParam19 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsCashappVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsCashapp._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam19,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsCashappVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsCashapp.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsCashapp._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam19: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam19>(json, (value) => PaymentIntentPaymentMethodOptionsParam19.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsCashappVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsCashappVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsCashappVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam19> paymentIntentPaymentMethodOptionsParam19;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsCashappVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsCashappVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam19.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsCashappVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam19.isPresent) paymentIntentPaymentMethodOptionsParam19.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsCashappVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsCashappVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsCashapp && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsCashapp(${toJson()})';
}
