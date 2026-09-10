// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param20.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsMbWayVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsMbWayVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsMbWayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsMbWayVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsMbWayVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsMbWayVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsMbWayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsMbWayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsMbWayVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsMbWay {
  const PostPaymentIntentsRequestPaymentMethodOptionsMbWay({this.paymentMethodOptionsParam20 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsMbWayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsMbWay._({required this.rawValue, required this.paymentMethodOptionsParam20,
required this.postPaymentIntentsRequestPaymentMethodOptionsMbWayVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsMbWay.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsMbWay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam20: parseAnyOfVariant<PaymentMethodOptionsParam20>(json, (value) => PaymentMethodOptionsParam20.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsMbWayVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsMbWayVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsMbWayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam20> paymentMethodOptionsParam20;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsMbWayVariant2> postPaymentIntentsRequestPaymentMethodOptionsMbWayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam20.isPresent || postPaymentIntentsRequestPaymentMethodOptionsMbWayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam20.isPresent) paymentMethodOptionsParam20.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsMbWayVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsMbWayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsMbWay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsMbWay(${toJson()})';
}
