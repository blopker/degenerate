// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param38.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBankVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBankVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBankVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBankVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBankVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBankVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBankVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBankVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBankVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBank {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBank({this.paymentIntentPaymentMethodOptionsParam38 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBankVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBank._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam38,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBankVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBank.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBank._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam38: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam38>(json, (value) => PaymentIntentPaymentMethodOptionsParam38.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBankVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBankVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBankVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam38> paymentIntentPaymentMethodOptionsParam38;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBankVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBankVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam38.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBankVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam38.isPresent) paymentIntentPaymentMethodOptionsParam38.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBankVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBankVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBank && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsPayByBank(${toJson()})';
}
