// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param64.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsPaynowVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsPaynowVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsPaynowVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsPaynowVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsPaynowVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsPaynowVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsPaynowVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsPaynowVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsPaynowVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsPaynow {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsPaynow({this.paymentMethodOptionsParam64 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsPaynowVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsPaynow._({required this.rawValue, required this.paymentMethodOptionsParam64,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsPaynowVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsPaynow.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsPaynow._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam64: parseAnyOfVariant<PaymentMethodOptionsParam64>(json, (value) => PaymentMethodOptionsParam64.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsPaynowVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsPaynowVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsPaynowVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam64> paymentMethodOptionsParam64;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsPaynowVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsPaynowVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam64.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsPaynowVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam64.isPresent) paymentMethodOptionsParam64.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsPaynowVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsPaynowVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsPaynow && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsPaynow(${toJson()})';
}
