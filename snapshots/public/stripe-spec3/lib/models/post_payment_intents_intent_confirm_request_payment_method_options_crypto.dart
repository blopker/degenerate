// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param84.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCrypto {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCrypto({this.paymentMethodOptionsParam84 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCrypto._({required this.rawValue, required this.paymentMethodOptionsParam84,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCrypto.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCrypto._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam84: parseAnyOfVariant<PaymentMethodOptionsParam84>(json, (value) => PaymentMethodOptionsParam84.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam84> paymentMethodOptionsParam84;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam84.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam84.isPresent) paymentMethodOptionsParam84.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCryptoVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCrypto && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsCrypto(${toJson()})';
}
