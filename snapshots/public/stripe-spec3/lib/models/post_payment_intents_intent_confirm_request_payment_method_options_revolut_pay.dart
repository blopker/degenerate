// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param105.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPay {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPay({this.paymentMethodOptionsParam105 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPay._({required this.rawValue, required this.paymentMethodOptionsParam105,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPay.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPay._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam105: parseAnyOfVariant<PaymentMethodOptionsParam105>(json, (value) => PaymentMethodOptionsParam105.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam105> paymentMethodOptionsParam105;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam105.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam105.isPresent) paymentMethodOptionsParam105.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPayVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsRevolutPay(${toJson()})';
}
