// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param10.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsCrypto {
  const PostPaymentIntentsRequestPaymentMethodOptionsCrypto({this.paymentMethodOptionsParam10 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsCrypto._({required this.rawValue, required this.paymentMethodOptionsParam10,
required this.postPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsCrypto.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsCrypto._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam10: parseAnyOfVariant<PaymentMethodOptionsParam10>(json, (value) => PaymentMethodOptionsParam10.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam10> paymentMethodOptionsParam10;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2> postPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam10.isPresent || postPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam10.isPresent) paymentMethodOptionsParam10.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsCryptoVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsCrypto && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsCrypto(${toJson()})';
}
