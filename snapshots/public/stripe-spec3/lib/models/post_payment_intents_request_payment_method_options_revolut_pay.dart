// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param31.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsRevolutPayVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsRevolutPayVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsRevolutPayVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsRevolutPayVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsRevolutPayVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsRevolutPayVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsRevolutPayVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsRevolutPayVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsRevolutPayVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsRevolutPay {
  const PostPaymentIntentsRequestPaymentMethodOptionsRevolutPay({this.paymentMethodOptionsParam31 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsRevolutPayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsRevolutPay._({required this.rawValue, required this.paymentMethodOptionsParam31,
required this.postPaymentIntentsRequestPaymentMethodOptionsRevolutPayVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsRevolutPay.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsRevolutPay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam31: parseAnyOfVariant<PaymentMethodOptionsParam31>(json, (value) => PaymentMethodOptionsParam31.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsRevolutPayVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsRevolutPayVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsRevolutPayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam31> paymentMethodOptionsParam31;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsRevolutPayVariant2> postPaymentIntentsRequestPaymentMethodOptionsRevolutPayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam31.isPresent || postPaymentIntentsRequestPaymentMethodOptionsRevolutPayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam31.isPresent) paymentMethodOptionsParam31.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsRevolutPayVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsRevolutPayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsRevolutPay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsRevolutPay(${toJson()})';
}
