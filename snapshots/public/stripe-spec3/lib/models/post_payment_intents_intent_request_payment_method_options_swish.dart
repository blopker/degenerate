// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param27.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsSwishVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsSwishVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsSwishVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsSwishVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsSwishVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsSwishVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsSwishVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsSwishVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsSwishVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsSwish {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsSwish({this.paymentIntentPaymentMethodOptionsParam27 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsSwishVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsSwish._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam27,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsSwishVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsSwish.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsSwish._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam27: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam27>(json, (value) => PaymentIntentPaymentMethodOptionsParam27.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsSwishVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsSwishVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsSwishVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam27> paymentIntentPaymentMethodOptionsParam27;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsSwishVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsSwishVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam27.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsSwishVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam27.isPresent) paymentIntentPaymentMethodOptionsParam27.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsSwishVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsSwishVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsSwish && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsSwish(${toJson()})';
}
