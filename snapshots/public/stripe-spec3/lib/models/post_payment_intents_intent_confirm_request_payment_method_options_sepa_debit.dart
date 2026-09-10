// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param40.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebit {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebit({this.paymentIntentPaymentMethodOptionsParam40 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebit._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam40,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebit.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebit._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam40: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam40>(json, (value) => PaymentIntentPaymentMethodOptionsParam40.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam40> paymentIntentPaymentMethodOptionsParam40;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam40.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam40.isPresent) paymentIntentPaymentMethodOptionsParam40.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebitVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebit && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsSepaDebit(${toJson()})';
}
