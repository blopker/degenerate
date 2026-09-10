// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param42.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccount {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccount({this.paymentIntentPaymentMethodOptionsParam42 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccount._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam42,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccount.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccount._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam42: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam42>(json, (value) => PaymentIntentPaymentMethodOptionsParam42.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam42> paymentIntentPaymentMethodOptionsParam42;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam42.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam42.isPresent) paymentIntentPaymentMethodOptionsParam42.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsUsBankAccount(${toJson()})';
}
