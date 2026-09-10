// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param5.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsCashappVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsCashappVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsCashappVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsCashappVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsCashappVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsCashappVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsCashappVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsCashappVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsCashappVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsCashapp {
  const PostPaymentIntentsRequestPaymentMethodOptionsCashapp({this.paymentIntentPaymentMethodOptionsParam5 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsCashappVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsCashapp._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam5,
required this.postPaymentIntentsRequestPaymentMethodOptionsCashappVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsCashapp.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsCashapp._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam5: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam5>(json, (value) => PaymentIntentPaymentMethodOptionsParam5.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsCashappVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsCashappVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsCashappVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam5> paymentIntentPaymentMethodOptionsParam5;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsCashappVariant2> postPaymentIntentsRequestPaymentMethodOptionsCashappVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam5.isPresent || postPaymentIntentsRequestPaymentMethodOptionsCashappVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam5.isPresent) paymentIntentPaymentMethodOptionsParam5.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsCashappVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsCashappVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsCashapp && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsCashapp(${toJson()})';
}
