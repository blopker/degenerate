// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param4.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsBlikVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsBlikVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsBlikVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsBlikVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsBlikVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsBlikVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsBlikVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsBlikVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsBlikVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsBlik {
  const PostPaymentIntentsRequestPaymentMethodOptionsBlik({this.paymentIntentPaymentMethodOptionsParam4 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsBlikVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsBlik._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam4,
required this.postPaymentIntentsRequestPaymentMethodOptionsBlikVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsBlik.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsBlik._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam4: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam4>(json, (value) => PaymentIntentPaymentMethodOptionsParam4.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsBlikVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsBlikVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsBlikVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam4> paymentIntentPaymentMethodOptionsParam4;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsBlikVariant2> postPaymentIntentsRequestPaymentMethodOptionsBlikVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam4.isPresent || postPaymentIntentsRequestPaymentMethodOptionsBlikVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam4.isPresent) paymentIntentPaymentMethodOptionsParam4.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsBlikVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsBlikVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsBlik && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsBlik(${toJson()})';
}
