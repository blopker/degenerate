// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsAcssDebit {
  const PostPaymentIntentsRequestPaymentMethodOptionsAcssDebit({this.paymentIntentPaymentMethodOptionsParam = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsAcssDebit._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam,
required this.postPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsAcssDebit.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsAcssDebit._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam>(json, (value) => PaymentIntentPaymentMethodOptionsParam.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam> paymentIntentPaymentMethodOptionsParam;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2> postPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam.isPresent || postPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam.isPresent) paymentIntentPaymentMethodOptionsParam.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsAcssDebitVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsAcssDebit && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsAcssDebit(${toJson()})';
}
