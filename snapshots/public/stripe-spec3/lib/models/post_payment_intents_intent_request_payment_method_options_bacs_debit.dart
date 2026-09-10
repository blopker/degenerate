// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param17.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebitVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebitVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebitVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebitVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebitVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebitVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebitVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebitVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebitVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebit {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebit({this.paymentIntentPaymentMethodOptionsParam17 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebitVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebit._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam17,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebitVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebit.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebit._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam17: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam17>(json, (value) => PaymentIntentPaymentMethodOptionsParam17.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebitVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebitVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebitVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam17> paymentIntentPaymentMethodOptionsParam17;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebitVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebitVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam17.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebitVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam17.isPresent) paymentIntentPaymentMethodOptionsParam17.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebitVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebitVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebit && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsBacsDebit(${toJson()})';
}
