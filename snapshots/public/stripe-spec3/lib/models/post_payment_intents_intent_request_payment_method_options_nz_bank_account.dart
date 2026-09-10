// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param23.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccount {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccount({this.paymentIntentPaymentMethodOptionsParam23 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccount._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam23,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccount.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccount._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam23: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam23>(json, (value) => PaymentIntentPaymentMethodOptionsParam23.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam23> paymentIntentPaymentMethodOptionsParam23;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam23.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam23.isPresent) paymentIntentPaymentMethodOptionsParam23.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsNzBankAccount(${toJson()})';
}
