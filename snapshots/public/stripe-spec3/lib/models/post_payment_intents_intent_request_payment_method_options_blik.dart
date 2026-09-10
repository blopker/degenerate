// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param18.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsBlikVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsBlikVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsBlikVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsBlikVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsBlikVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsBlikVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsBlikVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsBlikVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsBlikVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsBlik {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsBlik({this.paymentIntentPaymentMethodOptionsParam18 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsBlikVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsBlik._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam18,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsBlikVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsBlik.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsBlik._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam18: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam18>(json, (value) => PaymentIntentPaymentMethodOptionsParam18.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsBlikVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsBlikVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsBlikVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam18> paymentIntentPaymentMethodOptionsParam18;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsBlikVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsBlikVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam18.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsBlikVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam18.isPresent) paymentIntentPaymentMethodOptionsParam18.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsBlikVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsBlikVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsBlik && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsBlik(${toJson()})';
}
