// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param47.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsCryptoVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsCryptoVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsCryptoVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsCryptoVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsCryptoVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsCryptoVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsCryptoVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsCryptoVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsCryptoVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsCrypto {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsCrypto({this.paymentMethodOptionsParam47 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsCryptoVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsCrypto._({required this.rawValue, required this.paymentMethodOptionsParam47,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsCryptoVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsCrypto.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsCrypto._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam47: parseAnyOfVariant<PaymentMethodOptionsParam47>(json, (value) => PaymentMethodOptionsParam47.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsCryptoVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsCryptoVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsCryptoVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam47> paymentMethodOptionsParam47;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsCryptoVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsCryptoVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam47.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsCryptoVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam47.isPresent) paymentMethodOptionsParam47.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsCryptoVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsCryptoVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsCrypto && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsCrypto(${toJson()})';
}
