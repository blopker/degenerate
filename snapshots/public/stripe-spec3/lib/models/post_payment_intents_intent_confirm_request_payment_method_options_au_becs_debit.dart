// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param30.dart';@immutable final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2 {const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2._(json),
};}

static const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2 $empty = PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebit {
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebit({this.paymentIntentPaymentMethodOptionsParam30 = const Omittable.absent(),
this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebit._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam30,
required this.postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2,});
  factory PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebit.fromJson(Object? json) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebit._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam30: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam30>(json, (value) => PaymentIntentPaymentMethodOptionsParam30.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2: parseAnyOfVariant<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2>(json, (value) => PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam30> paymentIntentPaymentMethodOptionsParam30;
final Omittable<PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2> postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam30.isPresent || postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam30.isPresent) paymentIntentPaymentMethodOptionsParam30.value?.toJson(),
if (postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2.isPresent) postPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebitVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebit && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentConfirmRequestPaymentMethodOptionsAuBecsDebit(${toJson()})';
}
