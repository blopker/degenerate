// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param14.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsUsBankAccountVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsUsBankAccountVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsUsBankAccountVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsUsBankAccountVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsUsBankAccountVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsUsBankAccountVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsUsBankAccountVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsUsBankAccountVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsUsBankAccountVariant2($value)'; } 
 }

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsUsBankAccount {
  const PostPaymentIntentsRequestPaymentMethodOptionsUsBankAccount({this.paymentIntentPaymentMethodOptionsParam14 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsUsBankAccountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsUsBankAccount._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam14,
required this.postPaymentIntentsRequestPaymentMethodOptionsUsBankAccountVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsUsBankAccount.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsUsBankAccount._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam14: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam14>(json, (value) => PaymentIntentPaymentMethodOptionsParam14.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsUsBankAccountVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsUsBankAccountVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsUsBankAccountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam14> paymentIntentPaymentMethodOptionsParam14;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsUsBankAccountVariant2> postPaymentIntentsRequestPaymentMethodOptionsUsBankAccountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam14.isPresent || postPaymentIntentsRequestPaymentMethodOptionsUsBankAccountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam14.isPresent) paymentIntentPaymentMethodOptionsParam14.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsUsBankAccountVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsUsBankAccountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsUsBankAccount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsUsBankAccount(${toJson()})';
}
