// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param37.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccountVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccountVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccountVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccountVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccountVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccountVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccountVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccountVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccountVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccount {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccount({this.paymentIntentPaymentMethodOptionsParam37 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccount._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam37,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccountVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccount.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccount._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam37: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam37>(json, (value) => PaymentIntentPaymentMethodOptionsParam37.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccountVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccountVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam37> paymentIntentPaymentMethodOptionsParam37;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccountVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam37.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam37.isPresent) paymentIntentPaymentMethodOptionsParam37.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccountVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsNzBankAccount(${toJson()})';
}
