// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param102.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypalVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypalVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypalVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypalVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypalVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypalVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypalVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypalVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypalVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypal {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypal({this.paymentMethodOptionsParam102 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypalVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypal._({required this.rawValue, required this.paymentMethodOptionsParam102,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypalVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypal.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypal._(
    rawValue: Omittable(json),
    paymentMethodOptionsParam102: parseAnyOfVariant<PaymentMethodOptionsParam102>(json, (value) => PaymentMethodOptionsParam102.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypalVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypalVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypalVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsParam102> paymentMethodOptionsParam102;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypalVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypalVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsParam102.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypalVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsParam102.isPresent) paymentMethodOptionsParam102.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypalVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypalVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypal && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPaypal(${toJson()})';
}
