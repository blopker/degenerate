// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param100.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaycoVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaycoVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaycoVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaycoVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaycoVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaycoVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaycoVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaycoVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaycoVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayco {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayco({this.paymentMethodOptionsParam100 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaycoVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayco._({required this.rawValue, required this.paymentMethodOptionsParam100,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaycoVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayco.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayco._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam100: parseAnyOfVariant<PaymentMethodOptionsParam100>(json, (value) => PaymentMethodOptionsParam100.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaycoVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaycoVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaycoVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam100> paymentMethodOptionsParam100;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaycoVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaycoVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam100.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaycoVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam100.isPresent) paymentMethodOptionsParam100.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaycoVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaycoVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayco && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayco(${toJson()})';
}
