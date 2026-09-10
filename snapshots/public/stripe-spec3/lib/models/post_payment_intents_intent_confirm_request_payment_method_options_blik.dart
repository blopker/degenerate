// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param32.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlikVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlikVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlikVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlikVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlikVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlikVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlikVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlikVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlikVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlik {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlik({this.paymentIntentPaymentMethodOptionsParam32 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlikVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlik._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam32,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlikVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlik.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlik._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam32: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam32>(json, (value) => PaymentIntentPaymentMethodOptionsParam32.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlikVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlikVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlikVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam32> paymentIntentPaymentMethodOptionsParam32;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlikVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlikVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam32.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlikVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam32.isPresent) paymentIntentPaymentMethodOptionsParam32.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlikVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlikVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlik && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBlik(${toJson()})';
}
