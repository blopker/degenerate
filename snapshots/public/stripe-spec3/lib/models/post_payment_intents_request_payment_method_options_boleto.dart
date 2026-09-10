// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param8.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsBoletoVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsBoletoVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsBoletoVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsBoletoVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsBoletoVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsBoletoVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsBoletoVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsBoletoVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsBoletoVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsBoleto {
  const PostPaymentIntentsRequestPaymentMethodOptionsBoleto({this.paymentMethodOptionsParam8 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsBoletoVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsBoleto._({required this.rawValue, required this.paymentMethodOptionsParam8,
required this.postPaymentIntentsRequestPaymentMethodOptionsBoletoVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsBoleto.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsBoleto._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam8: parseAnyOfVariant<PaymentMethodOptionsParam8>(json, (value) => PaymentMethodOptionsParam8.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsBoletoVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsBoletoVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsBoletoVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam8> paymentMethodOptionsParam8;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsBoletoVariant2> postPaymentIntentsRequestPaymentMethodOptionsBoletoVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam8.isPresent || postPaymentIntentsRequestPaymentMethodOptionsBoletoVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam8.isPresent) paymentMethodOptionsParam8.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsBoletoVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsBoletoVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsBoleto && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsBoleto(${toJson()})';
}
