// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param31.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebit {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebit({this.paymentIntentPaymentMethodOptionsParam31 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebit._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam31,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebit.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebit._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam31: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam31>(json, (value) => PaymentIntentPaymentMethodOptionsParam31.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam31> paymentIntentPaymentMethodOptionsParam31;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam31.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam31.isPresent) paymentIntentPaymentMethodOptionsParam31.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebitVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebit && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsBacsDebit(${toJson()})';
}
