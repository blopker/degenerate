// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_payment_method_options_param15.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2._(json),
};}

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2($value)';}
}

@immutable
final class PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebit {
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebit({this.paymentIntentPaymentMethodOptionsParam15 = const Omittable.absent(),
this.postPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebit._({required this.rawValue, required this.paymentIntentPaymentMethodOptionsParam15,
required this.postPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2,});
  factory PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebit.fromJson(Object? json) => PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebit._(
    rawValue: Omittable(json),
    paymentIntentPaymentMethodOptionsParam15: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam15>(json, (value) => PaymentIntentPaymentMethodOptionsParam15.fromJson(value! as Map<String, dynamic>)),
postPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2: parseAnyOfVariant<PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2>(json, (value) => PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentIntentPaymentMethodOptionsParam15> paymentIntentPaymentMethodOptionsParam15;
final Omittable<PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2> postPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => paymentIntentPaymentMethodOptionsParam15.isPresent || postPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentIntentPaymentMethodOptionsParam15.isPresent) paymentIntentPaymentMethodOptionsParam15.value?.toJson(),
if (postPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2.isPresent) postPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebitVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebit && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostPaymentIntentsIntentRequestPaymentMethodOptionsAcssDebit(${toJson()})';
}
