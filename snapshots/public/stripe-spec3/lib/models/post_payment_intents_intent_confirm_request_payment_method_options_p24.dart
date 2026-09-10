// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param99.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24Variant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24Variant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24Variant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24Variant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24Variant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24Variant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24Variant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24Variant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24Variant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24 {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24({this.paymentMethodOptionsParam99 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24Variant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24._({required this.rawValue, required this.paymentMethodOptionsParam99,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24Variant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam99: parseAnyOfVariant<PaymentMethodOptionsParam99>(json, (value) => PaymentMethodOptionsParam99.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24Variant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24Variant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24Variant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam99> paymentMethodOptionsParam99;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24Variant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24Variant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam99.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24Variant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam99.isPresent) paymentMethodOptionsParam99.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24Variant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24Variant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24 && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsP24(${toJson()})';
}
