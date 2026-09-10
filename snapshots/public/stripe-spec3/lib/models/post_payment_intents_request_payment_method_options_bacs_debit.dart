// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param3.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsBacsDebitVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsBacsDebitVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsBacsDebitVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsBacsDebitVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsBacsDebitVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsBacsDebitVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsBacsDebitVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsBacsDebitVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsBacsDebitVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsBacsDebit {
  const PostPaymentIntentsRequestPaymentMethodOptionsBacsDebit({this.paymentIntentPaymentMethodOptionsParam3 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsBacsDebitVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsBacsDebit._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam3,
required this.postPaymentIntentsRequestPaymentMethodOptionsBacsDebitVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsBacsDebit.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsBacsDebit._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam3: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam3>(json, (value) => PaymentIntentPaymentMethodOptionsParam3.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsBacsDebitVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsBacsDebitVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsBacsDebitVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam3> paymentIntentPaymentMethodOptionsParam3;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsBacsDebitVariant2> postPaymentIntentsRequestPaymentMethodOptionsBacsDebitVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam3.isPresent || postPaymentIntentsRequestPaymentMethodOptionsBacsDebitVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam3.isPresent) paymentIntentPaymentMethodOptionsParam3.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsBacsDebitVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsBacsDebitVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsBacsDebit && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsBacsDebit(${toJson()})';
}
