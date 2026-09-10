// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param71.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsSofort {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsSofort({this.paymentMethodOptionsParam71 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsSofort._({required this.rawValue, required this.paymentMethodOptionsParam71,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsSofort.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsSofort._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam71: parseAnyOfVariant<PaymentMethodOptionsParam71>(json, (value) => PaymentMethodOptionsParam71.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam71> paymentMethodOptionsParam71;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam71.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam71.isPresent) paymentMethodOptionsParam71.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsSofortVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsSofort && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsSofort(${toJson()})';
}
