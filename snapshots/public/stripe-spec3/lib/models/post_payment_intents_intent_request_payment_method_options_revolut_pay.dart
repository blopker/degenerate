// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param68.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPayVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPayVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPayVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPayVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPayVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPayVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPay {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPay({this.paymentMethodOptionsParam68 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPay._({required this.rawValue, required this.paymentMethodOptionsParam68,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPayVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPay.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam68: parseAnyOfVariant<PaymentMethodOptionsParam68>(json, (value) => PaymentMethodOptionsParam68.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPayVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam68> paymentMethodOptionsParam68;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPayVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam68.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam68.isPresent) paymentMethodOptionsParam68.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPayVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsRevolutPay(${toJson()})';
}
