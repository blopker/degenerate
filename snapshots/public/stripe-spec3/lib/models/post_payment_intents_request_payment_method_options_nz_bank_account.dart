// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param9.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2._(json),
};}

static const PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2($value)';}
}

@immutable
final class PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccount {
  const PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccount({this.paymentIntentPaymentMethodOptionsParam9 = const Omittable.absent(),
this.postPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccount._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam9,
required this.postPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2,});
  factory PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccount.fromJson(Object? json) => PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccount._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam9: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam9>(json, (value) => PaymentIntentPaymentMethodOptionsParam9.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2: parseAnyOfVariant<PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2>(json, (value) => PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam9> paymentIntentPaymentMethodOptionsParam9;
final Omittable<PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2> postPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam9.isPresent || postPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam9.isPresent) paymentIntentPaymentMethodOptionsParam9.value?.toJson(),
if (postPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2.isPresent) postPaymentIntentsRequestPaymentMethodOptionsNzBankAccountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsRequestPaymentMethodOptionsNzBankAccount(${toJson()})';
}
