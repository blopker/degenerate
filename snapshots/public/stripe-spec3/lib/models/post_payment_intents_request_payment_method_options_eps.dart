// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param7.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsEpsVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsEpsVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsEpsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsEpsVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsEpsVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsEpsVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsEpsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsEpsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsEpsVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsEps {
  const PostPaymentIntentsRequestPaymentMethodOptionsEps({this.paymentIntentPaymentMethodOptionsParam7 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsEpsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsEps._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam7,
required this.postPaymentIntentsRequestPaymentMethodOptionsEpsVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsEps.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsEps._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam7: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam7>(json, (value) => PaymentIntentPaymentMethodOptionsParam7.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsEpsVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsEpsVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsEpsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam7> paymentIntentPaymentMethodOptionsParam7;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsEpsVariant2> postPaymentIntentsRequestPaymentMethodOptionsEpsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam7.isPresent || postPaymentIntentsRequestPaymentMethodOptionsEpsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam7.isPresent) paymentIntentPaymentMethodOptionsParam7.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsEpsVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsEpsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsEps && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsEps(${toJson()})';
}
