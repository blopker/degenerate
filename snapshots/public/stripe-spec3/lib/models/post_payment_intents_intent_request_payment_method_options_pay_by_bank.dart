// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param24.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsPayByBankVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsPayByBankVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsPayByBankVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsPayByBankVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsPayByBankVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsPayByBankVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsPayByBankVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsPayByBankVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsPayByBankVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsPayByBank {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsPayByBank({this.paymentIntentPaymentMethodOptionsParam24 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsPayByBankVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsPayByBank._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam24,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsPayByBankVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsPayByBank.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsPayByBank._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam24: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam24>(json, (value) => PaymentIntentPaymentMethodOptionsParam24.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsPayByBankVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsPayByBankVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsPayByBankVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam24> paymentIntentPaymentMethodOptionsParam24;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsPayByBankVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsPayByBankVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam24.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsPayByBankVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam24.isPresent) paymentIntentPaymentMethodOptionsParam24.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsPayByBankVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsPayByBankVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsPayByBank && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsPayByBank(${toJson()})';
}
