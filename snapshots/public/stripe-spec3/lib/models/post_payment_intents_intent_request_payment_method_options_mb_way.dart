// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param57.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsMbWayVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsMbWayVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsMbWayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsMbWayVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsMbWayVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsMbWayVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsMbWayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsMbWayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsMbWayVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsMbWay {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsMbWay({this.paymentMethodOptionsParam57 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsMbWayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsMbWay._({required this.rawValue, required this.paymentMethodOptionsParam57,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsMbWayVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsMbWay.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsMbWay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam57: parseAnyOfVariant<PaymentMethodOptionsParam57>(json, (value) => PaymentMethodOptionsParam57.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsMbWayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsMbWayVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsMbWayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam57> paymentMethodOptionsParam57;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsMbWayVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsMbWayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam57.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsMbWayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam57.isPresent) paymentMethodOptionsParam57.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsMbWayVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsMbWayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsMbWay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsMbWay(${toJson()})';
}
