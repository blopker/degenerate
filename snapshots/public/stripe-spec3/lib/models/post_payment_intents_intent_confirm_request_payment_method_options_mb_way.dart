// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param94.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWayVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWayVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWayVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWayVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWayVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWayVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWay {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWay({this.paymentMethodOptionsParam94 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWay._({required this.rawValue, required this.paymentMethodOptionsParam94,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWayVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWay.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam94: parseAnyOfVariant<PaymentMethodOptionsParam94>(json, (value) => PaymentMethodOptionsParam94.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWayVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam94> paymentMethodOptionsParam94;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWayVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam94.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam94.isPresent) paymentMethodOptionsParam94.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWayVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsMbWay(${toJson()})';
}
